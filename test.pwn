```pawn
#include <a_samp>
#include <odiyan-ac>

//Put this on gamemode


#define AC_MAX_CODES 53 // The number of anti-cheat codes (currently there are 53)
#define AC_MAX_CODE_LENGTH (3 + 1) // Maximum Characters in the anti-cheat "code" (001/002/003, etc.)
#define AC_MAX_CODE_NAME_LENGTH (33 + 1) // Maximum Characters in the full name of the cheat, for which any code is responsible


new AC_CODE_NAME[AC_MAX_CODES][AC_MAX_CODE_NAME_LENGTH] =
{
    {"AirBreak (onfoot)"},
    {"AirBreak (in vehicle)"},
    {"Teleport (onfoot)"},
    {"Teleport (in vehicle)"},
    {"Teleport (into/between vehicles)"},
    {"Teleport (vehicle to player)"},
    {"Teleport (pickups)"},
    {"FlyHack (onfoot)"},
    {"FlyHack (in vehicle)"},
    {"SpeedHack (onfoot)"},
    {"SpeedHack (in vehicle)"},
    {"Health hack (in vehicle)"},
    {"Health hack (onfoot)"},
    {"Armour hack"},
    {"Money hack"},
    {"Weapon hack"},
    {"Ammo hack (add)"},
    {"Ammo hack (infinite)"},
    {"Special actions hack"},
    {"GodMode from bullets (onfoot)"},
    {"GodMode from bullets (in vehicle)"},
    {"Invisible hack"},
    {"Lagcomp-spoof"},
    {"Tuning hack"},
    {"Parkour mod"},
    {"Quick turn"},
    {"Rapid fire"},
    {"FakeSpawn"},
    {"FakeKill"},
    {"Pro Aim"},
    {"CJ run"},
    {"CarShot"},
    {"CarJack"},
    {"UnFreeze"},
    {"AFK Ghost"},
    {"Full Aiming"},
    {"Fake NPC"},
    {"Reconnect"},
    {"High ping"},
    {"Dialog hack"},
    {"Sandbox"},
    {"Invalid version"},
    {"Rcon hack"},
    {"Tuning crasher"},
    {"Invalid seat crasher"},
    {"Dialog crasher"},
    {"Attached object crasher"},
    {"Weapon Crasher"},
    {"Connects to one slot"},
    {"Flood callback functions"},
    {"Flood change seat"},
    {"DDos"},
    {"NOP's"}
};

antikick(playerid, code)
{
	SMA(COLOR_LIGHTRED, ""GREEN"AdmCmd: %s"WHITE" was autokicked by ODIYAN-AC ANTICHEAT, Reason: %s", GetRPName(playerid), AC_CODE_NAME[code]);
    return 1;
}



/////dont remove credits pls

