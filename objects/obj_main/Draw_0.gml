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
	draw_sprite(spr_logo,0,global.Logo_x,global.Logo_y)
}

//Game info
if global.DynamicLogo = true then{
	if Cursor > -1 and file_exists(game_save_id + "Games\\" + string(Cursor + 1) + "\\logo.png") then{
		draw_sprite(Logo,0,global.Logo_x,global.Logo_y)
	}
}
else{
	draw_sprite(spr_logo,0,global.Logo_x,global.Logo_y)
}
if Gamename != "" then{
	draw_set_font(font_system_12)
	draw_set_halign(global.Info_Name_ha)
	draw_text_outline(string(Gamename),global.Info_Name_x,global.Info_Name_y,c_white,c_black)
	draw_set_halign(global.Info_Dev_ha)
	draw_text_outline(string(Developer),global.Info_Dev_x,global.Info_Dev_y,c_white,c_black)
	draw_set_halign(global.Info_Date_ha)
	draw_text_outline(string(global.tr_gameinfo[0]) + " " + string(Lastplayed),global.Info_Date_x,global.Info_Date_y,c_white,c_black)
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
draw_sprite(spr_clock,0,global.Clock_x,global.Clock_y)
draw_text_color(global.Clock_x + 25,global.Clock_y - 12,string(_hour) + ":" + string(_minute),col_toptext,col_toptext,col_toptext,col_toptext,1)
//Add game button
if mouse_x > global.TopBtn_Addgame_x - (sprite_get_width(spr_addgame) / 2) and mouse_x < global.TopBtn_Addgame_x - (sprite_get_width(spr_addgame) / 2) + sprite_get_width(spr_addgame) and mouse_y > global.TopBtn_Addgame_y - (sprite_get_height(spr_addgame) / 2) and mouse_y < global.TopBtn_Addgame_y - (sprite_get_height(spr_addgame) / 2) + sprite_get_height(spr_addgame) and Pause = false then{
	if global.TopIconsHighlight = true then{
		gpu_set_fog(true,col_highlight,0,0)
		draw_sprite(spr_addgame,0,global.TopBtn_Addgame_x,global.TopBtn_Addgame_y)
		gpu_set_fog(false,col_highlight,0,0)
	}
	else{
		draw_sprite(spr_addgame,0,global.TopBtn_Addgame_x,global.TopBtn_Addgame_y)
	}
	if global.TopIconsNames = true then{
		draw_set_halign(fa_center)
		draw_set_font(font_system_12)
		draw_text_color(global.TopBtn_Addgame_x,global.TopBtn_Addgame_y + 34,string(global.tr_topbutton[0]),col_highlight,col_highlight,col_highlight,col_highlight,1)
	}
}
else{
	draw_sprite(spr_addgame,0,global.TopBtn_Addgame_x,global.TopBtn_Addgame_y)
}
//Settings button
if mouse_x > global.TopBtn_Settings_x - (sprite_get_width(spr_settings) / 2) and mouse_x < global.TopBtn_Settings_x - (sprite_get_width(spr_settings) / 2) + sprite_get_width(spr_settings) and mouse_y > global.TopBtn_Settings_y - (sprite_get_height(spr_settings) / 2) and mouse_y < global.TopBtn_Settings_y - (sprite_get_height(spr_settings) / 2) + sprite_get_height(spr_settings) and Pause = false then{
	if global.TopIconsHighlight = true then{
		gpu_set_fog(true,col_highlight,0,0)
		draw_sprite(spr_settings,0,global.TopBtn_Settings_x,global.TopBtn_Settings_y)
		gpu_set_fog(false,col_highlight,0,0)
	}
	else{
		draw_sprite(spr_settings,0,global.TopBtn_Settings_x,global.TopBtn_Settings_y)
	}
	if global.TopIconsNames = true then{
		draw_set_halign(fa_center)
		draw_set_font(font_system_12)
		draw_text_color(global.TopBtn_Settings_x,global.TopBtn_Settings_y + 34,string(global.tr_topbutton[1]),col_highlight,col_highlight,col_highlight,col_highlight,1)
	}
}
else{
	draw_sprite(spr_settings,0,global.TopBtn_Settings_x,global.TopBtn_Settings_y)
}
//Shop button
if mouse_x > global.TopBtn_Shop_x - (sprite_get_width(spr_shop) / 2) and mouse_x < global.TopBtn_Shop_x - (sprite_get_width(spr_shop) / 2) + sprite_get_width(spr_shop) and mouse_y > global.TopBtn_Shop_y - (sprite_get_height(spr_shop) / 2) and mouse_y < global.TopBtn_Shop_y - (sprite_get_height(spr_shop) / 2) + sprite_get_height(spr_shop) and Pause = false then{
	if global.TopIconsHighlight = true then{
		gpu_set_fog(true,col_highlight,0,0)
		draw_sprite(spr_shop,0,global.TopBtn_Shop_x,global.TopBtn_Shop_y)
		gpu_set_fog(false,col_highlight,0,0)
	}
	else{
		draw_sprite(spr_shop,0,global.TopBtn_Shop_x,global.TopBtn_Shop_y)
	}
	if global.TopIconsNames = true then{
		draw_set_halign(fa_center)
		draw_set_font(font_system_12)
		draw_text_color(global.TopBtn_Shop_x,global.TopBtn_Shop_y + 34,string(global.tr_topbutton[2]),col_highlight,col_highlight,col_highlight,col_highlight,1)
	}
}
else{
	draw_sprite(spr_shop,0,global.TopBtn_Shop_x,global.TopBtn_Shop_y)
}
//All apps button
if mouse_x > global.TopBtn_Apps_x - (sprite_get_width(spr_allapps) / 2) and mouse_x < global.TopBtn_Apps_x - (sprite_get_width(spr_allapps) / 2) + sprite_get_width(spr_allapps) and mouse_y > global.TopBtn_Apps_y - (sprite_get_height(spr_allapps) / 2) and mouse_y < global.TopBtn_Apps_y - (sprite_get_height(spr_allapps) / 2) + sprite_get_height(spr_allapps) and Pause = false then{
	if global.TopIconsHighlight = true then{
		gpu_set_fog(true,col_highlight,0,0)
		draw_sprite(spr_allapps,0,global.TopBtn_Apps_x,global.TopBtn_Apps_y)
		gpu_set_fog(false,col_highlight,0,0)
	}
	else{
		draw_sprite(spr_allapps,0,global.TopBtn_Apps_x,global.TopBtn_Apps_y)
	}
	if global.TopIconsNames = true then{
		draw_set_halign(fa_center)
		draw_set_font(font_system_12)
		draw_text_color(global.TopBtn_Apps_x,global.TopBtn_Apps_y + 34,string(global.tr_topbutton[3]),col_highlight,col_highlight,col_highlight,col_highlight,1)
	}
}
else{
	draw_sprite(spr_allapps,0,global.TopBtn_Apps_x,global.TopBtn_Apps_y)
}
//News button
if mouse_x > global.TopBtn_News_x - (sprite_get_width(spr_news) / 2) and mouse_x < global.TopBtn_News_x - (sprite_get_width(spr_news) / 2) + sprite_get_width(spr_news) and mouse_y > global.TopBtn_News_y - (sprite_get_height(spr_news) / 2) and mouse_y < global.TopBtn_News_y - (sprite_get_height(spr_news) / 2) + sprite_get_height(spr_news) and Pause = false then{
	if global.TopIconsHighlight = true then{
		gpu_set_fog(true,col_highlight,0,0)
		draw_sprite(spr_news,0,global.TopBtn_News_x,global.TopBtn_News_y)
		gpu_set_fog(false,col_highlight,0,0)
	}
	else{
		draw_sprite(spr_news,0,global.TopBtn_News_x,global.TopBtn_News_y)
	}
	if global.TopIconsNames = true then{
		draw_set_halign(fa_center)
		draw_set_font(font_system_12)
		draw_text_color(global.TopBtn_News_x,global.TopBtn_News_y + 34,string(global.tr_topbutton[4]),col_highlight,col_highlight,col_highlight,col_highlight,1)
	}
}
else{
	draw_sprite(spr_news,0,global.TopBtn_News_x,global.TopBtn_News_y)
}
//Update icon
if LatestVersion = true then{
	draw_sprite(spr_updateicon,0,global.Updateicon_x,global.Updateicon_y)
	if mouse_x > global.Updateicon_x - (sprite_get_width(spr_updateicon) / 2) and mouse_x < global.Updateicon_x - (sprite_get_width(spr_updateicon) / 2) + sprite_get_width(spr_updateicon) and mouse_y > global.Updateicon_y - (sprite_get_height(spr_updateicon) / 2) and mouse_y < global.Updateicon_y - (sprite_get_height(spr_updateicon) / 2) + sprite_get_height(spr_updateicon) and Pause = false then{
		draw_set_halign(fa_center)
		draw_set_font(font_system_12)
		draw_text_color(global.Updateicon_x,global.Updateicon_y + 34,string(global.tr_update[1]),col_highlight,col_highlight,col_highlight,col_highlight,1)
	}
}
else{
	gpu_set_fog(true,col_highlight_update,0,302)
	draw_sprite(spr_updateicon,1,global.Updateicon_x,global.Updateicon_y)
	gpu_set_fog(false,col_highlight_update,0,0)
	if mouse_x > global.Updateicon_x - (sprite_get_width(spr_updateicon) / 2) and mouse_x < global.Updateicon_x - (sprite_get_width(spr_updateicon) / 2) + sprite_get_width(spr_updateicon) and mouse_y > global.Updateicon_y - (sprite_get_height(spr_updateicon) / 2) and mouse_y < global.Updateicon_y - (sprite_get_height(spr_updateicon) / 2) + sprite_get_height(spr_updateicon) and Pause = false then{
		draw_set_halign(fa_center)
		draw_set_font(font_system_12)
		draw_text_color(global.Updateicon_x,global.Updateicon_y + 34,string(global.tr_update[0]) + "\n(" + string(NewVersion) + ")",col_highlight_update,col_highlight_update,col_highlight_update,col_highlight_update,1)
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
draw_surface(_surface, global.Profile_x - 24, global.Profile_y - 24)
surface_free(_surface)
if mouse_x > global.Profile_x - 26 and mouse_x < global.Profile_x + 22 and mouse_y > global.Profile_y - 26 and mouse_y < global.Profile_y + 22 and Pause = false then{
	draw_sprite_ext(spr_profileimage_small_select,0,global.Profile_x - 26,global.Profile_y - 26,1,1,0,col_highlight,1)
}
draw_set_halign(fa_left)
draw_set_font(font_system_14)
draw_text_color(global.Profile_x + 36,global.Profile_y - 12,string(global.Username),col_toptext,col_toptext,col_toptext,col_toptext,1)

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