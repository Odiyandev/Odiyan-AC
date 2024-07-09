# [Odiyan-AC - Anticheat system]

odiyan AntiCheat (Odiyan-AC) SA-MP Include

Developed by 0diyan

Description
Odiyan-AC is a powerful anti-cheat solution designed to prevent cheating in SA-MP servers. This include provides an easy-to-use interface for integrating Odiyan-AC into your SA-MP script.

Features

- Advanced cheat detection and prevention
- Real-time monitoring and analysis
- Machine learning-based detection algorithms
- Easy to use and integrate

Installation

1. Download the Odiyan-AC SA-MP include from Github.com
2. Extract the contents of the zip file to your SA-MP script directory.
3. Include the Odiyan-AC.inc file in your script using the #include directive.
4. The settings is located in a separate file (scriptfiles\odiyan-ac.cfg)

Usage

Call the odiyanAC_Init() function to initialize the anti-cheat system.
Use the odiyanAC_CheckPlayer() function to check players for cheating.

License

Odiyan-AC is licensed under the terms of the odiyan AntiCheat License. See the LICENSE file for details.

Contact

For support, bug reports, and feature requests, please contact 0diyan at nexalroleplay@gmail.com.


# odiyan AntiCheat (Odiyan-AC) Features

Movement Cheats

- Anti-AirBreak (onfoot/in vehicle)
- Anti-Teleport Hack (onfoot/into/in/between vehicles)
- Anti-FlyHack (onfoot/in vehicle)
- Anti-SpeedHack (onfoot/in vehicle)
- Anti-Parkour Mod
- Anti-Quick Turn

Combat Cheats

- Anti-Health Hack (onfoot/in vehicle)
- Anti-Armour Hack
- Anti-Weapon Hack
- Anti-Add/Infinite Ammo Hack
- Anti-GodMode from Bullets (onfoot/in vehicle)

Game Mechanics Cheats

- Anti-Money Hack
- Anti-Tuning Hack
- Anti-Lagcomp Spoof

Player Behavior Cheats

- Anti-Fake Spawn
- Anti-Fake Kill
- Anti-Pro Aim
- Anti-AFK Ghost
- Anti-Reconnect Hack

Connection and Authentication Cheats

- Anti-High Ping
- Anti-Fake NPC
- Anti-Rcon Hack (Brute/Brute-Force)

Malicious Activities

- Anti-Crashers
- Anti-NOPs
- Anti-DoS Attacks


Anti-Flood Protection

- Dialog responses: OnDialogResponse
- Mod shop interactions: OnEnterExitModShop
- Map clicks: OnPlayerClickMap
- Player clicks: OnPlayerClickPlayer
- Text draw clicks: OnPlayerClickTextDraw
- Command text: OnPlayerCommandText
- Vehicle interactions:
    - Enter: OnPlayerEnterVehicle
    - Exit: OnPlayerExitVehicle
- Pickup interactions: OnPlayerPickUpPickup
- Class requests: OnPlayerRequestClass
- Menu row selections: OnPlayerSelectedMenuRow
- Player state changes: OnPlayerStateChange
- Vehicle modifications:
    - Mod: OnVehicleMod
    - Paintjob: OnVehiclePaintjob
    - Respray: OnVehicleRespray
- Vehicle death: OnVehicleDeath
- Player text: OnPlayerText
- Checkpoint interactions:
    - Enter: OnPlayerEnterCheckpoint
    - Leave: OnPlayerLeaveCheckpoint
- Spawn requests: OnPlayerRequestSpawn
- Menu exits: OnPlayerExitedMenu
- Race checkpoint interactions:
    - Enter: OnPlayerEnterRaceCheckpoint
    - Leave: OnPlayerLeaveRaceCheckpoint
- Player text draw clicks: OnPlayerClickPlayerTextDraw
- Vehicle damage updates: OnVehicleDamageStatusUpdate
- Object selection: OnPlayerSelectObject

Anti-NOPs Protection

- Player manipulation:
    - Spawn: SpawnPlayer
    - Position: SetPlayerPos
    - Ammo: SetPlayerAmmo
    - Health: SetPlayerHealth
    - Armour: SetPlayerArmour
- Vehicle manipulation:
    - Position: SetVehiclePos
    - Health: SetVehicleHealth
- Weapon manipulation: GivePlayerWeapon
- Other:
    - SetPlayerPosFindZ
    - SetPlayerInterior
    - PutPlayerInVehicle
    - ResetPlayerWeapons
    - SetPlayerSpecialAction
    - TogglePlayerSpectating
    - RemovePlayerFromVehicle

Anti-Crashers Protection

- Invalid tuning
- Invalid vehicle seat
- Illegal characters in dialogs (deleting)
- Invalid attached objects
- Weapon crasher
# Functions:
#### public OnCheatDetected(playerid, ip_address[], type, code)
> Called when triggers one of the anti-cheats
> * `playerid` - The ID of the cheater
> * `ip_address[]` - IP-address of the cheater
> * `type` - Type of cheating (when `0` it returns the ID, when `1` - IP)
> * `code` - The code (ID) of the anti-cheat
> * This callback does not handle returns


[Example of setting **OnCheatDetected** in your gamemode](CHANGELOG.md)


# Instructions
#define DEBUG
#include <nex-ac_en.lang> //or any other
#include <nex-ac>
```
1. In all filterscripts, after *#include <a_samp>* write the following:
```
#include <nex-ac>
```
2. Compile the modified scripts

***Warnings:***
 * Check for using any other anticheats in order to avoid conflicts with them
 * If you use Streamer Plugin by Incognito, Pawn.RakNet, foreach, sscanf, YSF or SKY, include it before Odiyan-AC
 * Also keep in mind that filterscript must have "#define FILTERSCRIPT" before including the anticheat
 

