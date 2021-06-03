/// @description Run Game

//Run game
if Gamename != "" then{
	//Set lastplayed to current date
	var _day = date_get_day(date_current_datetime())
	if _day < 10 then{
		_day = "0" + string(_day)
	}
	var _month = date_get_month(date_current_datetime())
	if _month < 10 then{
		_month = "0" + string(_month)
	}
	var _year = date_get_year(date_current_datetime())
	Lastplayed = string(_day) + "/" + string(_month) + "/" + string(_year)
	ini_open(game_save_id + "Games\\" + string(Cursor + 1) + "\\gameinfo.ini")
	ini_write_string("STATS","Lastplayed",Lastplayed)
	ini_close()
	//Change game position to front
	directory_rename_ue(game_save_id + "Games\\" + string(Cursor + 1),game_save_id + "\\Games\\0")
	for (var i = Cursor; i > 0; --i) {
		directory_rename_ue(game_save_id + "Games\\" + string(i),game_save_id + "\\Games\\" + string(i + 1))
	}
	directory_rename_ue(game_save_id + "Games\\0",game_save_id + "\\Games\\1")
	event_user(0)
	Cursor = 0
	Scroll = 0
	if Timertype = 1 or Timertype = 2 then{
		if global.Discord = true then{
			discord_set_playing()
		}
		Pause = true
		audio_stop_sound(Music)
		alarm[0] = 1 //Launch the game with delay
	}
	else if Timertype = 0 then{
		//Run game
		rungame(false)
		execute_shell(game_save_id + "gameboot.bat",false)		
		alarm[1] = 5
	}
}