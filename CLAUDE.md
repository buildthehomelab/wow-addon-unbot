# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## 项目概述

这是一个魔兽世界3.3.5a版本的插件项目：
- **UnBot**: 机器人控制器插件，用于控制UnWOW服务器的机器人

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
- `ItemQuery.lua` - 向服务器查询未缓存的物品信息
- `StrategyTips.lua` - 战术提示
- `Bindings.xml` - 快捷键绑定
- XML文件 - 界面布局定义

## 本地化工作

当前插件主要支持中文，需要将以下内容本地化为英文：

### 需要本地化的文件
1. 所有包含中文字符的Lua文件
2. 本地化文件中的中文条目
3. 界面显示文本、提示信息、命令描述等

### 本地化策略
- 将硬编码的中文字符串提取到本地化文件中
- 确保所有用户界面元素都支持英文显示

## 开发注意事项

- 插件专为魔兽世界3.3.5a版本设计
- 使用Lua语言编写，基于魔兽世界API
- 不依赖任何其他插件或库（原先依赖的YssBossLoot已移除，物品信息查询改由UnBot/ItemQuery.lua实现）
- 所有文本内容应使用中文注释（根据用户全局设置）
- 提交代码到Git前需要经过用户确认