/// @description Do Stuff

//Mouse wheel scrolling games list
if mouse_wheel_up() and Pause = false then{
	if Scroll < MaxScroll then{
		Scroll += 1
	}
}
else if mouse_wheel_down() and Pause = false then{
	if Scroll > 0 then{
		Scroll -= 1
	}
}

//Stop manual game timer
if Pause = true and Timertype = 2 then{
	if mouse_check_button_pressed(mb_left) then{
		if show_question("Stop tracking game timer?"){
			Secondsplayed += round((current_time - Starttime) / 1000)
			while (Secondsplayed > 59) {
				Minutesplayed += 1
				Secondsplayed -= 60
			}
			while (Minutesplayed > 59) {
				Hoursplayed += 1
				Minutesplayed -= 60
			}
			ini_open(game_save_id + "Games\\" + string(Cursor + 1) + "\\gameinfo.ini")
			ini_write_real("STATS","Hoursplayed",Hoursplayed)
			ini_write_real("STATS","Minutesplayed",Minutesplayed)
			ini_write_real("STATS","Secondsplayed",Secondsplayed)
			ini_close()
			if global.PlayBGM = true then{
				var _music = audio_play_sound(Music,1,true)
				audio_sound_gain(_music,0,0)
				audio_sound_gain(_music,0.5,2000)
			}
			if global.Discord = true then{
				discord_set_home()
			}
			game_set_speed(global.FPS,gamespeed_fps)
			Pause = false
		}
	}
}

//Add game button
if mouse_x > global.TopBtn_Addgame_x - (sprite_get_width(spr_addgame) / 2) and mouse_x < global.TopBtn_Addgame_x - (sprite_get_width(spr_addgame) / 2) + sprite_get_width(spr_addgame) and mouse_y > global.TopBtn_Addgame_y - (sprite_get_height(spr_addgame) / 2) and mouse_y < global.TopBtn_Addgame_y - (sprite_get_height(spr_addgame) / 2) + sprite_get_height(spr_addgame) then{
	if mouse_check_button_pressed(mb_left) and Pause = false then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_menu,1,false)
		}
		memory_clean()
		global.Theme = 1
		room_goto(room_addgame)
	}
}

//Options button
if mouse_x > global.TopBtn_Settings_x - (sprite_get_width(spr_settings) / 2) and mouse_x < global.TopBtn_Settings_x - (sprite_get_width(spr_settings) / 2) + sprite_get_width(spr_settings) and mouse_y > global.TopBtn_Settings_y - (sprite_get_height(spr_settings) / 2) and mouse_y < global.TopBtn_Settings_y - (sprite_get_height(spr_settings) / 2) + sprite_get_height(spr_settings) then{
	if mouse_check_button_pressed(mb_left) and Pause = false then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_options,1,false)
		}
		memory_clean()
		global.Theme = 1
		room_goto(room_options)
	}
}

//Shop button
if mouse_x > global.TopBtn_Shop_x - (sprite_get_width(spr_shop) / 2) and mouse_x < global.TopBtn_Shop_x - (sprite_get_width(spr_shop) / 2) + sprite_get_width(spr_shop) and mouse_y > global.TopBtn_Shop_y - (sprite_get_height(spr_shop) / 2) and mouse_y < global.TopBtn_Shop_y - (sprite_get_height(spr_shop) / 2) + sprite_get_height(spr_shop) then{
	if mouse_check_button_pressed(mb_left) and Pause = false then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_alert,1,false)
		}
		show_message(string(global.tr_error[0]))
	}
}

//All apps button
if mouse_x > global.TopBtn_Apps_x - (sprite_get_width(spr_allapps) / 2) and mouse_x < global.TopBtn_Apps_x - (sprite_get_width(spr_allapps) / 2) + sprite_get_width(spr_allapps) and mouse_y > global.TopBtn_Apps_y - (sprite_get_height(spr_allapps) / 2) and mouse_y < global.TopBtn_Apps_y - (sprite_get_height(spr_allapps) / 2) + sprite_get_height(spr_allapps) then{
	if mouse_check_button_pressed(mb_left) and Pause = false then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_menu,1,false)
		}
		memory_clean()
		global.Theme = 1
		room_goto(room_allapps)
	}
}

