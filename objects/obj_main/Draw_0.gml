/// @description Draw Stuff

//Setup theme color
if global.Theme = 0 then{
	draw_set_color(col_tdark)
}
else if global.Theme = 1 then{
	draw_set_color(col_tlight)
}

//Logo
if Cursor = -1 or !file_exists(game_save_id + "Games\\" + string(Cursor + 1) + "\\logo.png") then{
	draw_sprite(spr_logo,0,room_width / 2,189)
}

//Game info
if global.DynamicLogo = true then{
	if Cursor > -1 and file_exists(game_save_id + "Games\\" + string(Cursor + 1) + "\\logo.png") then{
		draw_sprite(Logo,0,room_width / 2,63)
	}
}
else{
	draw_sprite(spr_logo,0,room_width / 2,189)
}
if Gamename != "" then{
	draw_set_halign(fa_left)
	draw_set_font(font_system_12)
	draw_text_outline(string(Gamename),5,70,c_white,c_black)
	draw_text_outline(string(Developer),5,90,c_white,c_black)
	draw_text_outline(string(global.tr_gameinfo[0]) + " " + string(Lastplayed),5,110,c_white,c_black)
}

//Game icons
for (var i = 0; i < 12; ++i) {
	draw_sprite(spr_gamebox,0,110 + (i * 212) - (Scroll * 212),477)
}
for (var i = 0; i < ds_list_size(Icons); ++i) {
	var _icon = ds_list_find_value(Icons,i)
	if _icon != -1 then{
		draw_sprite_stretched(_icon,0,12 + (i * 212) - (Scroll * 212),336,196,282)
	}
}


//Selected game icon highlight and timer
if Cursor > -1 then{
	draw_sprite_ext(spr_gameselector,0,110 + (Cursor * 212) - (Scroll * 212),477,1,1,0,col_highlight,1)
	draw_set_halign(fa_center)
	draw_set_font(font_system_14)
	if Gamename != "" and Timertype != 0 then{
		if Hoursplayed < 10 then{
			var _hours = "0" + string(Hoursplayed)
		}
		else{
			var _hours = Hoursplayed
		}
		if Minutesplayed < 10 then{
			var _minutes = "0" + string(Minutesplayed)
		}
		else{
			var _minutes = Minutesplayed
		}
		if Secondsplayed < 10 then{
			var _seconds = "0" + string(Secondsplayed)
		}
		else{
			var _seconds = Secondsplayed
		}
		var _time = string(_hours) + ":" + string(_minutes) + ":" + string(_seconds)
		draw_text_outline(_time,110 + (Cursor * 212) - (Scroll * 212),305,col_highlight,c_black)
		draw_sprite_ext(spr_tinyclock,0,110 + (Cursor * 212) - (Scroll * 212) - (string_width(_time) / 2),305,1,1,0,col_highlight,1)
	}
}

