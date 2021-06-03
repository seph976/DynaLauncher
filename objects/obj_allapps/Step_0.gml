/// @description Do Stuff

//Mouse wheel scrolling games list
if mouse_wheel_up() then{
	if Scroll < 0 then{
		Scroll += 1
	}
}
else if mouse_wheel_down() then{
	if Scroll > MaxScroll then{
		Scroll -= 1
	}
}

//Game icons
var _hor = 0
var _row = 0
for (var i = 0; i < 10; ++i) {
	if _hor = 5 then{
		_hor = 0
		_row += 1
	}
	if mouse_x > 34 + (_hor * 212) and mouse_x < 246 + (_hor * 212) and mouse_y > 67 + (_row * 299) and mouse_y < 365 + (_row * 299) then{
		if mouse_check_button_pressed(mb_left) and global.Games > _hor + (_row * 5) + (Scroll * -5) then{
			if Cursor = _hor + (_row * 5) + (Scroll * -5) then{
				if global.PlaySFX = true then{
					audio_play_sound(sfx_startgame,1,false)
				}
				Startgame = true
				room_goto(room_main)
			}
			else{
				if Cursor != _hor + (_row * 5) + (Scroll * -5) then{
					if global.PlaySFX = true then{
						audio_play_sound(sfx_cursor,1,false)
					}
					Cursor = _hor + (_row * 5) + (Scroll * -5)
					event_user(1)
				}
			}
		}
	}
	_hor += 1
}

//Start game event
if room = room_main then{
	with obj_main do{
		Cursor = obj_allapps.Cursor
		event_user(1)
		event_user(2)
	}
	for (var i = 0; i < ds_list_size(Icons); ++i) {
		sprite_delete(ds_list_find_value(Icons,i))
	}
	instance_destroy()
}

//Edit game ini
if keyboard_check_pressed(ord("E")) and Cursor > -1 then{
	if global.PlaySFX = true then{
		audio_play_sound(sfx_menu,1,false)
	}
	execute_shell("notepad.exe " + "\"" + game_save_id + "Games\\" + string(Cursor + 1) + "\\gameinfo.ini" + "\"",false)
}

//Delete game
if keyboard_check_pressed(vk_delete) and Cursor > -1 then{
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
		for (var i = 0; i < (global.Games + 1) - Cursor + 1; ++i) {
		    directory_rename_ue(game_save_id + "Games\\" + string(Cursor + 2 + i),game_save_id + "\\Games\\" + string(Cursor + 2 + i - 1))
		}
		//DELETE SOUND GOES HERE
		//Update games list
		event_user(0)
		Cursor = -1
		//Update discord
		if global.Discord = true then{
			discord_set_home()
		}
	}
	else{
		//Do nothing
	}
}

//Escape to go back
if keyboard_check_pressed(vk_escape) then{
	for (var i = 0; i < ds_list_size(Icons); ++i) {
		sprite_delete(ds_list_find_value(Icons,i))
	}
	room_goto(room_main)
	instance_destroy()
}