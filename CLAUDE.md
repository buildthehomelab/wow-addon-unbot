# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project overview

A World of Warcraft 3.3.5a addon, maintained as an English fork:
- **UnBot**: a bot controller addon for controlling bots on UnWOW servers

## Addon architecture

### UnBot files
- `UnBot.lua` - main logic, including command bar setup and management
- `ExecuteCommand.lua` - bot command execution
- `Online.lua` - online bot management
- `NPCFrame.lua` - NPC bot window
- `Strategy.lua` - combat strategy window
- `QuestReward.lua` - quest reward selection
- `UnBotBags.lua` - bot bag management
- `Tooltips.lua` - tooltips
- `ImplantInspectFrame.lua` - equipment inspect window
- `ItemQuery.lua` - queries the server for item info that isn't cached yet
- `StrategyTips.lua` - strategy tips
- `Bindings.xml` - key bindings
- XML files - UI layout definitions

## Localization

The English localization is complete; see `LOCALIZATION_PROGRESS.md`.

## Development notes

- The addon targets WoW 3.3.5a
- Written in Lua against the WoW API
- Has no dependencies on other addons or libraries (the former YssBossLoot dependency was removed; item info queries are handled by `UnBot/ItemQuery.lua`)
- Write code comments in English
- Get the user's confirmation before committing to Git
