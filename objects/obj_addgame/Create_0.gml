/// @description Setup

//Setup
Section = 0
clicky = false
tempicon = undefined
templogo = undefined
tempwallpaper = undefined

//Game vars
Gamename = ""
Developer = ""
Timertype = 1 //0 - None, 1 - Auto, 2 - Manual
Emulator = ""
Location = ""
IconLocation = ""
LogoLocation = ""
MusicLocation = ""

WallpaperLocation = ""
Theme = 1
Tiled = 0
WPHspeed = 0
WPVspeed = 0


//Wallpaper
layer_background_change(layer_background_get_id(layer_get_id("Background")),spr_wallpaper)