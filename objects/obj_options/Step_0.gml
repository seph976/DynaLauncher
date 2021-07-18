/// @description Do Stuff

//Category buttons
if mouse_x > 10 and mouse_x < 384 and mouse_y > 100 + (80 * 0) and mouse_y < 175 + (80 * 0) and Category != 0 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		Category = 0
	}
}
if mouse_x > 10 and mouse_x < 384 and mouse_y > 100 + (80 * 1) and mouse_y < 175 + (80 * 1) and Category != 1 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		Category = 1
	}
}
if mouse_x > 10 and mouse_x < 384 and mouse_y > 100 + (80 * 2) and mouse_y < 175 + (80 * 2) and Category != 2 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		Category = 2
	}
}
if mouse_x > 10 and mouse_x < 384 and mouse_y > 100 + (80 * 3) and mouse_y < 175 + (80 * 3) and Category != 3 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		Category = 3
	}
}
if mouse_x > 10 and mouse_x < 384 and mouse_y > 100 + (80 * 4) and mouse_y < 175 + (80 * 4) and Category != 4 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		Category = 4
	}
}
if mouse_x > 10 and mouse_x < 384 and mouse_y > 100 + (80 * 5) and mouse_y < 175 + (80 * 5) and Category != 5 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		Category = 5
	}
}

//Video settings
//Resolution
if mouse_x > 425 and mouse_x < 1245 and mouse_y > 91 + (36 * 0) and mouse_y < 128 + (36 * 0) and Category = 0 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		if global.Fullscreen = 0 then{
			if global.Resolution = "640x360" then{
				window_set_size(800, 450)
				display_reset(0, false)
				global.Resolution = "800x450"
			}
			else if global.Resolution = "800x450" then{
				window_set_size(1280, 720)
				display_reset(0, false)
				global.Resolution = "1280x720"
			}
			else if global.Resolution = "1280x720" then{
				window_set_size(1920, 1080)
				display_reset(0, false)
				global.Resolution = "1920x1080"
			}
			else if global.Resolution = "1920x1080" then{
				window_set_size(640, 360)
				display_reset(0, false)
				global.Resolution = "640x360"
			}
			ini_open(game_save_id + "\\settings.ini")
			ini_write_string("VIDEO","Resolution",global.Resolution)
			ini_close()
		}
		else{
			show_message(string(global.tr_error[3]))
		}
	}
}
//Fullscreen
if mouse_x > 425 and mouse_x < 1245 and mouse_y > 91 + (36 * 1) and mouse_y < 128 + (36 * 1) and Category = 0 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		if global.Fullscreen = true then{
			global.Fullscreen = false
		}
		else{
			global.Fullscreen = true
		}
		window_set_fullscreen(global.Fullscreen)
		ini_open(game_save_id + "\\settings.ini")
		ini_write_real("VIDEO","Fullscreen",global.Fullscreen)
		ini_close()
	}
}
//FPS
if mouse_x > 425 and mouse_x < 1245 and mouse_y > 91 + (36 * 2) and mouse_y < 128 + (36 * 2) and Category = 0 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		if global.FPS = 30 then{
			global.FPS = 60
		}
		else if global.FPS = 60 then{
			global.FPS = 120
		}
		else{
			global.FPS = 30
		}
		game_set_speed(global.FPS,gamespeed_fps)
		obj_init.col_numb = 0
		ini_open(game_save_id + "\\settings.ini")
		ini_write_real("VIDEO","FPS",global.FPS)
		ini_close()
	}
}
//Interpolation
if mouse_x > 425 and mouse_x < 1245 and mouse_y > 91 + (36 * 3) and mouse_y < 128 + (36 * 3) and Category = 0 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		if global.Interpolation = true then{
			gpu_set_texfilter(false)
			global.Interpolation = false
		}
		else{
			gpu_set_texfilter(true)
			global.Interpolation = true
		}
		ini_open(game_save_id + "\\settings.ini")
		ini_write_real("VIDEO","Interpolation",global.Interpolation)
		ini_close()
	}
}
//Cursor
if mouse_x > 425 and mouse_x < 1245 and mouse_y > 91 + (36 * 4) and mouse_y < 128 + (36 * 4) and Category = 0 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		if global.Cursor = 3 then{
			global.Cursor = 0
		}
		else{
			global.Cursor += 1
		}
		if global.Cursor = 0 then{
			window_set_cursor(cr_default)
		}
		else{
			window_set_cursor(cr_none)
		}
		ini_open(game_save_id + "\\settings.ini")
		ini_write_real("VIDEO","Cursor",global.Cursor)
		ini_close()
	}
}
//Dynamic Wallpaper
if mouse_x > 425 and mouse_x < 1245 and mouse_y > 91 + (36 * 5) and mouse_y < 128 + (36 * 5) and Category = 0 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		if global.DynamicWP = true then{
			global.DynamicWP = false
		}
		else{
			global.DynamicWP = true
		}
		ini_open(game_save_id + "\\settings.ini")
		ini_write_real("VIDEO","DynamicWP",global.DynamicWP)
		ini_close()
	}
}
//Dynamic Logo
if mouse_x > 425 and mouse_x < 1245 and mouse_y > 91 + (36 * 6) and mouse_y < 128 + (36 * 6) and Category = 0 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		if global.DynamicLogo = true then{
			global.DynamicLogo = false
		}
		else{
			global.DynamicLogo = true
		}
		ini_open(game_save_id + "\\settings.ini")
		ini_write_real("VIDEO","DynamicLogo",global.DynamicLogo)
		ini_close()
	}
}

