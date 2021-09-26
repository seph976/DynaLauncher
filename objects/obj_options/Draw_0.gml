/// @description Draw Stuff

//Setup theme color
if global.Theme = 0 then{
	draw_set_color(col_tdark)
}
else if global.Theme = 1 then{
	draw_set_color(col_tlight)
}

//Categories
draw_sprite(spr_categoryselect,0,10,100 + (80 * Category))
draw_sprite_ext(spr_categoryselect,1,10,100 + (80 * Category),1,1,0,col_highlight,1)
draw_set_halign(fa_left)
draw_set_font(font_system_20)
draw_text(30,122 + (0 * 80),string(global.tr_scategory[0]))
draw_text(30,122 + (1 * 80),string(global.tr_scategory[1]))
draw_text(30,122 + (2 * 80),string(global.tr_scategory[2]))
draw_text(30,122 + (3 * 80),string(global.tr_scategory[3]))
draw_text(30,122 + (4 * 80),string(global.tr_scategory[4]))
draw_text(30,122 + (5 * 80),string(global.tr_scategory[5]))

//Video settings
if Category = 0 then{
	//Hover
	draw_sprite(spr_optionsbox,0,425,91 + (0 * 36))
	draw_sprite(spr_optionsbox,0,425,91 + (1 * 36))
	draw_sprite(spr_optionsbox,0,425,91 + (2 * 36))
	draw_sprite(spr_optionsbox,0,425,91 + (3 * 36))
	draw_sprite(spr_optionsbox,0,425,91 + (4 * 36))
	draw_sprite(spr_optionsbox,0,425,91 + (5 * 36))
	draw_sprite(spr_optionsbox,0,425,91 + (6 * 36))
	if mouse_x > 425 and mouse_x < 1245 and mouse_y > 91 + (36 * 0) and mouse_y < 128 + (36 * 0) and Category = 0 then{
		draw_sprite(spr_optionsbox,1,425,91 + (36 * 0))
		draw_sprite_ext(spr_optionsbox,2,425,91 + (36 * 0),1,1,0,col_highlight,1)
	}
	if mouse_x > 425 and mouse_x < 1245 and mouse_y > 91 + (36 * 1) and mouse_y < 128 + (36 * 1) and Category = 0 then{
		draw_sprite(spr_optionsbox,1,425,91 + (36 * 1))
		draw_sprite_ext(spr_optionsbox,2,425,91 + (36 * 1),1,1,0,col_highlight,1)
	}
	if mouse_x > 425 and mouse_x < 1245 and mouse_y > 91 + (36 * 2) and mouse_y < 128 + (36 * 2) and Category = 0 then{
		draw_sprite(spr_optionsbox,1,425,91 + (36 * 2))
		draw_sprite_ext(spr_optionsbox,2,425,91 + (36 * 2),1,1,0,col_highlight,1)
	}
	if mouse_x > 425 and mouse_x < 1245 and mouse_y > 91 + (36 * 3) and mouse_y < 128 + (36 * 3) and Category = 0 then{
		draw_sprite(spr_optionsbox,1,425,91 + (36 * 3))
		draw_sprite_ext(spr_optionsbox,2,425,91 + (36 * 3),1,1,0,col_highlight,1)
	}
	if mouse_x > 425 and mouse_x < 1245 and mouse_y > 91 + (36 * 4) and mouse_y < 128 + (36 * 4) and Category = 0 then{
		draw_sprite(spr_optionsbox,1,425,91 + (36 * 4))
		draw_sprite_ext(spr_optionsbox,2,425,91 + (36 * 4),1,1,0,col_highlight,1)
	}
	if mouse_x > 425 and mouse_x < 1245 and mouse_y > 91 + (36 * 5) and mouse_y < 128 + (36 * 5) and Category = 0 then{
		draw_sprite(spr_optionsbox,1,425,91 + (36 * 5))
		draw_sprite_ext(spr_optionsbox,2,425,91 + (36 * 5),1,1,0,col_highlight,1)
	}
	if mouse_x > 425 and mouse_x < 1245 and mouse_y > 91 + (36 * 6) and mouse_y < 128 + (36 * 6) and Category = 0 then{
		draw_sprite(spr_optionsbox,1,425,91 + (36 * 6))
		draw_sprite_ext(spr_optionsbox,2,425,91 + (36 * 6),1,1,0,col_highlight,1)
	}
	//Options
	draw_set_halign(fa_left)
	draw_set_font(font_system_14)
	draw_text(440,98,string(global.tr_option[0]))
	draw_text(440,98 + (1 * 36),string(global.tr_option[1]))
	draw_text(440,98 + (2 * 36),string(global.tr_option[2]))
	draw_text(440,98 + (3 * 36),string(global.tr_option[10]))
	draw_text(440,98 + (4 * 36),string(global.tr_option[3]))
	draw_text(440,98 + (5 * 36),string(global.tr_option[11]))
	draw_text(440,98 + (6 * 36),string(global.tr_option[12]))
	//Values
	draw_set_halign(fa_right)
	draw_text(1230,98,string(global.Resolution))
	if global.Fullscreen = 1 then{
		var _fullscreen = global.tr_general[0]
		var _color = c_lime
	}
	else{
		var _fullscreen = global.tr_general[1]
		var _color = c_red
	}
	draw_text_color(1230,98 + (1 * 36),string(_fullscreen),_color,_color,_color,_color,1)
	draw_text(1230,98 + (2 * 36),string(global.FPS))
	if global.Cursor = 0 then{
		var _cursor = global.tr_cursor[0]
	}
	else if global.Cursor = 1 then{
		var _cursor = global.tr_cursor[1]
	}
	else if global.Cursor = 2 then{
		var _cursor = global.tr_cursor[2]
	}
	else if global.Cursor = 3 then{
		var _cursor = global.tr_cursor[3]
	}
	if global.Interpolation = 1 then{
		var _interpolation = global.tr_general[0]
		var _color = c_lime
	}
	else{
		var _interpolation = global.tr_general[1]
		var _color = c_red
	}
	draw_text_color(1230,98 + (3 * 36),string(_interpolation),_color,_color,_color,_color,1)
	draw_text(1230,98 + (4 * 36),string(_cursor))
	if global.DynamicWP = 1 then{
		var _dynamicwp = global.tr_general[0]
		var _color = c_lime
	}
	else{
		var _dynamicwp = global.tr_general[1]
		var _color = c_red
	}
	draw_text_color(1230,98 + (5 * 36),string(_dynamicwp),_color,_color,_color,_color,1)
	if global.DynamicLogo = 1 then{
		var _dynamiclogo = global.tr_general[0]
		var _color = c_lime
	}
	else{
		var _dynamiclogo = global.tr_general[1]
		var _color = c_red
	}
	draw_text_color(1230,98 + (6 * 36),string(_dynamiclogo),_color,_color,_color,_color,1)
}

