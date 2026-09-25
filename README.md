# UnBot for AzerothCore Module

A bot control plugin modified from UnBot, designed as a companion plugin for AzerothCore bot modules to help players control bots.

## 🌍 English Localization Complete!

This plugin has been completely localized from Chinese to English, including:
- All UI interface elements and tooltips
- Command help text (89 entries)
- Error messages and notifications
- Window titles and descriptions
- Button labels and action descriptions

## Installation

1. Place the `UnBot` folder in your `Interface/AddOns/` directory
2. Restart World of Warcraft
3. Enable the addon in your addon list

## Features

- **Complete English Interface**: All text elements fully translated to English
- **Bot Command Interface**: Intuitive interface with tooltips for all bot commands
- **Equipment Management**: Easy equipment viewing and management for bots
- **AI Strategy Editor**: Detailed combat and non-combat strategy configuration
- **Quest & Status Viewing**: Monitor bot quests, experience, and inventory
- **Formation Control**: Multiple formation patterns for party management
- **Multi-Bot Support**: Supports random bots, account bots, and NPC bots

## Interface Preview

**Main Bot Control Panel:**
![](docs/display.png)

**Add Specific Class Bots:**
![](docs/addclass.png)

## Bot Commands

The plugin provides access to 90 different bot commands organized in categories:

### Basic Commands
- **Initialize**: Reset and configure bots for your level
- **Summon**: Teleport bots to your location
- **Follow/Flee**: Movement control and positioning
- **Attack**: Target acquisition and combat initiation

### Management Commands
- **Equipment**: View and manage bot inventories
- **Talents**: Reset and configure bot talent trees
- **Strategy**: Access detailed AI strategy editor
- **Status**: View bot statistics and information

### Advanced Features
- **Formations**: Multiple tactical formations (arrow, circle, shield, etc.)
- **Class-specific**: Druid forms, Paladin auras and blessings
- **Utility**: Friends management, ready checks, grinding automation

## Compatibility

- **Client**: World of Warcraft 3.3.5a (Wrath of the Lich King)
- **Server**: AzerothCore with bot modules enabled
- **Language**: English (fully localized)
- **Bot Types**: Random bots, account bots, NPC bots

## Troubleshooting

If you encounter display issues with garbled characters ("?" or overlapping text), ensure you have the English client selected. All Chinese characters have been completely removed from the plugin.

## Contributing

This plugin is a localized version of the original UnBot addon. All Chinese text has been professionally translated to provide a seamless English experience for WoW players.

## Version History

- **v0.4**: Complete English localization implementation
- **Previous versions**: Chinese-only interface

---

*Note: UnBot no longer depends on YssBossLoot. The bundled YssBossLoot folder needs libraries that ship only with BigFoot (Ace3, LibBabble, LibInstanceLootData-1.0) and will not load on its own.*