//Audio settings
//SFX
if mouse_x > 425 and mouse_x < 1245 and mouse_y > 91 + (36 * 0) and mouse_y < 128 + (36 * 0) and Category = 1 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = 1 then{
			global.PlaySFX = 0
		}
		else{
			global.PlaySFX = 1
		}
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		ini_open(game_save_id + "\\settings.ini")
		ini_write_real("AUDIO","PlaySFX",global.PlaySFX)
		ini_close()
	}
}
//BGM
if mouse_x > 425 and mouse_x < 1245 and mouse_y > 91 + (36 * 1) and mouse_y < 128 + (36 * 1) and Category = 1 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		if global.PlayBGM = 1 then{
			global.PlayBGM = 0
		}
		else{
			global.PlayBGM = 1
		}
		ini_open(game_save_id + "\\settings.ini")
		ini_write_real("AUDIO","PlayBGM",global.PlayBGM)
		ini_close()
	}
}

//Language settings
//English
if mouse_x > 425 and mouse_x < 1245 and mouse_y > 91 + (36 * 0) and mouse_y < 128 + (36 * 0) and Category = 2 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		global.Language = 0
		set_language(global.Language)
		ini_open(game_save_id + "\\settings.ini")
		ini_write_real("LANGUAGE","Language",global.Language)
		ini_close()
	}
}
//Português (Brazil)
if mouse_x > 425 and mouse_x < 1245 and mouse_y > 91 + (36 * 1) and mouse_y < 128 + (36 * 1) and Category = 2 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		global.Language = 1
		set_language(global.Language)
		ini_open(game_save_id + "\\settings.ini")
		ini_write_real("LANGUAGE","Language",global.Language)
		ini_close()
	}
}
//Русский (Russian)
if mouse_x > 425 and mouse_x < 1245 and mouse_y > 91 + (36 * 2) and mouse_y < 128 + (36 * 2) and Category = 2 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		global.Language = 2
		set_language(global.Language)
		ini_open(game_save_id + "\\settings.ini")
		ini_write_real("LANGUAGE","Language",global.Language)
		ini_close()
	}
}

