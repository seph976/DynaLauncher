/// @description Update Game Info

//Get game info
if file_exists(game_save_id + "Games\\" + string(Cursor + 1) + "\\gameinfo.ini") then{
	ini_open(game_save_id + "Games\\" + string(Cursor + 1) + "\\gameinfo.ini")
	Gamename = ini_read_string("GAMEINFO","Name","")
	Developer = ini_read_string("GAMEINFO","Developer","")
	Lastplayed = ini_read_string("STATS","Lastplayed","")
	Hoursplayed = ini_read_real("STATS","Hoursplayed",0)
	Minutesplayed = ini_read_real("STATS","Minutesplayed",0)
	Secondsplayed = ini_read_real("STATS","Secondsplayed",0)
	Location = ini_read_string("LOCATION","Exefile","")
	Timertype = ini_read_real("OTHER","Timertype",1)
	Emulator = ini_read_string("OTHER","Emulator","")
	global.Theme = ini_read_real("WP","Theme",1)
	Tiled = ini_read_real("WP","Tiled",false)
	WPHspeed = ini_read_real("WP","Hspeed",0)
	WPVspeed = ini_read_real("WP","Vspeed",0)
	ini_close()
}
else{
	Gamename = ""
	Developer = ""
	Lastplayed = ""
	Hoursplayed = 0
	Minutesplayed = 0
	Secondsplayed = 0
	Emulator = ""
	Location = ""
	Timertype = 1
	global.Theme = 1
	Tiled = false
	WPHspeed = 0
	WPVspeed = 0
}

//Update wallpaper
if global.DynamicWP = true then{
	layer_background_vtiled(layer_background_get_id(layer_get_id("Background")),false)
	layer_background_htiled(layer_background_get_id(layer_get_id("Background")),false)
	layer_hspeed("Background",0)
	layer_vspeed("Background",0)
	layer_x("Background",0)
	layer_y("Background",0)
	if Wallpaper != undefined then{
		sprite_delete(Wallpaper)
	}
	if file_exists(game_save_id + "Games\\" + string(Cursor + 1) + "\\wallpaper.png") then{
		Wallpaper = sprite_add(game_save_id + "Games\\" + string(Cursor + 1) + "\\wallpaper.png",0,false,false,0,0)
		layer_background_change(layer_background_get_id(layer_get_id("Background")),Wallpaper)
		if Tiled = true then{
			layer_background_vtiled(layer_background_get_id(layer_get_id("Background")),true)
			layer_background_htiled(layer_background_get_id(layer_get_id("Background")),true)
			if global.FPS = 30 then{
				layer_hspeed("Background",WPHspeed * 2)
				layer_vspeed("Background",WPVspeed * 2)
			}
			else if global.FPS = 60 then{
				layer_hspeed("Background",WPHspeed)
				layer_vspeed("Background",WPVspeed)
			}
			else if global.FPS = 120 then{
				layer_hspeed("Background",WPHspeed / 2)
				layer_vspeed("Background",WPVspeed / 2)
			}
		}
	}
	else{
		layer_background_change(layer_background_get_id(layer_get_id("Background")),spr_wallpaper)
	}
}

//Update logo
if Logo != undefined then{
	sprite_delete(Logo)
}
if file_exists(game_save_id + "Games\\" + string(Cursor + 1) + "\\logo.png") then{
	Logo = sprite_add(game_save_id + "Games\\" + string(Cursor + 1) + "\\logo.png",0,false,false,0,0)
	sprite_set_offset(Logo, sprite_get_width(Logo) / 2, sprite_get_height(Logo) / 2)
}

//Update music
if global.PlayBGM = true then{
	audio_stop_sound(all)
	audio_destroy_stream(Music)
	if file_exists(game_save_id + "Games\\" + string(Cursor + 1) + "\\music.ogg") then{
		file_copy(game_save_id + "Games\\" + string(Cursor + 1) + "\\music.ogg","temp\\temp.ogg")
		Music = audio_create_stream(game_save_id + "\\temp\\temp.ogg")
		var _music = audio_play_sound(Music,1,true)
		audio_sound_gain(_music,0,0)
		audio_sound_gain(_music,0.5,2000)
	}
}