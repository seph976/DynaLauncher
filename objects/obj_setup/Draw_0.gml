/// @description Draw Stuff

//Setup theme color
if global.Theme = 0 then{
	draw_set_color(col_tdark)
}
else if global.Theme = 1 then{
	draw_set_color(col_tlight)
}

//Select language screen
if Section = 0 then{
	draw_set_halign(fa_center)
	draw_set_font(font_system_14)
	draw_text_color(640,50,string(global.tr_setup[0]),col_tlight,col_tlight,col_tlight,col_tlight,1)
	draw_text_color(640,650,string(global.tr_setup[1]),col_tlight,col_tlight,col_tlight,col_tlight,1)
	draw_sprite(spr_optionsbox,0,230,130 + (0 * 36))
	draw_sprite(spr_optionsbox,0,230,130 + (1 * 36))
	draw_sprite(spr_optionsbox,0,230,130 + (2 * 36))
	if mouse_x > 230 and mouse_x < 1050 and mouse_y > 130 + (36 * 0) and mouse_y < 167 + (36 * 0) then{
		draw_sprite(spr_optionsbox,1,230,130 + (36 * 0))
		draw_sprite_ext(spr_optionsbox,2,230,130 + (36 * 0),1,1,0,col_highlight,1)
	}
	if mouse_x > 230 and mouse_x < 1050 and mouse_y > 130 + (36 * 1) and mouse_y < 167 + (36 * 1) then{
		draw_sprite(spr_optionsbox,1,230,130 + (36 * 1))
		draw_sprite_ext(spr_optionsbox,2,230,130 + (36 * 1),1,1,0,col_highlight,1)
	}
	if mouse_x > 230 and mouse_x < 1050 and mouse_y > 130 + (36 * 2) and mouse_y < 167 + (36 * 2) then{
		draw_sprite(spr_optionsbox,1,230,130 + (36 * 2))
		draw_sprite_ext(spr_optionsbox,2,230,130 + (36 * 2),1,1,0,col_highlight,1)
	}
	draw_set_halign(fa_left)
	draw_text(245,137 + (0 * 36),"English")
	draw_text(245,137 + (1 * 36),"Português")
	draw_text(245,137 + (2 * 36),"Русский")
}

//Profile setup screen
if Section = 1 then{
	draw_set_halign(fa_center)
	draw_set_font(font_system_14)
	draw_text_color(640,50,string(global.tr_setup[2]),col_tlight,col_tlight,col_tlight,col_tlight,1)
	draw_text_color(640,650,string(global.tr_setup[3]),col_tlight,col_tlight,col_tlight,col_tlight,1)
	var _surface = -1
	if !surface_exists(_surface) then{
		_surface = surface_create(192, 192)
	}
	surface_set_target(_surface)
	draw_sprite(spr_profileimage_big, 0, sprite_xoffset, sprite_yoffset)
	gpu_set_colorwriteenable(1, 1, 1, 0)
	if global.Profilepic != undefined then{
		draw_sprite_stretched(global.Profilepic, 0, 0, 0, 192, 192)
	}
	else{
		draw_sprite_stretched(spr_profileimage_default, 0, 0, 0, 192, 192)
	}
	gpu_set_colorwriteenable(1, 1, 1, 1)
	surface_reset_target()
	draw_surface(_surface, 544, 130)
	surface_free(_surface)
	if mouse_x > 540 and mouse_x < 740 and mouse_y > 126 and mouse_y < 326 then{
		draw_sprite_ext(spr_profileimage_big_select,0,540,126,1,1,0,col_highlight,1)
	}
	draw_set_halign(fa_center)
	draw_set_font(font_system_20)
	if mouse_x > 640 - (string_width(global.Username) / 2) and mouse_x < 640 + (string_width(global.Username) / 2) and mouse_y > 330 and mouse_y < 330 + string_height(global.Username) then{
		draw_text_color(640,330,global.Username,col_highlight,col_highlight,col_highlight,col_highlight,1)
	}
	else{
		draw_text_color(640,330,global.Username,col_tlight,col_tlight,col_tlight,col_tlight,1)
	}
	draw_sprite(spr_optionsbox,0,230,130 + (12 * 36))
	if mouse_x > 230 and mouse_x < 1050 and mouse_y > 130 + (36 * 12) and mouse_y < 167 + (36 * 12) then{
		draw_sprite(spr_optionsbox,1,230,130 + (36 * 12))
		draw_sprite_ext(spr_optionsbox,2,230,130 + (36 * 12),1,1,0,col_highlight,1)
	}
	draw_set_halign(fa_left)
	draw_set_font(font_system_14)
	draw_text(245,137 + (12 * 36),string(global.tr_setup[4]))
}