# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## 项目概述

这是一个魔兽世界3.3.5a版本的插件项目，包含两个主要插件：
- **UnBot**: 机器人控制器插件，用于控制UnWOW服务器的机器人
- **YssBossLoot**: 副本掉落查询插件，显示副本中首领和小怪的掉落物品

## 插件架构

### UnBot插件结构
- `UnBot.lua` - 主逻辑文件，包含命令条初始化和管理
- `ExecuteCommand.lua` - 机器人命令执行逻辑
- `Online.lua` - 在线机器人管理
- `NPCFrame.lua` - NPC机器人界面
- `Strategy.lua` - 战术策略界面
- `QuestReward.lua` - 任务奖励选择
- `UnBotBags.lua` - 机器人背包管理
- `Tooltips.lua` - 工具提示
- `ImplantInspectFrame.lua` - 装备检查界面
- `StrategyTips.lua` - 战术提示
- `Bindings.xml` - 快捷键绑定
- XML文件 - 界面布局定义

### YssBossLoot插件结构
- `Core.lua` - 核心功能框架
- `Data/BossData.lua` - 首领数据
- `Filters/` - 过滤器模块（职业、装备位置、物品类型、属性）
- `Localization/` - 多语言支持（enUS, zhCN, zhTW, bonus）
- `widgets/LootWidget.lua` - 战利品显示组件
- `Tooltip.lua` - 工具提示
- `ItemQuery.lua` - 物品查询
- `Options.lua` - 选项界面
- `LDBplugin.lua` - 数据代理插件

## 本地化工作

当前插件主要支持中文，需要将以下内容本地化为英文：

### 需要本地化的文件
1. 所有包含中文字符的Lua文件
2. 本地化文件中的中文条目
3. 界面显示文本、提示信息、命令描述等

### 本地化策略
- 将硬编码的中文字符串提取到本地化文件中
- 使用现有的英文本地化文件(enUS.lua)作为基础
- 确保所有用户界面元素都支持英文显示

## 开发注意事项

- 插件专为魔兽世界3.3.5a版本设计
- 使用Lua语言编写，基于魔兽世界API
- UnBot不再依赖YssBossLoot（物品信息查询已移至UnBot/ItemQuery.lua）；YssBossLoot缺少大脚自带的库（Ace3、LibBabble、LibInstanceLootData-1.0），无法单独加载
- 所有文本内容应使用中文注释（根据用户全局设置）
- 提交代码到Git前需要经过用户确认