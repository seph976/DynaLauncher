/// @description Do Stuff

//Escape to go back
if keyboard_check_pressed(vk_escape) then{
	if tempicon != undefined then{
		sprite_delete(tempicon)
		tempicon = undefined
	}
	if templogo != undefined then{
		sprite_delete(templogo)
		templogo = undefined
	}
	if tempwallpaper != undefined then{
		sprite_delete(tempwallpaper)
		tempwallpaper = undefined
	}
	global.Theme = 1
	room_goto(room_main)
}

//General game setup
//Gamename
if mouse_x > 25 and mouse_x < 845 and mouse_y > 91 + (36 * 1) and mouse_y < 128 + (36 * 1) and Section = 0 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		Gamename = get_string(string(global.tr_addgeneral[1]),Gamename)
	}
}
//Developer
if mouse_x > 25 and mouse_x < 845 and mouse_y > 91 + (36 * 2) and mouse_y < 128 + (36 * 2) and Section = 0 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		Developer = get_string(string(global.tr_addgeneral[2]),Developer)
	}
}
//Timer type
if mouse_x > 25 and mouse_x < 845 and mouse_y > 91 + (36 * 3) and mouse_y < 128 + (36 * 3) and Section = 0 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		if Timertype < 2 then{
			Timertype += 1
		}
		else{
			Timertype = 0
		}
	}
}
//Icon file
if mouse_x > 25 and mouse_x < 845 and mouse_y > 91 + (36 * 4) and mouse_y < 128 + (36 * 4) and Section = 0 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		IconLocation = get_open_filename(".png|*.png","")
		if tempicon != undefined then{
			sprite_delete(tempicon)
			tempicon = undefined
		}
		if IconLocation != "" then{
			tempicon = sprite_add(IconLocation,0,false,false,0,0)
		}
	}
}
//Logo file
if mouse_x > 25 and mouse_x < 845 and mouse_y > 91 + (36 * 5) and mouse_y < 128 + (36 * 5) and Section = 0 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		LogoLocation = get_open_filename(".png|*.png","")
		if templogo != undefined then{
			sprite_delete(templogo)
			templogo = undefined
		}
		if LogoLocation != "" then{
			templogo = sprite_add(LogoLocation,0,false,false,0,0)
			sprite_set_offset(templogo, sprite_get_width(templogo) / 2, 0)
		}
	}
}
//Music file
if mouse_x > 25 and mouse_x < 845 and mouse_y > 91 + (36 * 6) and mouse_y < 128 + (36 * 6) and Section = 0 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		MusicLocation = get_open_filename(".ogg|*.ogg","")
	}
}
//Emulator
if mouse_x > 25 and mouse_x < 845 and mouse_y > 91 + (36 * 7) and mouse_y < 128 + (36 * 7) and Section = 0 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		//Order
		var _emu0 = ""
		var _emu1 = "Nintendo Entertainment System"
		var _emu2 = "Super Nintendo"
		var _emu3 = "Gameboy / Color / Advance"
		var _emu4 = "Nintendo 64"
		var _emu5 = "Gamecube / Wii"
		var _emu6 = "Wii U"
		//Stuff
		switch Emulator{
			case _emu0:
				Emulator = _emu1
			break
			case _emu1:
				Emulator = _emu2
			break
			case _emu2:
				Emulator = _emu3
			break
			case _emu3:
				Emulator = _emu4
			break
			case _emu4:
				Emulator = _emu5
			break
			case _emu5:
				Emulator = _emu6
			break
			case _emu6:
				Emulator = _emu0
			break
		}
	}
}
//EXE file
if mouse_x > 25 and mouse_x < 845 and mouse_y > 91 + (36 * 8) and mouse_y < 128 + (36 * 8) and Section = 0 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		Location = get_open_filename("","")
	}
}
//Import
if mouse_x > 25 and mouse_x < 845 and mouse_y > 91 + (36 * 13) and mouse_y < 128 + (36 * 13) and Section = 0 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		var _zip = get_open_filename(".zip|*.zip","")
		if _zip != "" then{
			show_message(string(global.tr_error[4]))
			var _exe = get_open_filename("","")
			if _exe != "" then{
				zip_unzip(_zip,game_save_id + "Games\\0")
				ini_open(game_save_id + "Games\\0\\gameinfo.ini")
				ini_write_string("STATS","Lastplayed","Never")
				ini_write_real("STATS","Hoursplayed",0)
				ini_write_real("STATS","Minutesplayed",0)
				ini_write_real("STATS","Secondsplayed",0)
				ini_write_string("LOCATION","Exefile",_exe)
				ini_close()
				//Increase amount of games
				global.Games += 1
				ini_open(game_save_id + "Games\\games.ini")
				ini_write_real("GAMES","Amount",global.Games)
				ini_close()
				//Rename to fix positions
				for (var i = global.Games; i > 0; --i) {
					directory_rename_ue(game_save_id + "Games\\" + string(i),game_save_id + "\\Games\\" + string(i + 1))
				}
				directory_rename_ue(game_save_id + "Games\\0",game_save_id + "\\Games\\1")
				//Update discord
				if global.Discord = true then{
					discord_set_home()
				}
				//Clean up and go to main screen
				if tempicon != undefined then{
					sprite_delete(tempicon)
				}
				if templogo != undefined then{
					sprite_delete(templogo)
				}
				if tempwallpaper != undefined then{
					sprite_delete(tempwallpaper)
				}
				room_goto(room_main)
			}
		}
	}
}
//Continue
if mouse_x > 25 and mouse_x < 845 and mouse_y > 91 + (36 * 14) and mouse_y < 128 + (36 * 14) and Section = 0 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		Section = 1
		clicky = true
	}
}