//Audio settings
if Category = 1 then{
	//Hover
	draw_sprite(spr_optionsbox,0,425,91 + (0 * 36))
	draw_sprite(spr_optionsbox,0,425,91 + (1 * 36))
	if mouse_x > 425 and mouse_x < 1245 and mouse_y > 91 + (36 * 0) and mouse_y < 128 + (36 * 0) and Category = 1 then{
		draw_sprite(spr_optionsbox,1,425,91 + (36 * 0))
		draw_sprite_ext(spr_optionsbox,2,425,91 + (36 * 0),1,1,0,col_highlight,1)
	}
	if mouse_x > 425 and mouse_x < 1245 and mouse_y > 91 + (36 * 1) and mouse_y < 128 + (36 * 1) and Category = 1 then{
		draw_sprite(spr_optionsbox,1,425,91 + (36 * 1))
		draw_sprite_ext(spr_optionsbox,2,425,91 + (36 * 1),1,1,0,col_highlight,1)
	}
	//Options
	draw_set_halign(fa_left)
	draw_set_font(font_system_14)
	draw_text(440,98,string(global.tr_option[4]))
	draw_text(440,98 + (1 * 36),string(global.tr_option[5]))
	//Values
	draw_set_halign(fa_right)
	if global.PlaySFX = 1 then{
		var _sfx = global.tr_general[0]
		var _color = c_lime
	}
	else{
		var _sfx = global.tr_general[1]
		var _color = c_red
	}
	draw_text_color(1230,98 + (0 * 36),string(_sfx),_color,_color,_color,_color,1)
	draw_set_halign(fa_right)
	if global.PlayBGM = 1 then{
		var _bgm = global.tr_general[0]
		var _color = c_lime
	}
	else{
		var _bgm = global.tr_general[1]
		var _color = c_red
	}
	draw_text_color(1230,98 + (1 * 36),string(_bgm),_color,_color,_color,_color,1)
}

