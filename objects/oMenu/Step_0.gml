/// @description Insert description here
// You can write your code in this editor

if (code_enter = false){
	if (keyboard_check_pressed(ord("R")))
	{
		code_enter = true;
		color2 = c_white;
		color1 = c_dkgray;
		alpha2 = 1;
		alpha1 = 0.5;
		clen = 0;
		entered = "";
		return;
	}
	if (keyboard_check_pressed(ord("A"))){
		global.song_idx = (global.song_idx+6-1) % 6;
		global.song_file = song_files[global.song_idx];
		global.beatmap_file = beatmap_files[global.song_idx];
		global.song_name = songnames[global.song_idx];
		global.hidden = string_char_at(hiddenCode, global.song_idx);
		
		return;
	}
	if (keyboard_check_pressed(ord("S"))){
		global.song_idx = (global.song_idx+1) % 6;
		global.song_file = song_files[global.song_idx];
		global.beatmap_file = beatmap_files[global.song_idx];
		global.song_name = songnames[global.song_idx];
		global.hidden = string_char_at(hiddenCode, global.song_idx);

		return;
	}
	if (keyboard_check_pressed(ord("L"))){
		room_goto(GameRoom1);
		exit;
	}
}
if (code_enter = true){
	if (keyboard_check_pressed(ord("A"))){
		entered  = entered + "A";
		clen++;
	}
	if (keyboard_check_pressed(ord("S"))){
		entered  = entered + "S";
		clen++;
	}
	if (keyboard_check_pressed(ord("K"))){
		entered  = entered + "K";
		clen++;
	}
	if (keyboard_check_pressed(ord("L"))){
		entered  = entered + "L";
		clen++;
	}
	if (clen==6) {
		if 	(entered == hiddenCode) display_location = true;
		color1 = c_white;
		color2 = c_dkgray;
		alpha1 = 1;
		alpha2 = 0.5;
		code_enter = false;
		clen = 0;
		entered = "";
	}
}