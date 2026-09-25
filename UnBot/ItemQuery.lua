-- Queries the server for items that are not in the client's item cache yet.
-- Callers mark such items with needQuery and call GetItemInfo again on their next refresh to pick up the result.

-- Items are queried one at a time, waiting for the server to answer or time out before the next,
-- because a burst of queries can get the client disconnected.
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
		-- Skip items that are already cached
		if (GetItemInfo(queryItem) == nil) then
			scanner:SetHyperlink("item:"..queryItem);
			timerGroup:Play();
			return;
		end
	end
	queryItem = nil;
end

-- Move on to the next item once the server answers or the query times out
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
