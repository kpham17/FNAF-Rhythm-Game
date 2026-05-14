
var _vid_data = video_draw();
var _vid_stat = _vid_data[0];

var c_cgrey = make_color_rgb(200, 200, 200);

if (_vid_stat == 0) { // 0 means the video is successfully playing
    surf = _vid_data[1];
	draw_surface_stretched_ext(surf, 0, 0, room_width, room_height, c_ltgrey, 0.8);
}


draw_set_color(c_white);
draw_line_width(0, button_row, room_width, button_row, 5);


/// Lines
draw_set_alpha(0.3);
for(var i=0; i<room_height; i++) {
	if((i-tick)%64 == 0) draw_line(225, i, room_width-225, i);
}
draw_set_alpha(1);


// Arrows
draw_sprite_ext(Bonnie_Pressed, floor(button_press1)%4, 
	room_width/5*1, button_row, 
	but1, but1, 0, c_white, 1);
draw_sprite_ext(Foxy_Pressed,   floor(button_press2)%4, 
	room_width/5*2, button_row , 
	but2, but2, 0, c_white, 1);
draw_sprite_ext(Freddy_Pressed, floor(button_press3)%4, 
	room_width/5*3, button_row, 
	but3, but3, 0, c_white, 1);
draw_sprite_ext(Chica_Pressed,  floor(button_press4)%4, 
	room_width/5*4, button_row, 
	but4, but4, 0, c_white, 1);


/// Text
draw_set_font(Font1);
draw_text(20, 10, title);
draw_text(20, 30, artist);
draw_text(20, 50, "Progress: " + string(timing) + " s, " + string((pos/lines)*100) + "%" );
draw_text(20, 70, "Score : "+  string(score) +" / " + string(maxscore));
draw_text(20, 90, "Accuracy : "+string(score/maxscore * 100) + "%");

draw_set_halign(fa_right);
draw_text(1340, 10, "Reset: [R]");
draw_text(1340, 30, "Exit: [Esc]");


/// Combos
draw_set_halign(fa_center);

draw_set_font(Font2);
var c_turquoise = make_color_rgb(16, 239, 194);
if (combo == 0)                draw_text_color(room_width/2, room_height/2, 
	"MISSED", c_red, c_red, c_red, c_red, comboAlpha);
if (combo <= 10 && combo != 0) draw_text_color(room_width/2, room_height/2, 
	"OKAY: "   + string(floor(combo))+"x", 
	c_ltgray, c_ltgray, c_ltgray, c_ltgray, comboAlpha);
if (combo >= 50)               draw_text_color(room_width/2, room_height/2, 
	"AMAZING:" + string(floor(combo))+"x", 
		c_fuchsia, c_turquoise, c_white, c_turquoise, comboAlpha);
else if (combo >= 25)          draw_text_color(room_width/2, room_height/2, 
	"GREAT:"   + string(floor(combo))+"x", 
	c_aqua, c_blue, c_aqua, c_blue, comboAlpha);
else if (combo >  10)          draw_text_color(room_width/2, room_height/2, 
	"GOOD:"    + string(floor(combo))+"x", 
	c_lime, c_green, c_lime, c_green, comboAlpha);

draw_text(room_width/5*1, 700, "[A]");
draw_text(room_width/5*2, 700, "[S]");
draw_text(room_width/5*3, 700, "[K]");
draw_text(room_width/5*4, 700, "[L]");

draw_set_halign(fa_left);

