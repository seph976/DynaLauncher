//theme_create()
function theme_create(){
	directory_create("Theme")
	var _loc = game_save_id + "\\Theme\\"
	//Wallpaper
	var _spr = sprite_duplicate(spr_wallpaper)
	sprite_save(_spr,0,_loc + "wallpaper.png")
	sprite_delete(_spr)
	//Top bar
	_spr = sprite_duplicate(spr_topbar)
	sprite_save(_spr,0,_loc + "topbar.png")
	sprite_delete(_spr)
	//Logo
	_spr = sprite_duplicate(spr_logo)
	sprite_save(_spr,0,_loc + "logo.png")
	sprite_delete(_spr)
	//Buttons
	_spr = sprite_duplicate(spr_addgame)
	sprite_save(_spr,0,_loc + "addgame_button.png")
	sprite_delete(_spr)
	_spr = sprite_duplicate(spr_allapps)
	sprite_save(_spr,0,_loc + "allapps_button.png")
	sprite_delete(_spr)
	_spr = sprite_duplicate(spr_news)
	sprite_save(_spr,0,_loc + "news_button.png")
	sprite_delete(_spr)
	_spr = sprite_duplicate(spr_settings)
	sprite_save(_spr,0,_loc + "settings_button.png")
	sprite_delete(_spr)
	_spr = sprite_duplicate(spr_shop)
	sprite_save(_spr,0,_loc + "shop_button.png")
	sprite_delete(_spr)
	//Icons
	_spr = sprite_duplicate(spr_addgameicon)
	sprite_save(_spr,0,_loc + "addgame_icon.png")
	sprite_delete(_spr)
	_spr = sprite_duplicate(spr_allappsicon)
	sprite_save(_spr,0,_loc + "allapps_icon.png")
	sprite_delete(_spr)
	_spr = sprite_duplicate(spr_newsicon)
	sprite_save(_spr,0,_loc + "news_icon.png")
	sprite_delete(_spr)
	_spr = sprite_duplicate(spr_settingsicon)
	sprite_save(_spr,0,_loc + "settings_icon.png")
	sprite_delete(_spr)
	_spr = sprite_duplicate(spr_profileicon)
	sprite_save(_spr,0,_loc + "profile_icon.png")
	sprite_delete(_spr)
	//Topstuff
	_spr = sprite_duplicate(spr_clock)
	sprite_save(_spr,0,_loc + "clock.png")
	sprite_delete(_spr)
	_spr = sprite_duplicate(spr_updateicon)
	sprite_save(_spr,0,_loc + "update_0.png")
	sprite_save(_spr,1,_loc + "update_1.png")
	sprite_delete(_spr)
	//Scrollbar
	_spr = sprite_duplicate(spr_scroll_vertical)
	sprite_save(_spr,0,_loc + "scrollbar_vertical.png")
	sprite_delete(_spr)
	//Nogameicon
	_spr = sprite_duplicate(spr_nogameicon)
	sprite_save(_spr,0,_loc + "nogameicon.png")
	sprite_delete(_spr)
	//Controller
	_spr = sprite_duplicate(spr_keyboard)
	sprite_save(_spr,0,_loc + "keyboard_dark.png")
	sprite_save(_spr,1,_loc + "keyboard_light.png")
	sprite_delete(_spr)
	//Custom cursor
	_spr = sprite_duplicate(spr_cursor_custom)
	sprite_save(_spr,0,_loc + "cursor.png")
	sprite_delete(_spr)
	//Settings ini
	ini_open(_loc + "settings.ini")
	ini_write_string("Highlight Color","Color 1",global.Col_Highlight1)
	ini_write_string("Highlight Color","Color 2",global.Col_Highlight2)
	ini_write_string("Update Color","Color 1",global.Col_Update1)
	ini_write_string("Update Color","Color 2",global.Col_Update2)
	ini_write_string("Top Bar","Text Color",global.Col_TopBarText)
	ini_write_string("Top Bar","Highlight Buttons",global.TopIconsHighlight)
	ini_write_string("Top Bar","Button Names",global.TopIconsNames)
	ini_write_string("Top Bar","Addgame Button X",global.TopBtn_Addgame_x)
	ini_write_string("Top Bar","Addgame Button Y",global.TopBtn_Addgame_y)
	ini_write_string("Top Bar","Settings Button X",global.TopBtn_Settings_x)
	ini_write_string("Top Bar","Settings Button Y",global.TopBtn_Settings_y)
	ini_write_string("Top Bar","Shop Button X",global.TopBtn_Shop_x)
	ini_write_string("Top Bar","Shop Button Y",global.TopBtn_Shop_y)
	ini_write_string("Top Bar","Apps Button X",global.TopBtn_Apps_x)
	ini_write_string("Top Bar","Apps Button Y",global.TopBtn_Apps_y)
	ini_write_string("Top Bar","News Button X",global.TopBtn_News_x)
	ini_write_string("Top Bar","News Button Y",global.TopBtn_News_y)
	ini_write_string("Top Bar","Profile X",global.Profile_x)
	ini_write_string("Top Bar","Profile Y",global.Profile_y)
	ini_write_string("Top Bar","Update Icon X",global.Updateicon_x)
	ini_write_string("Top Bar","Update Icon Y",global.Updateicon_y)
	ini_write_string("Top Bar","Clock X",global.Clock_x)
	ini_write_string("Top Bar","Clock Y",global.Clock_y)
	ini_write_string("Logo","X",global.Logo_x)
	ini_write_string("Logo","Y",global.Logo_y)
	ini_close()
}