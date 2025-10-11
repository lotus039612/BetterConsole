# BetterConsole

An enhanced console UI for FFXIV Minion that provides improved log viewing, filtering, and management capabilities.

## Overview

BetterConsole is a LuaMod that intercepts the native FFXIV Minion console and replaces it with a feature-rich alternative. It captures all log messages and provides advanced filtering, categorization, and visualization capabilities.

![BetterConsole Screenshot](https://media.discordapp.net/attachments/1426467453298413578/1426467805053714624/5866EDA9-DAB0-44D4-A3E8-9F80D513AC39.png?ex=68eb552b&is=68ea03ab&hm=623f534925bc1672871f66da565d2478eed30132754fa1ed492ddc61e6d0496f&=&format=webp&quality=lossless)

## Features

- **Enhanced Console UI**: Modern, feature-rich interface for viewing logs
- **Log Interception**: Automatically captures all Minion log messages
- **Visibility Control**: Seamless integration with Minion's console toggle system
- **Advanced Filtering**: Filter logs by level, category, and custom criteria
- **Category Management**: Automatic categorization and organization of log entries
- **Performance Optimized**: Efficient rendering and state management
- **Original Console Support**: Option to show both BetterConsole and native console simultaneously

## Installation

1. Place the `BetterConsole` folder in your FFXIV Minion's `LuaMods` directory:
   ```
   C:\MINIONAPP\Bots\FFXIVMinion64\LuaMods\BetterConsole\
   ```

2. Restart FFXIV Minion or reload your LuaMods

3. The console will automatically initialize when Minion starts. Press your console keybind.

## Usage

### Basic Operations

The console automatically replaces the native Minion console. Use the standard console toggle (typically `ctrl+c`, check your shortcuts) to show/hide the console.

### Public API

BetterConsole exposes a global API for programmatic access:

```lua
-- Set console visibility
BetterConsole.Init.set_visible(true)  -- Show console
BetterConsole.Init.set_visible(false) -- Hide console
BetterConsole.Init.set_visible(nil)   -- Toggle console

-- Check visibility
local visible = BetterConsole.Init.is_visible()

-- Add custom log entries
BetterConsole.Init.addEntry("INFO", "MyCategory", "My message")
BetterConsole.Init.addEntry("ERROR", "MyCategory", "Error occurred", {extra = "data"})

-- Note that you don't need to use the public api. simply calling d(string) works as well. 

-- Clear all entries
BetterConsole.Init.clearEntries()

-- Get statistics
local stats = BetterConsole.Init.getStats()

-- Show/hide original console alongside BetterConsole
BetterConsole.Init.set_show_original_console(true)  -- Show both
BetterConsole.Init.set_show_original_console(false) -- Show only BetterConsole
```

### Metadata Panel

BetterConsole includes a metadata panel that displays detailed information about selected log entries. This panel is **enabled by default** and appears on the right side of the console window.

#### What the Metadata Panel Shows

When you click on a log entry, the metadata panel displays:
- **Timestamp**: Exact time the log entry was created
- **Level**: Log level (TRACE, DEBUG, INFO, WARN, ERROR)
- **Category**: Source category of the log entry
- **Message**: Full log message text
- **Data**: Any additional metadata attached to the log entry (displayed in a structured, human-readable format)

#### Toggling the Metadata Panel

You can show or hide the metadata panel at any time:

1. **Using the Menu**: Navigate to `View -> Metadata Panel` in the console menu
2. **Quick Access**: Press `F10` while the console is open to access the View menu

The metadata panel state is automatically saved in your preferences, so your choice persists across sessions.

#### Adding Metadata to Log Entries

You can attach structured data to your log entries for easier debugging and inspection. The metadata will be displayed in the metadata panel when you click on the entry.

**Using Minion's built-in `d()` function:**

```lua
-- Basic log with metadata
d("Player position updated", {
    x = player.pos.x,
    y = player.pos.y,
    map_id = player.localmapid -- intentional. we preserve table order
    z = player.pos.z,
})
```

will return: 

![metadata](https://media.discordapp.net/attachments/1426467453298413578/1426468479422169209/2595A78A-10A5-459D-A6BC-950ABC7DCE32.png?ex=68eb55cb&is=68ea044b&hm=2f69138de884b791e3339ba3fc36af19525ab070957a73e6efe34d7074cd599a&=&format=webp&quality=lossless)


### Original Console

If you need to see both consoles temporarily:

`View -> Show Minion Console` or `F10` while console is open.

Alternatively: 

```lua
BetterConsole.Init.set_show_original_console(true)
```

## Support

If you need support, you can find me in my [discord server](https://discord.gg/DNMdEfMBr5) or add me @lotus039612