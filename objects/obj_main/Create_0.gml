/// @description Setup

//Setup
Cursor = -1
Scroll = 0
MaxScroll = 6
Icons = ds_list_create()
Pause = false
Starttime = 0
CheckedUpdate = false
LatestVersion = true
NewVersion = "ERROR"

//Game Info
Gamename = ""
Developer = ""
Lastplayed = ""
Hoursplayed = 0
Minutesplayed = 0
Secondsplayed = 0
Emulator = ""
Location = ""
Timertype = 1 //0 - None, 1 - Auto, 2 - Manual
Wallpaper = undefined
Logo = undefined
Music = -1
Tiled = false
WPHspeed = 0
WPVspeed = 0

//Wallpaper
layer_background_change(layer_background_get_id(layer_get_id("Background")),spr_wallpaper)

//Play sfx
if global.PlaySFX = true and !instance_exists(obj_allapps) then{
	audio_play_sound(sfx_home,1,false)
}

//Check for update
updatefile = http_get(global.Updatecheck)

//Update games list
event_user(0)