//News button
if mouse_x > global.TopBtn_News_x - (sprite_get_width(spr_news) / 2) and mouse_x < global.TopBtn_News_x - (sprite_get_width(spr_news) / 2) + sprite_get_width(spr_news) and mouse_y > global.TopBtn_News_y - (sprite_get_height(spr_news) / 2) and mouse_y < global.TopBtn_News_y - (sprite_get_height(spr_news) / 2) + sprite_get_height(spr_news) then{
	if mouse_check_button_pressed(mb_left) and Pause = false then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_menu,1,false)
		}
		memory_clean()
		global.Theme = 1
		room_goto(room_news)
	}
}

//Go to update download
if LatestVersion = false then{
	if mouse_x > global.Updateicon_x - (sprite_get_width(spr_updateicon) / 2) and mouse_x < global.Updateicon_x - (sprite_get_width(spr_updateicon) / 2) + sprite_get_width(spr_updateicon) and mouse_y > global.Updateicon_y - (sprite_get_height(spr_updateicon) / 2) and mouse_y < global.Updateicon_y - (sprite_get_height(spr_updateicon) / 2) + sprite_get_height(spr_updateicon) then{
		if mouse_check_button_pressed(mb_left) and Pause = false then{
			url_open(global.LatestDownload)
		}
	}
}

//Profile icon
if mouse_x > global.Profile_x - 26 and mouse_x < global.Profile_x + 22 and mouse_y > global.Profile_y - 26 and mouse_y < global.Profile_y + 22 then{
	if mouse_check_button_pressed(mb_left) and Pause = false then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_menu,1,false)
		}
		memory_clean()
		global.Theme = 1
		room_goto(room_profile)
	}
}

//Game icons
if mouse_x > 4 + (0 * 212) and mouse_x < 216 + (0 * 212) and mouse_y > 328 and mouse_y < 626 then{
	if mouse_check_button_pressed(mb_left) and Pause = false then{
		if Cursor = 0 + Scroll and Gamename != "" then{
			if global.PlaySFX = true then{
				audio_play_sound(sfx_startgame,1,false)
			}
			event_user(2)
		}
		else{
			if Cursor != 0 + Scroll then{
				if global.PlaySFX = true then{
					audio_play_sound(sfx_cursor,1,false)
				}
				Cursor = 0 + Scroll
				event_user(1)
			}
		}
	}
}
else if mouse_x > 4 + (1 * 212) and mouse_x < 216 + (1 * 212) and mouse_y > 328 and mouse_y < 626 then{
	if mouse_check_button_pressed(mb_left) and Pause = false then{
		if Cursor = 1 + Scroll and Gamename != "" then{
			if global.PlaySFX = true then{
				audio_play_sound(sfx_startgame,1,false)
			}
			event_user(2)
		}
		else{
			if Cursor != 1 + Scroll then{
				if global.PlaySFX = true then{
					audio_play_sound(sfx_cursor,1,false)
				}
				Cursor = 1 + Scroll
				event_user(1)
			}
		}
	}
}
else if mouse_x > 4 + (2 * 212) and mouse_x < 216 + (2 * 212) and mouse_y > 328 and mouse_y < 626 then{
	if mouse_check_button_pressed(mb_left) and Pause = false then{
		if Cursor = 2 + Scroll and Gamename != "" then{
			if global.PlaySFX = true then{
				audio_play_sound(sfx_startgame,1,false)
			}
			event_user(2)
		}
		else{
			if Cursor != 2 + Scroll then{
				if global.PlaySFX = true then{
					audio_play_sound(sfx_cursor,1,false)
				}
				Cursor = 2 + Scroll
				event_user(1)
			}
		}
	}
}
else if mouse_x > 4 + (3 * 212) and mouse_x < 216 + (3 * 212) and mouse_y > 328 and mouse_y < 626 then{
	if mouse_check_button_pressed(mb_left) and Pause = false then{
		if Cursor = 3 + Scroll and Gamename != "" then{
			if global.PlaySFX = true then{
				audio_play_sound(sfx_startgame,1,false)
			}
			event_user(2)
		}
		else{
			if Cursor != 3 + Scroll then{
				if global.PlaySFX = true then{
					audio_play_sound(sfx_cursor,1,false)
				}
				Cursor = 3 + Scroll
				event_user(1)
			}
		}
	}
}
else if mouse_x > 4 + (4 * 212) and mouse_x < 216 + (4 * 212) and mouse_y > 328 and mouse_y < 626 then{
	if mouse_check_button_pressed(mb_left) and Pause = false then{
		if Cursor = 4 + Scroll and Gamename != "" then{
			if global.PlaySFX = true then{
				audio_play_sound(sfx_startgame,1,false)
			}
			event_user(2)
		}
		else{
			if Cursor != 4 + Scroll then{
				if global.PlaySFX = true then{
					audio_play_sound(sfx_cursor,1,false)
				}
				Cursor = 4 + Scroll
				event_user(1)
			}
		}
	}
}
else if mouse_x > 4 + (5 * 212) and mouse_x < 216 + (5 * 212) and mouse_y > 328 and mouse_y < 626 then{
	if mouse_check_button_pressed(mb_left) and Pause = false then{
		if Cursor = 5 + Scroll and Gamename != "" then{
			if global.PlaySFX = true then{
				audio_play_sound(sfx_startgame,1,false)
			}
			event_user(2)
		}
		else{
			if Cursor != 5 + Scroll then{
				if global.PlaySFX = true then{
					audio_play_sound(sfx_cursor,1,false)
				}
				Cursor = 5 + Scroll
				event_user(1)
			}
		}
	}
}
else{
	if mouse_check_button_pressed(mb_left) and Cursor != -1 and Pause = false then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor,1,false)
		}
		Cursor = -1
		event_user(1)
	}
}