//Language
if Category = 2 then{
	//Hover
	draw_sprite(spr_optionsbox,0,425,91 + (0 * 36))
	draw_sprite(spr_optionsbox,0,425,91 + (1 * 36))
	draw_sprite(spr_optionsbox,0,425,91 + (2 * 36))
	if mouse_x > 425 and mouse_x < 1245 and mouse_y > 91 + (36 * 0) and mouse_y < 128 + (36 * 0) and Category = 2 then{
		draw_sprite(spr_optionsbox,1,425,91 + (36 * 0))
		draw_sprite_ext(spr_optionsbox,2,425,91 + (36 * 0),1,1,0,col_highlight,1)
	}
	if mouse_x > 425 and mouse_x < 1245 and mouse_y > 91 + (36 * 1) and mouse_y < 128 + (36 * 1) and Category = 2 then{
		draw_sprite(spr_optionsbox,1,425,91 + (36 * 1))
		draw_sprite_ext(spr_optionsbox,2,425,91 + (36 * 1),1,1,0,col_highlight,1)
	}
	if mouse_x > 425 and mouse_x < 1245 and mouse_y > 91 + (36 * 2) and mouse_y < 128 + (36 * 2) and Category = 2 then{
		draw_sprite(spr_optionsbox,1,425,91 + (36 * 2))
		draw_sprite_ext(spr_optionsbox,2,425,91 + (36 * 2),1,1,0,col_highlight,1)
	}
	//Options
	draw_set_halign(fa_left)
	draw_set_font(font_system_14)
	draw_text(440,98 + (0 * 36),"English")
	draw_text(440,98 + (1 * 36),"Português")
	draw_text(440,98 + (2 * 36),"Русский")
	//Values
	draw_set_halign(fa_right)
	draw_text(1230,98 + (global.Language * 36),string(global.tr_general[2]))
}