//Top stuff
draw_sprite(spr_topbar,0,0,0)
draw_set_font(font_clock)
draw_set_halign(fa_left)
var _hour = current_hour
var _minute = current_minute
if _hour < 10 then{
	_hour = "0" + string(_hour)
}
if _minute < 10 then{
	_minute = "0" + string(_minute)
}
draw_sprite(spr_clock,0,1175,32)
draw_text_color(1200,20,string(_hour) + ":" + string(_minute),col_toptext,col_toptext,col_toptext,col_toptext,1)
var _menux = 497
//Add game button
if mouse_x > _menux + (0 * 60) and mouse_x < _menux + 47 + (0 * 60) and mouse_y > 8 and mouse_y < 55 and Pause = false then{
	if global.TopIconsHighlight = true then{
		gpu_set_fog(true,col_highlight,0,0)
		draw_sprite(spr_addgame,0,_menux + (0 * 60),8)
		gpu_set_fog(false,col_highlight,0,0)
	}
	else{
		draw_sprite(spr_addgame,0,_menux + (0 * 60),8)
	}
	if global.TopIconsNames = true then{
		draw_set_halign(fa_center)
		draw_set_font(font_system_12)
		draw_text_color(_menux + 23 + (0 * 60),65,string(global.tr_topbutton[0]),col_highlight,col_highlight,col_highlight,col_highlight,1)
	}
}
else{
	draw_sprite(spr_addgame,0,_menux + (0 * 60),8)
}
//Options button
if mouse_x > _menux + (1 * 60) and mouse_x < _menux + 47 + (1 * 60) and mouse_y > 8 and mouse_y < 55 and Pause = false then{
	if global.TopIconsHighlight = true then{
		gpu_set_fog(true,col_highlight,0,0)
		draw_sprite(spr_settings,0,_menux + (1 * 60),8)
		gpu_set_fog(false,col_highlight,0,0)
	}
	else{
		draw_sprite(spr_settings,0,_menux + (1 * 60),8)
	}
	if global.TopIconsNames = true then{
		draw_set_halign(fa_center)
		draw_set_font(font_system_12)
		draw_text_color(_menux + 23 + (1 * 60),65,string(global.tr_topbutton[1]),col_highlight,col_highlight,col_highlight,col_highlight,1)
	}
}
else{
	draw_sprite(spr_settings,0,_menux + (1 * 60),8)
}
//Shop button
if mouse_x > _menux + (2 * 60) and mouse_x < _menux + 47 + (2 * 60) and mouse_y > 8 and mouse_y < 55 and Pause = false then{
	if global.TopIconsHighlight = true then{
		gpu_set_fog(true,col_highlight,0,0)
		draw_sprite(spr_shop,0,_menux + (2 * 60),8)
		gpu_set_fog(false,col_highlight,0,0)
	}
	else{
		draw_sprite(spr_shop,0,_menux + (2 * 60),8)
	}
	if global.TopIconsNames = true then{
		draw_set_halign(fa_center)
		draw_set_font(font_system_12)
		draw_text_color(_menux + 23 + (2 * 60),65,string(global.tr_topbutton[2]),col_highlight,col_highlight,col_highlight,col_highlight,1)
	}
}
else{
	draw_sprite(spr_shop,0,_menux + (2 * 60),8)
}
//All apps button
if mouse_x > _menux + (3 * 60) and mouse_x < _menux + 47 + (3 * 60) and mouse_y > 8 and mouse_y < 55 and Pause = false then{
	if global.TopIconsHighlight = true then{
		gpu_set_fog(true,col_highlight,0,0)
		draw_sprite(spr_allapps,0,_menux + (3 * 60),8)
		gpu_set_fog(false,col_highlight,0,0)
	}
	else{
		draw_sprite(spr_allapps,0,_menux + (3 * 60),8)
	}
	if global.TopIconsNames = true then{
		draw_set_halign(fa_center)
		draw_set_font(font_system_12)
		draw_text_color(_menux + 23 + (3 * 60),65,string(global.tr_topbutton[3]),col_highlight,col_highlight,col_highlight,col_highlight,1)
	}
}
else{
	draw_sprite(spr_allapps,0,_menux + (3 * 60),8)
}
//News button
if mouse_x > _menux + (4 * 60) and mouse_x < _menux + 47 + (4 * 60) and mouse_y > 8 and mouse_y < 55 and Pause = false then{
	if global.TopIconsHighlight = true then{
		gpu_set_fog(true,col_highlight,0,0)
		draw_sprite(spr_news,0,_menux + (4 * 60),8)
		gpu_set_fog(false,col_highlight,0,0)
	}
	else{
		draw_sprite(spr_news,0,_menux + (4 * 60),8)
	}
	if global.TopIconsNames = true then{
		draw_set_halign(fa_center)
		draw_set_font(font_system_12)
		draw_text_color(_menux + 23 + (4 * 60),65,string(global.tr_topbutton[4]),col_highlight,col_highlight,col_highlight,col_highlight,1)
	}
}
else{
	draw_sprite(spr_news,0,_menux + (4 * 60),8)
}
//Update icon
if LatestVersion = true then{
	draw_sprite(spr_updateicon,0,1110,32)
	if mouse_x > 1092 and mouse_x < 1092 + 36 and mouse_y > 19 and mouse_y < 19 + 26 and Pause = false then{
		draw_set_halign(fa_center)
		draw_set_font(font_system_12)
		draw_text_color(1110,65,string(global.tr_update[1]),col_highlight,col_highlight,col_highlight,col_highlight,1)
	}
}
else{
	gpu_set_fog(true,col_highlight_update,0,302)
	draw_sprite(spr_updateicon,1,1110,32)
	gpu_set_fog(false,col_highlight_update,0,0)
	if mouse_x > 1092 and mouse_x < 1092 + 36 and mouse_y > 19 and mouse_y < 19 + 26 and Pause = false then{
		draw_set_halign(fa_center)
		draw_set_font(font_system_12)
		draw_text_color(1110,65,string(global.tr_update[0]) + "\n(" + string(NewVersion) + ")",col_highlight_update,col_highlight_update,col_highlight_update,col_highlight_update,1)
	}
}
//Profile
var _surface = -1
if !surface_exists(_surface) then{
	_surface = surface_create(48, 48)
}
surface_set_target(_surface)
draw_sprite(spr_profileimage_small, 0, sprite_xoffset, sprite_yoffset)
gpu_set_colorwriteenable(1, 1, 1, 0)
if sprite_exists(spr_profileimage_default) then{
	if global.Profilepic != undefined then{
		draw_sprite_stretched(global.Profilepic, 0, 0, 0, 48, 48)
	}
	else{
		draw_sprite_stretched(spr_profileimage_default, 0, 0, 0, 48, 48)
	}
}
gpu_set_colorwriteenable(1, 1, 1, 1)
surface_reset_target()
draw_surface(_surface, 10, 8)
surface_free(_surface)
if mouse_x > 8 and mouse_x < 56 and mouse_y > 6 and mouse_y < 54 and Pause = false then{
	draw_sprite_ext(spr_profileimage_small_select,0,8,6,1,1,0,col_highlight,1)
}
draw_set_halign(fa_left)
draw_set_font(font_system_14)
draw_text_color(70,20,string(global.Username),col_toptext,col_toptext,col_toptext,col_toptext,1)

//Bottom stuff
draw_line(20,670,1260,670)
draw_sprite(spr_keyboard,global.Theme,50,695)
draw_set_halign(fa_left)
draw_set_font(font_system_14)
draw_text(90,683,string(global.tr_controller[0]) + "   " + string(global.tr_controller[2]) + "   " + string(global.tr_controller[3]))

//Game running info
if Pause = true and Cursor != -1 then{
	draw_set_alpha(0.8)
	draw_rectangle_color(0,0,1280,720,c_black,c_black,c_black,c_black,false)
	draw_set_alpha(1)
	draw_set_halign(fa_center)
	draw_set_font(font_system_14)
	if Timertype = 1 then{
		draw_text_outline(string(global.tr_running[0]),640,300,c_white,c_black)
	}
	else if Timertype = 2 then{
		draw_text_outline(string(global.tr_running[1]),640,300,col_highlight,c_black)
	}
}