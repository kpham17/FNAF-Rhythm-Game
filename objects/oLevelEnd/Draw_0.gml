/// @description Insert description here
// You can write your code in this editor
draw_set_font(Font2);
draw_text(450, 100, "FNAF");
draw_text(450, 150, "Score : "+string(global.score));
draw_text(450, 200, "Accuracy : "+string(global.accuracy) + "%");


if (global.accuracy > 70 && global.progress>95){
	draw_sprite_ext(GoldenFreddy, 0, 
	room_width/7*2, 350, 
	4, 4, 0, c_white, 1)
	draw_text(room_width/8*3, 350, "Secret Key "+ string(global.song_idx + 1)+ ": "+global.hidden);
}

draw_text(room_width/6, 550, "Press [R] to Restart Song");
draw_text(room_width/6, 650, "Press [Esc] to Return to Main Menu");
