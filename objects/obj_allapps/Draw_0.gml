/// @description Draw Stuff

//Setup theme color
if global.Theme = 0 then{
	draw_set_color(col_tdark)
}
else if global.Theme = 1 then{
	draw_set_color(col_tlight)
}

//Game icons
var _count = 0
var _row = 0
for (var i = 0; i < global.Games; ++i) {
	if _count = 5 then{
		_count = 0
		_row += 1
	}
	draw_sprite(spr_gamebox,0,140 + (_count * 212),(Scroll * 299) + 216 + (_row * 299))
	_count += 1
}
MaxScroll = _row - (_row * 2) + 1
if global.Games = ds_list_size(Icons) then{
	var _count = 0
	var _row = 0
	for (var i = 0; i < global.Games; ++i) {
		if _count = 5 then{
			_count = 0
			_row += 1
		}
		var _icon = ds_list_find_value(Icons,i)
		draw_sprite_stretched(_icon,0,42 + (_count * 212),(Scroll * 299) + 75 + (_row * 299),196,282)
		_count += 1
	}
}

//Selected game icon highlight
if Cursor > -1 then{
	var _cursor = Cursor
	var _row = 0
	repeat(floor(Cursor / 5)){
		_row += 1
		_cursor -= 5
	}
	draw_sprite_ext(spr_gameselector,0,140 + (_cursor * 212),216 + (_row * 299) - (Scroll * -299),1,1,0,col_highlight,1)
}

//Scroll indication
draw_line(1140,90,1140,640)
var _percent = (Scroll / MaxScroll * 100)
draw_sprite(spr_scroll_vertical,0,1150,90 + (_percent * 4.78))
if Scroll > -1 then{
	draw_sprite(spr_scroll_vertical,0,1150,90)
}

//Top stuff
draw_sprite_part(spr_wallpaper,0,0,0,1280,63,0,0)
draw_line(20,62,1260,62)
draw_sprite(spr_allappsicon,0,20,0)
draw_set_halign(fa_left)
draw_set_font(font_system_20)
draw_text(85,15,string(global.tr_topbutton[3]) + " (" + string(global.Games) + ")")

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
draw_text(90,683,string(global.tr_controller[1]) + "   " + string(global.tr_controller[0]) + "   " + string(global.tr_controller[2]) + "   " + string(global.tr_controller[3]))