/// @description Do Stuff

//Fix depending on FPS
if global.FPS = 30 then{
	var _rate = 0.1
}
else if global.FPS = 60 then{
	var _rate = 0.05
}
else if global.FPS = 120 then{
	var _rate = 0.025
}

//Highlight animation
if(col_mode == 0){

    if(col_numb < 1)
        col_numb += _rate
    else
        col_mode =! col_mode;
}
else{

    if(col_numb > 0)
        col_numb -= _rate
    else
        col_mode =! col_mode;
}