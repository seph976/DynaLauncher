/// @description Do Stuff

//Select language screen
if Section = 0 then{
	//English
	if mouse_x > 230 and mouse_x < 1050 and mouse_y > 130 + (36 * 0) and mouse_y < 167 + (36 * 0) then{
		if mouse_check_button_pressed(mb_left) then{
			if global.PlaySFX = true then{
				audio_play_sound(sfx_cursor2,1,false)
			}
			global.Language = 0
			set_language(global.Language)
			clicky = true
			Section = 1
		}
	}
	//Português (Brazil)
	if mouse_x > 230 and mouse_x < 1050 and mouse_y > 130 + (36 * 1) and mouse_y < 167 + (36 * 1) then{
		if mouse_check_button_pressed(mb_left) then{
			if global.PlaySFX = true then{
				audio_play_sound(sfx_cursor2,1,false)
			}
			global.Language = 1
			set_language(global.Language)
			clicky = true
			Section = 1
		}
	}
	//Русский (Russian)
	if mouse_x > 230 and mouse_x < 1050 and mouse_y > 130 + (36 * 2) and mouse_y < 167 + (36 * 2) then{
		if mouse_check_button_pressed(mb_left) then{
			if global.PlaySFX = true then{
				audio_play_sound(sfx_cursor2,1,false)
			}
			global.Language = 2
			set_language(global.Language)
			clicky = true
			Section = 1
		}
	}
}

//Profile setup screen
if Section = 1 then{
	//Profile picture
	if mouse_x > 540 and mouse_x < 740 and mouse_y > 126 and mouse_y < 326 then{
		if mouse_check_button_pressed(mb_left) and clicky = false then{
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
	if mouse_x > 640 - (string_width(global.Username) / 2) and mouse_x < 640 + (string_width(global.Username) / 2) and mouse_y > 330 and mouse_y < 330 + string_height(global.Username) then{
		if mouse_check_button_pressed(mb_left) and clicky = false then{
			if global.PlaySFX = true then{
				audio_play_sound(sfx_cursor2,1,false)
			}
			global.Username = get_string(string(global.tr_error[5]),global.Username)
			if global.Username = "" then{
				global.Username = "Username"
			}
		}
	}
	//Continue
	if mouse_x > 230 and mouse_x < 1050 and mouse_y > 130 + (36 * 12) and mouse_y < 167 + (36 * 12) then{
		if mouse_check_button_pressed(mb_left) and clicky = false then{
			if global.PlaySFX = true then{
				audio_play_sound(sfx_cursor2,1,false)
			}
			ini_open(game_save_id + "\\user.ini")
			ini_write_string("PROFILE","Username",global.Username)
			ini_close()
			room_goto(room_main)
		}
	}
}

//Reset clicky
if clicky = true then{
	clicky = false
}