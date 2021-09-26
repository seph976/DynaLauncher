/// @description Draw Stuff

//Setup theme color
if global.Theme = 0 then{
	draw_set_color(col_tdark)
}
else if global.Theme = 1 then{
	draw_set_color(col_tlight)
}

//Game icon
draw_sprite(spr_gamebox,0,1050,250)
draw_set_halign(fa_center)
draw_set_font(font_system_14)
draw_text(1050,400,"196 x 282")
if tempicon != undefined and tempicon != -1 then{
	draw_sprite_stretched(tempicon,0,952,109,196,282)
}

//Logo
if templogo != undefined and templogo != -1 then{
	draw_sprite(templogo,0,1050,430)
}

//General game setup
if Section = 0 then{
	//Hover
	draw_sprite(spr_optionsbox,0,25,91 + (1 * 36))
	draw_sprite(spr_optionsbox,0,25,91 + (2 * 36))
	draw_sprite(spr_optionsbox,0,25,91 + (3 * 36))
	draw_sprite(spr_optionsbox,0,25,91 + (4 * 36))
	draw_sprite(spr_optionsbox,0,25,91 + (5 * 36))
	draw_sprite(spr_optionsbox,0,25,91 + (6 * 36))
	draw_sprite(spr_optionsbox,0,25,91 + (7 * 36))
	draw_sprite(spr_optionsbox,0,25,91 + (8 * 36))
	draw_sprite(spr_optionsbox,0,25,91 + (13 * 36))
	draw_sprite(spr_optionsbox,0,25,91 + (14 * 36))
	if mouse_x > 25 and mouse_x < 845 and mouse_y > 91 + (36 * 1) and mouse_y < 128 + (36 * 1) then{
		draw_sprite(spr_optionsbox,1,25,91 + (36 * 1))
		draw_sprite_ext(spr_optionsbox,2,25,91 + (36 * 1),1,1,0,col_highlight,1)
	}
	if mouse_x > 25 and mouse_x < 845 and mouse_y > 91 + (36 * 2) and mouse_y < 128 + (36 * 2) then{
		draw_sprite(spr_optionsbox,1,25,91 + (36 * 2))
		draw_sprite_ext(spr_optionsbox,2,25,91 + (36 * 2),1,1,0,col_highlight,1)
	}
	if mouse_x > 25 and mouse_x < 845 and mouse_y > 91 + (36 * 3) and mouse_y < 128 + (36 * 3) then{
		draw_sprite(spr_optionsbox,1,25,91 + (36 * 3))
		draw_sprite_ext(spr_optionsbox,2,25,91 + (36 * 3),1,1,0,col_highlight,1)
	}
	if mouse_x > 25 and mouse_x < 845 and mouse_y > 91 + (36 * 4) and mouse_y < 128 + (36 * 4) then{
		draw_sprite(spr_optionsbox,1,25,91 + (36 * 4))
		draw_sprite_ext(spr_optionsbox,2,25,91 + (36 * 4),1,1,0,col_highlight,1)
	}
	if mouse_x > 25 and mouse_x < 845 and mouse_y > 91 + (36 * 5) and mouse_y < 128 + (36 * 5) then{
		draw_sprite(spr_optionsbox,1,25,91 + (36 * 5))
		draw_sprite_ext(spr_optionsbox,2,25,91 + (36 * 5),1,1,0,col_highlight,1)
	}
	if mouse_x > 25 and mouse_x < 845 and mouse_y > 91 + (36 * 6) and mouse_y < 128 + (36 * 6) then{
		draw_sprite(spr_optionsbox,1,25,91 + (36 * 6))
		draw_sprite_ext(spr_optionsbox,2,25,91 + (36 * 6),1,1,0,col_highlight,1)
	}
	if mouse_x > 25 and mouse_x < 845 and mouse_y > 91 + (36 * 7) and mouse_y < 128 + (36 * 7) then{
		draw_sprite(spr_optionsbox,1,25,91 + (36 * 7))
		draw_sprite_ext(spr_optionsbox,2,25,91 + (36 * 7),1,1,0,col_highlight,1)
	}
	if mouse_x > 25 and mouse_x < 845 and mouse_y > 91 + (36 * 8) and mouse_y < 128 + (36 * 8) then{
		draw_sprite(spr_optionsbox,1,25,91 + (36 * 8))
		draw_sprite_ext(spr_optionsbox,2,25,91 + (36 * 8),1,1,0,col_highlight,1)
	}
	if mouse_x > 25 and mouse_x < 845 and mouse_y > 91 + (36 * 13) and mouse_y < 128 + (36 * 13) then{
		draw_sprite(spr_optionsbox,1,25,91 + (36 * 13))
		draw_sprite_ext(spr_optionsbox,2,25,91 + (36 * 13),1,1,0,col_highlight,1)
	}
	if mouse_x > 25 and mouse_x < 845 and mouse_y > 91 + (36 * 14) and mouse_y < 128 + (36 * 14) then{
		draw_sprite(spr_optionsbox,1,25,91 + (36 * 14))
		draw_sprite_ext(spr_optionsbox,2,25,91 + (36 * 14),1,1,0,col_highlight,1)
	}
	//Options
	draw_set_halign(fa_left)
	draw_set_font(font_system_14)
	draw_text(40,98 + (0 * 36),string(global.tr_addgeneral[0]))
	draw_text(40,98 + (1 * 36),string(global.tr_addgeneral[1]))
	draw_text(40,98 + (2 * 36),string(global.tr_addgeneral[2]))
	draw_text(40,98 + (3 * 36),string(global.tr_addgeneral[3]))
	draw_text(40,98 + (4 * 36),string(global.tr_addgeneral[4]))
	draw_text(40,98 + (5 * 36),string(global.tr_addgeneral[5]))
	draw_text(40,98 + (6 * 36),string(global.tr_addgeneral[6]))
	draw_text(40,98 + (7 * 36),string(global.tr_addgeneral[7]))
	draw_text(40,98 + (8 * 36),string(global.tr_addgeneral[8]))
	draw_text(40,98 + (13 * 36),string(global.tr_addgeneral[9]))
	draw_text(40,98 + (14 * 36),string(global.tr_addgeneral[10]))
	//Values
	draw_set_halign(fa_right)
	if Gamename != "" then{
		draw_text(830,98 + (1 * 36),string(Gamename))
	}
	else{
		draw_text(830,98 + (1 * 36),string(global.tr_general[3]))
	}
	if Developer != "" then{
		draw_text(830,98 + (2 * 36),string(Developer))
	}
	else{
		draw_text(830,98 + (2 * 36),string(global.tr_general[3]))
	}
	if Timertype = 0 then{
		draw_text(830,98 + (3 * 36),string(global.tr_timer[0]))
	}
	else if Timertype = 1 then{
		draw_text(830,98 + (3 * 36),string(global.tr_timer[1]))
	}
	else if Timertype = 2 then{
		draw_text(830,98 + (3 * 36),string(global.tr_timer[2]))
	}
	if IconLocation != "" then{
		draw_text(830,98 + (4 * 36),string(global.tr_general[4]))
	}
	else{
		draw_text(830,98 + (4 * 36),string(global.tr_general[3]))
	}
	if LogoLocation != "" then{
		draw_text(830,98 + (5 * 36),string(global.tr_general[4]))
	}
	else{
		draw_text(830,98 + (5 * 36),string(global.tr_general[3]))
	}
	if MusicLocation != "" then{
		draw_text(830,98 + (6 * 36),string(global.tr_general[4]))
	}
	else{
		draw_text(830,98 + (6 * 36),string(global.tr_general[3]))
	}
	if Emulator != "" then{
		draw_text(830,98 + (7 * 36),string(Emulator))
	}
	else{
		draw_text(830,98 + (7 * 36),string(global.tr_general[3]))
	}
	if Location != "" then{
		draw_text(830,98 + (8 * 36),string(global.tr_general[4]))
	}
	else{
		draw_text(830,98 + (8 * 36),string(global.tr_general[3]))
	}
}

