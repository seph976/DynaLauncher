/// @description Update Games List

//Delete icons
for (var i = 0; i < ds_list_size(Icons); ++i) {
	sprite_delete(ds_list_find_value(Icons,i))
}

//Empty list
ds_list_clear(Icons)

//Add icons
for (var i = 0; i < global.Games; ++i) {
	var _icon = sprite_add(game_save_id + "Games\\" + string(i + 1) + "\\gameicon.png",0,false,false,0,0)
	ds_list_add(Icons,_icon)
}