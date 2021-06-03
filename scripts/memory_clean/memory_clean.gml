//memory_clean()
function memory_clean(){
	if Wallpaper != undefined then{
		sprite_delete(Wallpaper)
	}
	if Logo != undefined then{
		sprite_delete(Logo)
	}
	for (var i = 0; i < ds_list_size(Icons); ++i) {
		sprite_delete(ds_list_find_value(Icons,i))
	}
	audio_destroy_stream(Music)
}