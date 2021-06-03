function draw_text_outline(argument0, argument1, argument2, argument3, argument4) {
	//draw_text_outline(text,x,y,color,outline)

	draw_text_color(argument1+1,argument2+1,argument0,argument4,argument4,argument4,argument4,1)
	draw_text_color(argument1-1,argument2-1,argument0,argument4,argument4,argument4,argument4,1)
	draw_text_color(argument1,argument2+1,argument0,argument4,argument4,argument4,argument4,1)
	draw_text_color(argument1+1,argument2,argument0,argument4,argument4,argument4,argument4,1)
	draw_text_color(argument1,argument2-1,argument0,argument4,argument4,argument4,argument4,1)
	draw_text_color(argument1-1,argument2,argument0,argument4,argument4,argument4,argument4,1)
	draw_text_color(argument1-1,argument2+1,argument0,argument4,argument4,argument4,argument4,1)
	draw_text_color(argument1+1,argument2-1,argument0,argument4,argument4,argument4,argument4,1)
	draw_text_color(argument1,argument2,argument0,argument3,argument3,argument3,argument3,1)


}