//Emulators
//Order
var _nes = 0
var _snes = 1
var _vbam = 2
var _n64 = 3
var _dolphin = 4
var _cemu = 5
//Dolphin
if mouse_x > 425 and mouse_x < 1245 and mouse_y > 91 + (36 * _dolphin) and mouse_y < 128 + (36 * _dolphin) and Category = 3 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		global.DolphinPath = get_open_filename("","")
		ini_open(game_save_id + "\\settings.ini")
		ini_write_string("EMULATOR","Gamecube / Wii",global.DolphinPath)
		ini_close()
	}
}
//Cemu
if mouse_x > 425 and mouse_x < 1245 and mouse_y > 91 + (36 * _cemu) and mouse_y < 128 + (36 * _cemu) and Category = 3 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		global.CemuPath = get_open_filename("","")
		ini_open(game_save_id + "\\settings.ini")
		ini_write_string("EMULATOR","Wii U",global.CemuPath)
		ini_close()
	}
}
//Snes
if mouse_x > 425 and mouse_x < 1245 and mouse_y > 91 + (36 * _snes) and mouse_y < 128 + (36 * _snes) and Category = 3 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		global.Snes9xPath = get_open_filename("","")
		ini_open(game_save_id + "\\settings.ini")
		ini_write_string("EMULATOR","Super Nintendo",global.Snes9xPath)
		ini_close()
	}
}
//N64
if mouse_x > 425 and mouse_x < 1245 and mouse_y > 91 + (36 * _n64) and mouse_y < 128 + (36 * _n64) and Category = 3 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		global.Project64Path = get_open_filename("","")
		ini_open(game_save_id + "\\settings.ini")
		ini_write_string("EMULATOR","Nintendo 64",global.Project64Path)
		ini_close()
	}
}
//NES
if mouse_x > 425 and mouse_x < 1245 and mouse_y > 91 + (36 * _nes) and mouse_y < 128 + (36 * _nes) and Category = 3 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		global.MesenPath = get_open_filename("","")
		ini_open(game_save_id + "\\settings.ini")
		ini_write_string("EMULATOR","Nintendo Entertainment System",global.MesenPath)
		ini_close()
	}
}
//GB / GBC / GBA
if mouse_x > 425 and mouse_x < 1245 and mouse_y > 91 + (36 * _vbam) and mouse_y < 128 + (36 * _vbam) and Category = 3 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		global.VBAMPath = get_open_filename("","")
		ini_open(game_save_id + "\\settings.ini")
		ini_write_string("EMULATOR","Gameboy / Color / Advance",global.VBAMPath)
		ini_close()
	}
}

//System settings
//Discord
if mouse_x > 425 and mouse_x < 1245 and mouse_y > 91 + (36 * 1) and mouse_y < 128 + (36 * 1) and Category = 4 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		if global.Discord = true then{
			global.Discord = false
			discord_disable()
		}
		else{
			global.Discord = true
			discord_enable(global.DiscordID)
		}
		ini_open(game_save_id + "\\settings.ini")
		ini_write_real("SYSTEM","Discord",global.Discord)
		ini_close()
	}
}
//Debug
if mouse_x > 425 and mouse_x < 1245 and mouse_y > 91 + (36 * 2) and mouse_y < 128 + (36 * 2) and Category = 4 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		if global.Debug = true then{
			global.Debug = false
		}
		else{
			global.Debug = true
		}
		ini_open(game_save_id + "\\settings.ini")
		ini_write_real("SYSTEM","Debug",global.Debug)
		ini_close()
	}
}
//Open system folder
if mouse_x > 425 and mouse_x < 1245 and mouse_y > 91 + (36 * 3) and mouse_y < 128 + (36 * 3) and Category = 4 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		execute_shell("explorer.exe " + "\"" + game_save_id + "\"",false)
	}
}

//Escape to go back
if keyboard_check_pressed(vk_escape) then{
	room_goto(room_main)
}