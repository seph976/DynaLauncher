/// @description Draw Stuff

//Setup theme color
if global.Theme = 0 then{
	draw_set_color(col_tdark)
}
else if global.Theme = 1 then{
	draw_set_color(col_tlight)
}

//News
draw_set_halign(fa_left)
draw_set_font(font_system_14)
draw_text(200,(Scroll * 30) + 80,News)

//Scroll indication
draw_line(1090,90,1090,640)
var _percent = (Scroll / MaxScroll * 100)
draw_sprite(spr_scroll_vertical,0,1100,90 + (_percent * 4.78))
if Scroll > -1 then{
	draw_sprite(spr_scroll_vertical,0,1100,90)
}

//Top stuff
draw_sprite_part(spr_wallpaper,0,0,0,1280,63,0,0)
draw_line(20,62,1260,62)
draw_sprite(spr_newsicon,0,20,0)
draw_set_halign(fa_left)
draw_set_font(font_system_20)
draw_text(85,15,string(global.tr_topbutton[4]))

//Bottom stuff
draw_sprite_part(spr_wallpaper,0,0,669,1280,50,0,670)
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