//Wallpaper setup
//Wallpaper
if mouse_x > 25 and mouse_x < 845 and mouse_y > 91 + (36 * 1) and mouse_y < 128 + (36 * 1) and Section = 1 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		WallpaperLocation = get_open_filename(".png|*.png","")
		if tempwallpaper != undefined then{
			sprite_delete(tempwallpaper)
			tempwallpaper = undefined
			layer_background_change(layer_background_get_id(layer_get_id("Background")),spr_wallpaper)
		}
		if WallpaperLocation != "" then{
			tempwallpaper = sprite_add(WallpaperLocation,0,false,false,98,141)
			layer_background_change(layer_background_get_id(layer_get_id("Background")),tempwallpaper)
		}
	}
}
//Wallpaper theme
if mouse_x > 25 and mouse_x < 845 and mouse_y > 91 + (36 * 2) and mouse_y < 128 + (36 * 2) and Section = 1 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		if Theme = 0 then{
			Theme = 1
			global.Theme = Theme
		}
		else{
			Theme = 0
			global.Theme = Theme
		}
	}
}
//Tiled
if mouse_x > 25 and mouse_x < 845 and mouse_y > 91 + (36 * 3) and mouse_y < 128 + (36 * 3) and Section = 1 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		if Tiled = 0 then{
			Tiled = 1
			layer_background_vtiled(layer_background_get_id(layer_get_id("Background")),true)
			layer_background_htiled(layer_background_get_id(layer_get_id("Background")),true)
		}
		else{
			Tiled = 0
			layer_background_vtiled(layer_background_get_id(layer_get_id("Background")),false)
			layer_background_htiled(layer_background_get_id(layer_get_id("Background")),false)
			WPHspeed = 0
			layer_hspeed("Background",WPHspeed)
			WPVspeed = 0
			layer_vspeed("Background",WPVspeed)
			layer_x("Background",0)
			layer_y("Background",0)
		}
	}
}
//Hspeed
if mouse_x > 25 and mouse_x < 845 and mouse_y > 91 + (36 * 4) and mouse_y < 128 + (36 * 4) and Section = 1 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		if Tiled = 1 then{
			WPHspeed = get_integer(string(global.tr_addwallpaper[4]),WPHspeed)
			layer_hspeed("Background",WPHspeed)
		}
		else{
			show_message(string(global.tr_error[2]))
		}
	}
}
//Vspeed
if mouse_x > 25 and mouse_x < 845 and mouse_y > 91 + (36 * 5) and mouse_y < 128 + (36 * 5) and Section = 1 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		if Tiled = 1 then{
			WPVspeed = get_integer(string(global.tr_addwallpaper[5]),WPVspeed)
			layer_vspeed("Background",WPVspeed)
		}
		else{
			show_message(string(global.tr_error[2]))
		}
	}
}
//Back
if mouse_x > 25 and mouse_x < 845 and mouse_y > 91 + (36 * 13) and mouse_y < 128 + (36 * 13) and Section = 1 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		Section = 0
	}
}
//Finish and create the final game
if mouse_x > 25 and mouse_x < 845 and mouse_y > 91 + (36 * 14) and mouse_y < 128 + (36 * 14) and Section = 1 and clicky = false then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		if Gamename != "" and Location != "" then{
			//Create ini file
			directory_create(game_save_id + "Games\\0")
			ini_open(game_save_id + "Games\\0\\gameinfo.ini")
			ini_write_string("GAMEINFO","Name",Gamename)
			ini_write_string("GAMEINFO","Developer",Developer)
			ini_write_string("STATS","Lastplayed","Never")
			ini_write_real("STATS","Hoursplayed",0)
			ini_write_real("STATS","Minutesplayed",0)
			ini_write_real("STATS","Secondsplayed",0)
			ini_write_string("LOCATION","Exefile",Location)
			ini_write_real("OTHER","Timertype",Timertype)
			ini_write_string("OTHER","Emulator",Emulator)
			ini_write_real("WP","Theme",Theme)
			ini_write_real("WP","Tiled",Tiled)
			ini_write_real("WP","Hspeed",WPHspeed)
			ini_write_real("WP","Vspeed",WPVspeed)
			ini_close()
			//Add resources
			if IconLocation != "" then{
				file_copy(IconLocation,game_save_id + "Games\\0\\gameicon.png")
			}
			else{
				var _sprite = sprite_duplicate(spr_nogameicon)
				sprite_save(_sprite,0,game_save_id + "Games\\0\\gameicon.png")
				sprite_delete(_sprite)
			}
			if LogoLocation != "" then{
				file_copy(LogoLocation,game_save_id + "Games\\0\\logo.png")
			}
			if WallpaperLocation != "" then{
				file_copy(WallpaperLocation,game_save_id + "Games\\0\\wallpaper.png")
			}
			if MusicLocation != "" then{
				file_copy(MusicLocation,game_save_id + "Games\\0\\music.ogg")
			}
			//Increase amount of games
			global.Games += 1
			ini_open(game_save_id + "Games\\games.ini")
			ini_write_real("GAMES","Amount",global.Games)
			ini_close()
			//Rename to fix positions
			for (var i = global.Games; i > 0; --i) {
				directory_rename_ue(game_save_id + "Games\\" + string(i),game_save_id + "\\Games\\" + string(i + 1))
			}
			directory_rename_ue(game_save_id + "Games\\0",game_save_id + "\\Games\\1")
			//Update discord
			if global.Discord = true then{
				discord_set_home()
			}
			//Clean up and go to main screen
			if tempicon != undefined then{
				sprite_delete(tempicon)
			}
			if templogo != undefined then{
				sprite_delete(templogo)
			}
			if tempwallpaper != undefined then{
				sprite_delete(tempwallpaper)
			}
			global.Theme = 1
			room_goto(room_main)
		}
		else{
			show_message(string(global.tr_error[1]))
		}
	}
}

//Reset clicky
if clicky = true then{
	clicky = false
}