function button_pressed(button_idx) {
	var btHit = collision_line(room_width/5*button_idx, button_row-40, room_width/5*button_idx, button_row+48, oButton, false, true);
	if (btHit) {
		score+= 100;
		combo++;
		comboAlpha = 2;
	}
	instance_destroy(btHit);
}
function button_held(button_idx){
	var btHit = collision_line(room_width/5*button_idx, button_row-40, room_width/5*button_idx, button_row+48, oButtonFreeze, false, true);
	if (btHit) {
		score+= 20;
		combo+=.2;
		comboAlpha = 2;
		instance_destroy(btHit);
	}
}


#region Button Normal
if (keyboard_check_pressed(ord("A"))) {
	button_pressed(1);
} 
if (keyboard_check_pressed(ord("S"))) {
	button_pressed(2);
}
if (keyboard_check_pressed(ord("K"))) {
	button_pressed(3);
}
if (keyboard_check_pressed(ord("L"))) {
	button_pressed(4);
}
#endregion

#region Button Freeze
if (keyboard_check(ord("A"))) {
	button_press1 += 0.2;
	but1 = press_scale;
	button_held(1);
}else {button_press1 = 0; but1 = nscale;}

if (keyboard_check(ord("S"))) {
	button_press2 += 0.2;
	but2 = press_scale;
	button_held(2);
}else {button_press2 = 0; but2 = nscale;}

if (keyboard_check(ord("K"))) {
	button_press3 += 0.2;
	but3 = press_scale;
	button_held(3);
}else {button_press3 = 0; but3 = nscale;}

if (keyboard_check(ord("L"))) {
	button_press4 += 0.2;
	but4 = press_scale;
	button_held(4);
}else {button_press4 = 0; but4 = nscale;}
#endregion

global.score = score;
global.accuracy = score/maxscore * 100;
global.progress = (pos/lines)*100;

timing = audio_sound_get_track_position(Music)

//tick+=dropSpeed;

note_time = timing - offset;
//Get current note to read
//time_pos = floor(note_time/hold_step);
curr_pos = floor(note_time/time_step)

if (curr_pos < 0) return;
// get note to render
new_note = (curr_pos != pos);

if (curr_pos >= lines){
	dropSpeed = 0;
	room_goto(LevelEndRoom)
	exit;
	
};
pos = curr_pos;

var first   = string_char_at(scr_name[pos], 1);
var second  = string_char_at(scr_name[pos], 2);
var third   = string_char_at(scr_name[pos], 3);
var fourth  = string_char_at(scr_name[pos], 4);
if (new_note) 
{
switch(first)
{
	
	case("1"):
		var inst_ = instance_create_depth(room_width/5, 0, 0, oButton);
		inst_.image_index = 0;			
		button_hold[0] = false;
		maxscore+=100;
	break;
	
	case("2"):
		var inst_ = instance_create_depth(room_width/5, 0, 0, oButtonFreeze);
		inst_.image_index = 0;
		button_hold[0] = true;
		maxscore+=20;		
	break;

	case("3"):
		var inst_ = instance_create_depth(room_width/5, 0, 0, oButtonFreeze);
		inst_.image_index = 0;
		inst_.freeze = 2;
		button_hold[0] = false;
		maxscore+=20;

	break;
	
}
switch(second)
{
	
	case("1"):
		var inst_ = instance_create_depth(room_width/5*2, 0, 0, oButton);
		inst_.image_index = 1;
		button_hold[1] = false;
		maxscore+=100;
	break;
	
	case("2"):
		var inst_ = instance_create_depth(room_width/5*2, 0, 0, oButtonFreeze);
		inst_.image_index = 1;
		button_hold[1] = true;
		maxscore+=20;
	break;

	case("3"):
		var inst_ = instance_create_depth(room_width/5*2, 0, 0, oButtonFreeze);
		inst_.image_index = 1;
		inst_.freeze = 2;
		button_hold[1] = false;
		maxscore+=20;

	break;
	
}
switch(third)
{
	
	case("1"):
		var inst_ = instance_create_depth(room_width/5*3, 0, 0, oButton);
		inst_.image_index = 2;
		button_hold[2] = false;
		maxscore+=100;
	break;
	
	case("2"):
		var inst_ = instance_create_depth(room_width/5*3, 0, 0, oButtonFreeze);
		inst_.image_index = 2;
		button_hold[2] = true;
		maxscore+=20;
	break;

	case("3"):
		var inst_ = instance_create_depth(room_width/5*3, 0, 0, oButtonFreeze);
		inst_.image_index = 2;
		inst_.freeze = 2;
		button_hold[2] = false;
		maxscore+=20;

	break;
	
}
switch(fourth)
{
	
	case("1"):
		var inst_ = instance_create_depth(room_width/5*4, 0, 0, oButton);
		inst_.image_index = 3;
		button_hold[3] = false;
		maxscore+=100;
	break;
	
	case("2"):
		var inst_ = instance_create_depth(room_width/5*4, 0, 0, oButtonFreeze);
		inst_.image_index = 3;
		button_hold[3] = true;
		maxscore+=20;
	break;	

	case("3"):
		var inst_ = instance_create_depth(room_width/5*4, 0, 0, oButtonFreeze);
		inst_.image_index = 3;
		inst_.freeze = 2;
		button_hold[3] = false;
		maxscore+=20;
	break;
}	
}

if (!new_note){
if (button_hold[0] && first="0"){
	var inst_ = instance_create_depth(room_width/5*1, 0, 0, oButtonFreeze);
	inst_.image_index = 0;
	inst_.freeze = 1;
	maxscore+=20;
}
if (button_hold[1] && second="0"){
	var inst_ = instance_create_depth(room_width/5*2, 0, 0, oButtonFreeze);
	inst_.image_index = 1;
	inst_.freeze = 1;
	maxscore+=20;
}
if (button_hold[2] && third="0"){
	var inst_ = instance_create_depth(room_width/5*3, 0, 0, oButtonFreeze);
	inst_.image_index = 2;
	inst_.freeze = 1;
	maxscore+=20;
}
if (button_hold[3] && fourth="0"){
	var inst_ = instance_create_depth(room_width/5*4, 0, 0, oButtonFreeze);
	inst_.image_index = 3;
	inst_.freeze = 1;
	maxscore+=20;
}
}
