/// @description Do Stuff

//Mouse wheel scrolling games list
if mouse_wheel_up() then{
	if Scroll < 0 then{
		Scroll += 1
	}
}
else if mouse_wheel_down() then{
	if Scroll > MaxScroll then{
		Scroll -= 1
	}
}

//Escape to go back
if keyboard_check_pressed(vk_escape) then{
	room_goto(room_main)
}