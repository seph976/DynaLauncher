//rungame(call)
function rungame(argument0){
	//Check emulator and make bat file
	switch Emulator{
		case "": //No emulator
			var _file = file_text_open_write(game_save_id + "gameboot.bat")
			file_text_write_string(_file,"chcp 65001")
			file_text_writeln(_file)
			file_text_write_string(_file,filename_drive(string(Location)))
			file_text_writeln(_file)
			file_text_write_string(_file,"cd " + filename_path(string(Location)))
			file_text_writeln(_file)
			if argument0 = true then{
				file_text_write_string(_file,"call \"" + filename_name(Location) + "\"")
			}
			else{
				file_text_write_string(_file,"\"" + filename_name(Location) + "\"")
			}
			file_text_close(_file)
			execute_shell(game_save_id + "gameboot.bat",argument0)
		break
		case "Gamecube / Wii":
			if global.DolphinPath = "" then{
				show_message(string(global.tr_error[6]))
			}
			else{
				var _file = file_text_open_write(game_save_id + "gameboot.bat")
				file_text_write_string(_file,"chcp 65001")
				file_text_writeln(_file)
				if argument0 = true then{
					file_text_write_string(_file,"call \"" + string(global.DolphinPath) + "\" \"--exec=" + string(Location) + "\" --batch")
				}
				else{
					file_text_write_string(_file,"\"" + string(global.DolphinPath) + "\" \"--exec=" + string(Location) + "\" --batch")
				}
				file_text_close(_file)
				execute_shell(game_save_id + "gameboot.bat",argument0)
			}
		break
		case "Wii U":
			if global.CemuPath = "" then{
				show_message(string(global.tr_error[6]))
			}
			else{
				var _file = file_text_open_write(game_save_id + "gameboot.bat")
				file_text_write_string(_file,"chcp 65001")
				file_text_writeln(_file)
				if argument0 = true then{
					file_text_write_string(_file,"call \"" + string(global.CemuPath) + "\"" + " -g \"" + string(Location) + "\"")
				}
				else{
					file_text_write_string(_file,"\"" + string(global.CemuPath) + "\"" + " -g \"" + string(Location) + "\"")
				}
				file_text_close(_file)
				execute_shell(game_save_id + "gameboot.bat",argument0)
			}
		break
		case "Super Nintendo":
			if global.Snes9xPath = "" then{
				show_message(string(global.tr_error[6]))
			}
			else{
				var _file = file_text_open_write(game_save_id + "gameboot.bat")
				file_text_write_string(_file,"chcp 65001")
				file_text_writeln(_file)
				if argument0 = true then{
					file_text_write_string(_file,"call \"" + string(global.Snes9xPath) + "\"" + " -g \"" + string(Location) + "\"")
				}
				else{
					file_text_write_string(_file,"\"" + string(global.Snes9xPath) + "\" \"" + string(Location) + "\"")
				}
				file_text_close(_file)
				execute_shell(game_save_id + "gameboot.bat",argument0)
			}
		break
		case "Nintendo 64":
			if global.Project64Path = "" then{
				show_message(string(global.tr_error[6]))
			}
			else{
				var _file = file_text_open_write(game_save_id + "gameboot.bat")
				file_text_write_string(_file,"chcp 65001")
				file_text_writeln(_file)
				if argument0 = true then{
					file_text_write_string(_file,"call \"" + string(global.Project64Path) + "\"" + " -g \"" + string(Location) + "\"")
				}
				else{
					file_text_write_string(_file,"\"" + string(global.Project64Path) + "\" \"" + string(Location) + "\"")
				}
				file_text_close(_file)
				execute_shell(game_save_id + "gameboot.bat",argument0)
			}
		break
	}
}