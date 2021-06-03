/// @description Setup

//Setup
Icons = ds_list_create()
Scroll = 0
MaxScroll = 0
Cursor = -1
Gamename = ""
Startgame = false

//Wallpaper
layer_background_change(layer_background_get_id(layer_get_id("Background")),spr_wallpaper)

//Update games list
event_user(0)