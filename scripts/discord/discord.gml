
//discord_set_home()
function discord_set_home(){
	discord_set_details("⭐ | " + string(global.Games) + " Games Available.")
	discord_set_state("💻 | Home Screen.")
	discord_set_image_large("home")
	discord_set_image_small("")
	discord_set_timestamp_start(0)
	discord_presence_update()
}

//discord_set_playing()
function discord_set_playing(){
	discord_set_image_large("home")
	discord_set_image_small("")
	discord_check_icon()
	discord_set_details("⭐ | " + string(global.Games) + " Games Available.")
	discord_set_state("🎮 | " + string(Gamename))
	discord_set_timestamp_start(0)
	discord_set_timestamp_start(discord_get_timestamp_now())
	discord_presence_update()
}

//discord_enable(server)
function discord_enable(argument0){
	discord_presence_init(argument0)
	discord_set_home()
}

//discord_disable()
function discord_disable(){
	discord_presence_shutdown()
}

//discord_set_server(server)
function discord_set_server(argument0){
	if global.DiscordID != argument0 then{
		global.DiscordID = argument0
		discord_presence_shutdown()
		discord_presence_init(global.DiscordID)
	}
}

//discord_check_icon()
function discord_check_icon(){
	switch Gamename{
		case "ModLoader64":
			discord_set_server(global.DID1)
			discord_set_image_large("modloader64")
			discord_set_image_small("playing")
		break
		case "Genshin Impact":
			discord_set_server(global.DID1)
			discord_set_image_large("genshinimpact")
			discord_set_image_small("playing")
		break
		case "The Legend of Zelda: Breath of the Wild":
			discord_set_server(global.DID1)
			discord_set_image_large("breathofthewild")
			discord_set_image_small("playing")
		break
		case "The Legend of Zelda: Wind Waker":
			discord_set_server(global.DID1)
			discord_set_image_large("windwaker")
			discord_set_image_small("playing")
		break
		case "The Legend of Zelda: Twilight Princess":
			discord_set_server(global.DID1)
			discord_set_image_large("twilightprincess")
			discord_set_image_small("playing")
		break
		case "Final Fantasy XIV: A Realm Reborn":
			discord_set_server(global.DID1)
			discord_set_image_large("ff14")
			discord_set_image_small("playing")
		break
		case "Mario Multiverse":
			discord_set_server(global.DID1)
			discord_set_image_large("mariomultiverse")
			discord_set_image_small("playing")
		break
		case "Minecraft: Java Edition":
			discord_set_server(global.DID1)
			discord_set_image_large("minecraft")
			discord_set_image_small("playing")
		break
		case "Minecraft":
			discord_set_server(global.DID1)
			discord_set_image_large("minecraft")
			discord_set_image_small("playing")
		break
		case "Super Mario 64":
			discord_set_server(global.DID1)
			discord_set_image_large("mario64")
			discord_set_image_small("playing")
		break
		case "Osu!":
			discord_set_server(global.DID1)
			discord_set_image_large("osu")
			discord_set_image_small("playing")
		break
		case "Medibang Paint Pro":
			discord_set_server(global.DID1)
			discord_set_image_large("mbpaintpro")
			discord_set_image_small("playing")
		break
		case "Terraria":
			discord_set_server(global.DID1)
			discord_set_image_large("terraria")
			discord_set_image_small("playing")
		break
		case "NES Emulator":
			discord_set_server(global.DID1)
			discord_set_image_large("nes")
			discord_set_image_small("playing")
		break
		case "SNES Emulator":
			discord_set_server(global.DID1)
			discord_set_image_large("snes")
			discord_set_image_small("playing")
		break
		case "PLAYERUNKNOWN'S BATTLEGROUNDS":
			discord_set_server(global.DID1)
			discord_set_image_large("pubg")
			discord_set_image_small("playing")
		break
		case "Angry Birds Classic":
			discord_set_server(global.DID1)
			discord_set_image_large("angrybirdsclassic")
			discord_set_image_small("playing")
		break
		case "Angry Birds: Rio":
			discord_set_server(global.DID1)
			discord_set_image_large("abrio")
			discord_set_image_small("playing")
		break
		case "Angry Birds: Seasons":
			discord_set_server(global.DID1)
			discord_set_image_large("abrio")
			discord_set_image_small("playing")
		break
		case "Angry Birds: Space":
			discord_set_server(global.DID1)
			discord_set_image_large("abspace")
			discord_set_image_small("playing")
		break
		case "Angry Birds: Star Wars":
			discord_set_server(global.DID1)
			discord_set_image_large("abstarwars")
			discord_set_image_small("playing")
		break
		case "Angry Birds: Star Wars II":
			discord_set_server(global.DID1)
			discord_set_image_large("abstarwars2")
			discord_set_image_small("playing")
		break
		case "Bad Piggies":
			discord_set_server(global.DID1)
			discord_set_image_large("badpiggies")
			discord_set_image_small("playing")
		break
		case "Among Us":
			discord_set_server(global.DID1)
			discord_set_image_large("amongus")
			discord_set_image_small("playing")
		break
		case "Photoshop":
			discord_set_server(global.DID1)
			discord_set_image_large("photoshop")
			discord_set_image_small("playing")
		break
		case "Ragnarok Online":
			discord_set_server(global.DID1)
			discord_set_image_large("ragnarokonline")
			discord_set_image_small("playing")
		break
		case "Super Mario Bros X":
			discord_set_server(global.DID1)
			discord_set_image_large("smbx")
			discord_set_image_small("playing")
		break
		case "Super Mario Bros X2":
			discord_set_server(global.DID1)
			discord_set_image_large("smbx2")
			discord_set_image_small("playing")
		break
		case "Super Mario Unimaker":
			discord_set_server(global.DID1)
			discord_set_image_large("unimaker")
			discord_set_image_small("playing")
		break
		case "Aseprite":
			discord_set_server(global.DID1)
			discord_set_image_large("aseprite")
			discord_set_image_small("playing")
		break
		case "The Legend of Zelda: A Link to the Past":
			discord_set_server(global.DID1)
			discord_set_image_large("zeldalttp")
			discord_set_image_small("playing")
		break
		case "Super Mario World":
			discord_set_server(global.DID1)
			discord_set_image_large("snes-smw")
			discord_set_image_small("playing")
		break
		case "Chrono Trigger":
			discord_set_server(global.DID1)
			discord_set_image_large("chronotrigger")
			discord_set_image_small("playing")
		break
		case "The Legend of Zelda: The Minish Cap":
			discord_set_server(global.DID1)
			discord_set_image_large("zeldamc")
			discord_set_image_small("playing")
		break
		case "Secret of Mana":
			discord_set_server(global.DID1)
			discord_set_image_large("secretofmana")
			discord_set_image_small("playing")
		break
		case "Trials of Mana":
			discord_set_server(global.DID1)
			discord_set_image_large("trialsofmana")
			discord_set_image_small("playing")
		break
		case "State of Decay 2":
			discord_set_server(global.DID1)
			discord_set_image_large("stateofdecay2")
			discord_set_image_small("playing")
		break
		case "Minecraft Dungeons":
			discord_set_server(global.DID1)
			discord_set_image_large("minecraftdungeons")
			discord_set_image_small("playing")
		break
		case "Escape From Tarkov":
			discord_set_server(global.DID1)
			discord_set_image_large("escapefromtarkov")
			discord_set_image_small("playing")
		break
	}
}