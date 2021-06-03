/// @description Get game name

//Get game info
if file_exists(game_save_id + "Games\\" + string(Cursor + 1) + "\\gameinfo.ini") then{
	ini_open(game_save_id + "Games\\" + string(Cursor + 1) + "\\gameinfo.ini")
	Gamename = ini_read_string("GAMEINFO","Name","")
	ini_close()
}