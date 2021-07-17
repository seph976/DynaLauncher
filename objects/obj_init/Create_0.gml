/// @description Setup

//System
global.Version = "1.2.0 DEV"

//Setup
global.Theme = 1 //0 - Light / 1 - Dark
global.Games = 0
global.Updatecheck = "http://www.sephirandom.com/DynaLauncher/version.txt" //Where to check version
global.LatestDownload = "http://www.sephirandom.com/DynaLauncher/DynaLauncher.zip" //Download link for latest version
global.DID1 = "755580154302169119" //First and main discord application ID
global.DID2 = "763573777342136353" //Secondary discord application ID (Not used yet)
global.DiscordID = global.DID1

//Settings
global.Resolution = "1280x720"
global.Fullscreen = false
global.FPS = 60
global.Interpolation = false
global.Cursor = 0
global.DynamicWP = true
global.DynamicLogo = true
global.PlaySFX = true
global.PlayBGM = true
global.Language = 0
global.Discord = true
global.Debug = false

//Emulators
global.DolphinPath = ""
global.CemuPath = ""
global.Snes9xPath = ""
global.Project64Path = ""
global.MesenPath = ""
global.VBAMPath = ""

//Check if settings exists
if !file_exists(game_save_id + "\\settings.ini") then{
	ini_open(game_save_id + "\\settings.ini")
	ini_write_string("VIDEO","Resolution",global.Resolution)
	ini_write_real("VIDEO","Fullscreen",global.Fullscreen)
	ini_write_real("VIDEO","FPS",global.FPS)
	ini_write_real("VIDEO","Interpolation",global.Interpolation)
	ini_write_real("VIDEO","DynamicWP",global.DynamicWP)
	ini_write_real("VIDEO","DynamicLogo",global.DynamicLogo)
	ini_write_real("VIDEO","Cursor",global.Cursor)
	ini_write_real("AUDIO","PlaySFX",global.PlaySFX)
	ini_write_real("AUDIO","PlayBGM",global.PlayBGM)
	ini_write_real("LANGUAGE","Language",global.Language)
	ini_write_string("EMULATOR","Gamecube / Wii",global.DolphinPath)
	ini_write_string("EMULATOR","Wii U",global.CemuPath)
	ini_write_string("EMULATOR","Super Nintendo",global.Snes9xPath)
	ini_write_string("EMULATOR","Nintendo 64",global.Project64Path)
	ini_write_string("EMULATOR","Nintendo Entertainment System",global.MesenPath)
	ini_write_string("EMULATOR","Gameboy / Color / Advance",global.VBAMPath)
	ini_write_real("SYSTEM","Discord",global.Discord)
	ini_write_real("SYSTEM","Debug",global.Debug)
	ini_close()
}
else{
	ini_open(game_save_id + "\\settings.ini")
	global.Resolution = ini_read_string("VIDEO","Resolution",global.Resolution)
	global.Fullscreen = ini_read_real("VIDEO","Fullscreen",global.Fullscreen)
	global.FPS = ini_read_real("VIDEO","FPS",global.FPS)
	global.Interpolation = ini_read_real("VIDEO","Interpolation",global.Interpolation)
	global.Cursor = ini_read_real("VIDEO","Cursor",global.Cursor)
	global.DynamicWP = ini_read_real("VIDEO","DynamicWP",global.DynamicWP)
	global.DynamicLogo = ini_read_real("VIDEO","DynamicLogo",global.DynamicLogo)
	global.PlaySFX = ini_read_real("AUDIO","PlaySFX",global.PlaySFX)
	global.PlayBGM = ini_read_real("AUDIO","PlayBGM",global.PlayBGM)
	global.Language = ini_read_real("LANGUAGE","Language",global.Language)
	global.DolphinPath = ini_read_string("EMULATOR","Gamecube / Wii",global.DolphinPath)
	global.CemuPath = ini_read_string("EMULATOR","Wii U",global.CemuPath)
	global.Snes9xPath = ini_read_string("EMULATOR","Super Nintendo",global.Snes9xPath)
	global.Project64Path = ini_read_string("EMULATOR","Nintendo 64",global.Project64Path)
	global.MesenPath = ini_read_string("EMULATOR","Nintendo Entertainment System",global.MesenPath)
	global.VBAMPath = ini_read_string("EMULATOR","Gameboy / Color / Advance",global.VBAMPath)
	global.Discord = ini_read_real("SYSTEM","Discord",global.Discord)
	global.Debug = ini_read_real("SYSTEM","Debug",global.Debug)
	ini_close()
}

//Set resolution
if global.Resolution = "640x360" then{
	window_set_size(640, 360)
	display_reset(0, false)
}
else if global.Resolution = "800x450" then{
	window_set_size(800, 450)
	display_reset(0, false)
}
else if global.Resolution = "1280x720" then{
	window_set_size(1280, 720)
	display_reset(0, false)
}
else if global.Resolution = "1920x1080" then{
	window_set_size(1920, 1080)
	display_reset(0, false)
}

//Set fullscreen
if global.Fullscreen = true then{
	window_set_fullscreen(true)
}

//Set FPS
game_set_speed(global.FPS,gamespeed_fps)

//Set interpolation
gpu_set_texfilter(global.Interpolation)

//Set cursor
if global.Cursor != 0 then{
	window_set_cursor(cr_none)
}

//Set language
set_language(global.Language)

//User
global.Username = "Username"

//Set profile picture
if file_exists(game_save_id + "\\profile.png") then{
	global.Profilepic = sprite_add(game_save_id + "\\profile.png",0,false,false,0,0)
}
else{
	global.Profilepic = undefined
}

//Check games amount
if !directory_exists(game_save_id + "\\Games") then{
	directory_create("Games")
	ini_open(game_save_id + "\\Games\\games.ini")
	ini_write_real("GAMES","Amount",0)
	ini_close()
}
else{
	ini_open(game_save_id + "\\Games\\games.ini")
	global.Games = ini_read_real("GAMES","Amount",0)
	ini_close()
}

//Color variables
global.h1_red = 0
global.h1_green = 255
global.h1_blue = 255
global.h2_red = 0
global.h2_green = 128
global.h2_blue = 128

//Check custom theme
if !directory_exists(game_save_id + "\\Theme") then{
	theme_create()
}
else{
	theme_import()
}

//Color Animation
col_mode = 0
col_numb = 0

//Theme color macros
#macro col_tlight make_color_rgb(240,240,240)
#macro col_tdark make_color_rgb(79,79,79)
#macro col_highlight merge_colour(make_color_rgb(global.h1_red,global.h1_green,global.h1_blue),make_color_rgb(global.h2_red,global.h2_green,global.h2_blue),obj_init.col_numb)
#macro col_highlight_green merge_colour(make_color_rgb(0,255,0),make_color_rgb(0,128,0),obj_init.col_numb)

//Discord rich presence
if global.Discord = true then{
	discord_enable(global.DiscordID)
}

//Set top bar text
window_set_caption("Dyna Launcher " + string(global.Version))

//Check user
if !file_exists(game_save_id + "\\user.ini") then{
	room_goto(room_setup)
}
else{
	ini_open(game_save_id + "\\user.ini")
	global.Username = ini_read_string("PROFILE","Username","")
	ini_close()
	room_goto(room_main)
}