//Edit game ini
if keyboard_check_pressed(ord("E")) and Cursor > -1 and Gamename != "" and Pause = false then{
	if global.PlaySFX = true then{
		audio_play_sound(sfx_menu,1,false)
	}
	execute_shell("notepad.exe " + "\"" + game_save_id + "Games\\" + string(Cursor + 1) + "\\gameinfo.ini" + "\"",false)
	Cursor = -1
	event_user(1)
}

//Delete game
if keyboard_check_pressed(vk_delete) and Cursor > -1 and Gamename != "" and Pause = false then{
	if global.PlaySFX = true then{
		audio_play_sound(sfx_alert,1,false)
	}
	//Confirmation box
	if show_question("Delete " + string(Gamename) + "?"){
		//Delete game directory
		file_delete_ue(game_save_id + "Games\\" + string(Cursor + 1) + "\\gameinfo.ini")
		file_delete_ue(game_save_id + "Games\\" + string(Cursor + 1) + "\\gameicon.png")
		file_delete_ue(game_save_id + "Games\\" + string(Cursor + 1) + "\\logo.png")
		file_delete_ue(game_save_id + "Games\\" + string(Cursor + 1) + "\\wallpaper.png")
		file_delete_ue(game_save_id + "Games\\" + string(Cursor + 1) + "\\music.ogg")
		directory_delete_ue(game_save_id + "Games\\" + string(Cursor + 1))
		//Change games amount
		global.Games -= 1
		ini_open(game_save_id + "Games\\games.ini")
		ini_write_real("GAMES","Amount",global.Games)
		ini_close()
		//Rearrange icons
		for (var i = 0; i < (global.Games + 1) - (Cursor + 1); ++i) {
		    directory_rename_ue(game_save_id + "Games\\" + string(Cursor + 2 + i),game_save_id + "\\Games\\" + string(Cursor + 2 + i - 1))
		}
		//DELETE SOUND GOES HERE
		//Update games list
		event_user(0)
		//Update game info
		event_user(1)
		//Update discord
		if global.Discord = true then{
			discord_set_home()
		}
	}
	else{
		//Do nothing
	}
}