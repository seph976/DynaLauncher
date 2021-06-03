/// @description Draw Stuff

//Cursor
if global.Cursor = 1 then{
	draw_sprite_ext(spr_cursor_ninty,0,mouse_x,mouse_y,1,1,0,col_highlight,1)
}
else if global.Cursor = 2 then{
	draw_sprite_ext(spr_cursor_nx,0,mouse_x,mouse_y,1,1,0,col_highlight,1)
}

//Debug information
if global.Debug = true then{
	draw_set_halign(fa_left)
	draw_set_font(font_system_12)
	draw_text_outline("FPS: " + string(fps) + "\nReal FPS: " + string(fps_real),850,10,c_white,c_black)
}