/// @description Get update info

//Get update info
if ds_map_find_value(async_load,"id") = updatefile then{
	if ds_map_find_value(async_load,"status") = 0 then{
		NewVersion = ds_map_find_value(async_load,"result")
		if NewVersion != global.Version then{
			LatestVersion = false
		}
	}
}