//Emulators
if Category = 3 then{
	//Order
	var _nes = 0
	var _snes = 1
	var _vbam = 2
	var _n64 = 3
	var _dolphin = 4
	var _cemu = 5
	//Hover
	draw_sprite(spr_optionsbox,0,425,91 + (_dolphin * 36))
	draw_sprite(spr_optionsbox,0,425,91 + (_cemu * 36))
	draw_sprite(spr_optionsbox,0,425,91 + (_snes * 36))
	draw_sprite(spr_optionsbox,0,425,91 + (_n64 * 36))
	draw_sprite(spr_optionsbox,0,425,91 + (_nes * 36))
	draw_sprite(spr_optionsbox,0,425,91 + (_vbam * 36))
	if mouse_x > 425 and mouse_x < 1245 and mouse_y > 91 + (36 * _dolphin) and mouse_y < 128 + (36 * _dolphin) and Category = 3 then{
		draw_sprite(spr_optionsbox,1,425,91 + (36 * _dolphin))
		draw_sprite_ext(spr_optionsbox,2,425,91 + (36 * _dolphin),1,1,0,col_highlight,1)
	}
	if mouse_x > 425 and mouse_x < 1245 and mouse_y > 91 + (36 * _cemu) and mouse_y < 128 + (36 * _cemu) and Category = 3 then{
		draw_sprite(spr_optionsbox,1,425,91 + (36 * _cemu))
		draw_sprite_ext(spr_optionsbox,2,425,91 + (36 * _cemu),1,1,0,col_highlight,1)
	}
	if mouse_x > 425 and mouse_x < 1245 and mouse_y > 91 + (36 * _snes) and mouse_y < 128 + (36 * _snes) and Category = 3 then{
		draw_sprite(spr_optionsbox,1,425,91 + (36 * _snes))
		draw_sprite_ext(spr_optionsbox,2,425,91 + (36 * _snes),1,1,0,col_highlight,1)
	}
	if mouse_x > 425 and mouse_x < 1245 and mouse_y > 91 + (36 * _n64) and mouse_y < 128 + (36 * _n64) and Category = 3 then{
		draw_sprite(spr_optionsbox,1,425,91 + (36 * _n64))
		draw_sprite_ext(spr_optionsbox,2,425,91 + (36 * _n64),1,1,0,col_highlight,1)
	}
	if mouse_x > 425 and mouse_x < 1245 and mouse_y > 91 + (36 * _nes) and mouse_y < 128 + (36 * _nes) and Category = 3 then{
		draw_sprite(spr_optionsbox,1,425,91 + (36 * _nes))
		draw_sprite_ext(spr_optionsbox,2,425,91 + (36 * _nes),1,1,0,col_highlight,1)
	}
	if mouse_x > 425 and mouse_x < 1245 and mouse_y > 91 + (36 * _vbam) and mouse_y < 128 + (36 * _vbam) and Category = 3 then{
		draw_sprite(spr_optionsbox,1,425,91 + (36 * _vbam))
		draw_sprite_ext(spr_optionsbox,2,425,91 + (36 * _vbam),1,1,0,col_highlight,1)
	}
	//Options
	draw_set_halign(fa_left)
	draw_set_font(font_system_14)
	draw_text(440,98 + (_dolphin * 36),"Gamecube / Wii (Dolphin)")
	draw_text(440,98 + (_cemu * 36),"Wii U (Cemu)")
	draw_text(440,98 + (_snes * 36),"Super Nintendo (Snes9x)")
	draw_text(440,98 + (_n64 * 36),"Nintendo 64 (Project64)")
	draw_text(440,98 + (_nes * 36),"Nintendo Entertainment System (Mesen)")
	draw_text(440,98 + (_vbam * 36),"Gameboy / Color / Advance (VBA-M)")
	//Values
	draw_set_halign(fa_right)
	if global.DolphinPath != "" then{
		var _path = global.tr_general[4]
		var _color = c_lime
	}
	else{
		var _path = global.tr_general[3]
		var _color = c_red
	}
	draw_text_color(1230,98 + (_dolphin * 36),string(_path),_color,_color,_color,_color,1)
	if global.CemuPath != "" then{
		var _path = global.tr_general[4]
		var _color = c_lime
	}
	else{
		var _path = global.tr_general[3]
		var _color = c_red
	}
	draw_text_color(1230,98 + (_cemu * 36),string(_path),_color,_color,_color,_color,1)
	if global.Snes9xPath != "" then{
		var _path = global.tr_general[4]
		var _color = c_lime
	}
	else{
		var _path = global.tr_general[3]
		var _color = c_red
	}
	draw_text_color(1230,98 + (_snes * 36),string(_path),_color,_color,_color,_color,1)
	if global.Project64Path != "" then{
		var _path = global.tr_general[4]
		var _color = c_lime
	}
	else{
		var _path = global.tr_general[3]
		var _color = c_red
	}
	draw_text_color(1230,98 + (_n64 * 36),string(_path),_color,_color,_color,_color,1)
	if global.MesenPath != "" then{
		var _path = global.tr_general[4]
		var _color = c_lime
	}
	else{
		var _path = global.tr_general[3]
		var _color = c_red
	}
	draw_text_color(1230,98 + (_nes * 36),string(_path),_color,_color,_color,_color,1)
	if global.VBAMPath != "" then{
		var _path = global.tr_general[4]
		var _color = c_lime
	}
	else{
		var _path = global.tr_general[3]
		var _color = c_red
	}
	draw_text_color(1230,98 + (_vbam * 36),string(_path),_color,_color,_color,_color,1)
}


