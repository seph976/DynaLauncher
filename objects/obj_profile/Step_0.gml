/// @description Do Stuff

//Escape to go back
if keyboard_check_pressed(vk_escape) then{
	room_goto(room_main)
}

//Categories
if mouse_x > 10 and mouse_x < 384 and mouse_y > 360 + (80 * 0) and mouse_y < 435 + (80 * 0) and Category != 0 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		Category = 0
	}
}
if mouse_x > 10 and mouse_x < 384 and mouse_y > 360 + (80 * 1) and mouse_y < 435 + (80 * 1) and Category != 1 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		Category = 1
	}
}
if mouse_x > 10 and mouse_x < 384 and mouse_y > 360 + (80 * 2) and mouse_y < 435 + (80 * 2) and Category != 2 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		Category = 2
	}
}

//Profile picture
if mouse_x > 96 and mouse_x < 296 and mouse_y > 96 and mouse_y < 296 then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		var _pic = get_open_filename(".png|*.png","")
		if _pic != "" then{
			if global.Profilepic != undefined then{
				sprite_delete(global.Profilepic)
				file_delete(game_save_id + "\\profile.png")
				global.Profilepic = undefined
			}
			if _pic != "" then{
				file_copy(_pic,game_save_id + "\\profile.png")
				global.Profilepic = sprite_add(_pic,0,false,false,0,0)
			}
		}
	}
}
//Profile name
draw_set_halign(fa_center)
draw_set_font(font_system_20)
if mouse_x > 196 - (string_width(global.Username) / 2) and mouse_x < 196 + (string_width(global.Username) / 2) and mouse_y > 300 and mouse_y < 300 + string_height(global.Username) then{
	if mouse_check_button_pressed(mb_left) then{
		if global.PlaySFX = true then{
			audio_play_sound(sfx_cursor2,1,false)
		}
		var _name = get_string(string(global.tr_error[5]),global.Username)
		if _name != "" then{
			global.Username = _name
			ini_open(game_save_id + "\\user.ini")
			ini_write_string("PROFILE","Username",global.Username)
			ini_close()
		}
	}
}