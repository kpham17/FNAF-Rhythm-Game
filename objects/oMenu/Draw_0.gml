/// @description Insert description here
// You can write your code in this editor

draw_set_font(Font3);
draw_text_color(room_width/10, 100, "LIVING TOMBSTONE DANCERS", c_white, c_white, c_dkgray, c_dkgray, 0.8);


keystr = "* * * * * * _ _ _ _ _ _"

draw_set_font(Font2);
draw_text_color(room_width/6, 300, "Song Select", 
	color1, color1, color1, color1, alpha1);
draw_text_color(room_width/6, 450, "Hidden Code [R]", 
	color2, color2, color2, color2, alpha2);
draw_text_color(room_width/6, 500, string_copy(keystr, 13 - clen*2, 11),
	color2, color2, color2, color2, alpha2);
if (display_location) draw_text(room_width/6, 600, "Location TBD"); 



draw_set_font(Font1);
draw_text_color(room_width/6 *3 - 40, 310, "(Left[A], Right[S], Select[L])",
	color1, color1, color1, color1, alpha1);
draw_text_color(room_width/6 + 40, 375, string(global.song_idx+ 1)+". " + displaynames[global.song_idx],
	color1, color1, color1, color1, alpha1);