//System
if Category = 4 then{
	//Hover
	draw_sprite(spr_optionsbox,0,425,91 + (0 * 36))
	draw_sprite(spr_optionsbox,0,425,91 + (1 * 36))
	draw_sprite(spr_optionsbox,0,425,91 + (2 * 36))
	draw_sprite(spr_optionsbox,0,425,91 + (3 * 36))
	if mouse_x > 425 and mouse_x < 1245 and mouse_y > 91 + (36 * 1) and mouse_y < 128 + (36 * 1) and Category = 4 then{
		draw_sprite(spr_optionsbox,1,425,91 + (36 * 1))
		draw_sprite_ext(spr_optionsbox,2,425,91 + (36 * 1),1,1,0,col_highlight,1)
	}
	if mouse_x > 425 and mouse_x < 1245 and mouse_y > 91 + (36 * 2) and mouse_y < 128 + (36 * 2) and Category = 4 then{
		draw_sprite(spr_optionsbox,1,425,91 + (36 * 2))
		draw_sprite_ext(spr_optionsbox,2,425,91 + (36 * 2),1,1,0,col_highlight,1)
	}
	if mouse_x > 425 and mouse_x < 1245 and mouse_y > 91 + (36 * 3) and mouse_y < 128 + (36 * 3) and Category = 4 then{
		draw_sprite(spr_optionsbox,1,425,91 + (36 * 3))
		draw_sprite_ext(spr_optionsbox,2,425,91 + (36 * 3),1,1,0,col_highlight,1)
	}
	//Options
	draw_set_halign(fa_left)
	draw_set_font(font_system_14)
	draw_text(440,98,string(global.tr_option[6]))
	draw_text(440,98 + (1 * 36),string(global.tr_option[7]))
	draw_text(440,98 + (2 * 36),string(global.tr_option[8]))
	draw_text(440,98 + (3 * 36),string(global.tr_option[9]))
	//Values
	draw_set_halign(fa_right)
	draw_text(1230,98,string(global.Version))
	if global.Discord = true then{
		var _debug = global.tr_general[0]
		var _color = c_lime
	}
	else{
		var _debug = global.tr_general[1]
		var _color = c_red
	}
	draw_text_color(1230,98 + (1 * 36),string(_debug),_color,_color,_color,_color,1)
	if global.Debug = 1 then{
		var _debug = global.tr_general[0]
		var _color = c_lime
	}
	else{
		var _debug = global.tr_general[1]
		var _color = c_red
	}
	draw_text_color(1230,98 + (2 * 36),string(_debug),_color,_color,_color,_color,1)
}

//About
if Category = 5 then{
	draw_set_halign(fa_left)
	draw_set_font(font_system_14)
	draw_text(440,98,"Dyna Launcher created by Seph976, inspired by Ninty Launcher, NX+ and of course\nNintendo.\n\nThis project uses sound effects from Nintendo, i do not own these sound\neffects and i am not affiliated with Nintendo in any way, please support them\nby buying and playing their games and consoles!\n\nThis project use the following extensions:\nExecuteShell, GMRichPresence, UnboxedGMS2 and window_command_hook.\n\nTranslators:\nWodsonKun - Português\nMaxNox - Русский")
}

//Middle line
draw_line(400,90,400,640)

//Top stuff
draw_sprite_part(spr_wallpaper,0,0,0,1280,63,0,0)
draw_line(20,62,1260,62)
draw_sprite(spr_settingsicon,0,20,0)
draw_set_halign(fa_left)
draw_set_font(font_system_20)
draw_text(85,15,string(global.tr_topbutton[1]))

//Bottom stuff
draw_sprite_part(spr_wallpaper,0,0,669,1280,51,0,669)
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