//Wallpaper setup
if Section = 1 then{
	//Hover
	draw_sprite(spr_optionsbox,0,25,91 + (1 * 36))
	draw_sprite(spr_optionsbox,0,25,91 + (2 * 36))
	draw_sprite(spr_optionsbox,0,25,91 + (3 * 36))
	draw_sprite(spr_optionsbox,0,25,91 + (4 * 36))
	draw_sprite(spr_optionsbox,0,25,91 + (5 * 36))
	draw_sprite(spr_optionsbox,0,25,91 + (13 * 36))
	draw_sprite(spr_optionsbox,0,25,91 + (14 * 36))
	if mouse_x > 25 and mouse_x < 845 and mouse_y > 91 + (36 * 1) and mouse_y < 128 + (36 * 1) then{
		draw_sprite(spr_optionsbox,1,25,91 + (36 * 1))
		draw_sprite_ext(spr_optionsbox,2,25,91 + (36 * 1),1,1,0,col_highlight,1)
	}
	if mouse_x > 25 and mouse_x < 845 and mouse_y > 91 + (36 * 2) and mouse_y < 128 + (36 * 2) then{
		draw_sprite(spr_optionsbox,1,25,91 + (36 * 2))
		draw_sprite_ext(spr_optionsbox,2,25,91 + (36 * 2),1,1,0,col_highlight,1)
	}
	if mouse_x > 25 and mouse_x < 845 and mouse_y > 91 + (36 * 3) and mouse_y < 128 + (36 * 3) then{
		draw_sprite(spr_optionsbox,1,25,91 + (36 * 3))
		draw_sprite_ext(spr_optionsbox,2,25,91 + (36 * 3),1,1,0,col_highlight,1)
	}
	if mouse_x > 25 and mouse_x < 845 and mouse_y > 91 + (36 * 4) and mouse_y < 128 + (36 * 4) then{
		draw_sprite(spr_optionsbox,1,25,91 + (36 * 4))
		draw_sprite_ext(spr_optionsbox,2,25,91 + (36 * 4),1,1,0,col_highlight,1)
	}
	if mouse_x > 25 and mouse_x < 845 and mouse_y > 91 + (36 * 5) and mouse_y < 128 + (36 * 5) then{
		draw_sprite(spr_optionsbox,1,25,91 + (36 * 5))
		draw_sprite_ext(spr_optionsbox,2,25,91 + (36 * 5),1,1,0,col_highlight,1)
	}
	if mouse_x > 25 and mouse_x < 845 and mouse_y > 91 + (36 * 13) and mouse_y < 128 + (36 * 13) then{
		draw_sprite(spr_optionsbox,1,25,91 + (36 * 13))
		draw_sprite_ext(spr_optionsbox,2,25,91 + (36 * 13),1,1,0,col_highlight,1)
	}
	if mouse_x > 25 and mouse_x < 845 and mouse_y > 91 + (36 * 14) and mouse_y < 128 + (36 * 14) then{
		draw_sprite(spr_optionsbox,1,25,91 + (36 * 14))
		draw_sprite_ext(spr_optionsbox,2,25,91 + (36 * 14),1,1,0,col_highlight,1)
	}
	//Options
	draw_set_halign(fa_left)
	draw_set_font(font_system_14)
	draw_text(40,98 + (0 * 36),string(global.tr_addwallpaper[0]))
	draw_text(40,98 + (1 * 36),string(global.tr_addwallpaper[1]))
	draw_text(40,98 + (2 * 36),string(global.tr_addwallpaper[2]))
	draw_text(40,98 + (3 * 36),string(global.tr_addwallpaper[3]))
	draw_text(40,98 + (4 * 36),string(global.tr_addwallpaper[4]))
	draw_text(40,98 + (5 * 36),string(global.tr_addwallpaper[5]))
	draw_text(40,98 + (13 * 36),string(global.tr_addwallpaper[6]))
	draw_text(40,98 + (14 * 36),string(global.tr_addwallpaper[7]))
	//Values
	draw_set_halign(fa_right)
	if WallpaperLocation != "" then{
		draw_text(830,98 + (1 * 36),string(global.tr_general[4]))
	}
	else{
		draw_text(830,98 + (1 * 36),string(global.tr_general[3]))
	}
	if Theme = 0 then{
		draw_text(830,98 + (2 * 36),string(global.tr_theme[0]))
	}
	else{
		draw_text(830,98 + (2 * 36),string(global.tr_theme[1]))
	}
	if Tiled = 0 then{
		draw_text_color(830,98 + (3 * 36),string(global.tr_general[1]),c_red,c_red,c_red,c_red,1)
	}
	else{
		draw_text_color(830,98 + (3 * 36),string(global.tr_general[0]),c_lime,c_lime,c_lime,c_lime,1)
	}
	draw_text(830,98 + (4 * 36),string(WPHspeed))
	draw_text(830,98 + (5 * 36),string(WPVspeed))
}

//Top stuff
draw_line(20,62,1260,62)
draw_sprite(spr_addgameicon,0,20,0)
draw_set_halign(fa_left)
draw_set_font(font_system_20)
draw_text(85,15,string(global.tr_topbutton[0]))

//Bottom stuff
draw_line(20,670,1260,670)
if global.Theme = 0 then{
	draw_sprite(spr_keyboard,0,50,695)
}
else{
	draw_sprite(spr_keyboard_2,0,50,695)
}
draw_set_halign(fa_left)
draw_set_font(font_system_14)
draw_text(90,683,string(global.tr_controller[1]))