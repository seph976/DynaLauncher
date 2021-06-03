/// @description Game Launch Delay

if Timertype = 1 then{
	//Launch game
	game_set_speed(10,gamespeed_fps)
	var _starttime = current_time
	//Run game
	rungame(true)
	//After game is closed
	Secondsplayed += round((current_time - _starttime) / 1000)
	while (Secondsplayed > 59) {
		Minutesplayed += 1
		Secondsplayed -= 60
	}
	while (Minutesplayed > 59) {
		Hoursplayed += 1
		Minutesplayed -= 60
	}
	ini_open(game_save_id + "Games\\" + string(Cursor + 1) + "\\gameinfo.ini")
	ini_write_real("STATS","Hoursplayed",Hoursplayed)
	ini_write_real("STATS","Minutesplayed",Minutesplayed)
	ini_write_real("STATS","Secondsplayed",Secondsplayed)
	ini_close()
	if global.PlayBGM = true then{
		var _music = audio_play_sound(Music,1,true)
		audio_sound_gain(_music,0,0)
		audio_sound_gain(_music,0.5,2000)
	}
	if global.Discord = true then{
		discord_set_home()
	}
	Pause = false
	game_set_speed(global.FPS,gamespeed_fps)
	alarm[1] = 5
}
else if Timertype = 2 then{
	game_set_speed(10,gamespeed_fps)
	Starttime = current_time
	//Run game
	rungame(false)
	alarm[1] = 5
}