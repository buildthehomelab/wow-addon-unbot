-- 向服务器查询尚未缓存的物品信息
-- 查询结果由调用方通过needQuery标记在下次刷新时重新调用GetItemInfo获取

-- 每次只查询一个物品，等待服务器返回或超时后再查询下一个，避免短时间内大量查询导致掉线
local QUERY_TIMEOUT = 7;

local queryList = {};
local queryItem = nil;

local timerFrame = CreateFrame("Frame");
local timerGroup = timerFrame:CreateAnimationGroup();
local timerAnimation = timerGroup:CreateAnimation("Animation");
timerAnimation:SetDuration(QUERY_TIMEOUT);
timerGroup:SetLooping("NONE");

local scanner = CreateFrame("GameTooltip", "UnBot_ItemQueryTooltip", nil, "GameTooltipTemplate");
scanner:SetOwner(UIParent, "ANCHOR_NONE");

local function QueryNextItem()
	timerGroup:Stop();
	while (#queryList > 0) do
		queryItem = table.remove(queryList, 1);
		-- 已缓存的物品直接跳过
		if (GetItemInfo(queryItem) == nil) then
			scanner:SetHyperlink("item:"..queryItem);
			timerGroup:Play();
			return;
		end
	end
	queryItem = nil;
end

-- 服务器返回物品信息或超时后，继续查询下一个
scanner:SetScript("OnTooltipSetItem", function()
	if (queryItem ~= nil and GetItemInfo(queryItem) ~= nil) then
		QueryNextItem();
	end
end);
timerGroup:SetScript("OnFinished", QueryNextItem);

function UnBotQueryItemInfo(itemID)
	if (itemID == nil or GetItemInfo(itemID) ~= nil) then
		return;
	end
	if (itemID == queryItem) then
		return;
	end
	for i=1, #queryList do
		if (queryList[i] == itemID) then
			return;
		end
	end
	table.insert(queryList, itemID);
	if (queryItem == nil) then
		QueryNextItem();
	end
end
