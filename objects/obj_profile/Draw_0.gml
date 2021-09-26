/// @description Draw Stuff

//Setup theme color
if global.Theme = 0 then{
	draw_set_color(col_tdark)
}
else if global.Theme = 1 then{
	draw_set_color(col_tlight)
}

//Profile picture
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
draw_surface(_surface, 100, 100)
surface_free(_surface)
if mouse_x > 96 and mouse_x < 296 and mouse_y > 96 and mouse_y < 296 then{
	draw_sprite_ext(spr_profileimage_big_select,0,96,96,1,1,0,col_highlight,1)
}
draw_set_halign(fa_center)
draw_set_font(font_system_20)
if mouse_x > 196 - (string_width(global.Username) / 2) and mouse_x < 196 + (string_width(global.Username) / 2) and mouse_y > 300 and mouse_y < 300 + string_height(global.Username) then{
	draw_text_color(196,300,global.Username,col_highlight,col_highlight,col_highlight,col_highlight,1)
}
else{
	draw_text_color(196,300,global.Username,col_tlight,col_tlight,col_tlight,col_tlight,1)
}
draw_text_color(800,300,"This page is unfinished!",col_tlight,col_tlight,col_tlight,col_tlight,1)

//Categories
draw_sprite(spr_categoryselect,0,10,360 + (80 * Category))
draw_sprite_ext(spr_categoryselect,1,10,360 + (80 * Category),1,1,0,col_highlight,1)
draw_set_halign(fa_left)
draw_set_font(font_system_20)
draw_text(30,382 + (0 * 80),"???")
draw_text(30,382 + (1 * 80),"???")
draw_text(30,382 + (2 * 80),"???")

//Middle line
draw_line(400,90,400,640)

//Top stuff
draw_sprite_part(spr_wallpaper,0,0,0,1280,63,0,0)
draw_line(20,62,1260,62)
draw_sprite(spr_profileicon,0,20,0)
draw_set_halign(fa_left)
draw_set_font(font_system_20)
draw_text(85,15,string(global.tr_topbutton[5]))

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