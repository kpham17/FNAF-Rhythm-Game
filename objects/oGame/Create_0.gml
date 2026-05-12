depth = 100;
score = 0;
timing = 0;
tick = 0;

new_note = false;
maxscore = 0;
global.accuracy = 100;
global.score = 0;
global.progress = 0;

soff = 32;
button_row = 600;

button_press1 = 0;
button_press2 = 0;
button_press3 = 0;
button_press4 = 0;

button_hold = [false, false, false, false];

nscale = 2;
but1 = nscale;
but2 = nscale;
but3 = nscale;
but4 = nscale;
press_scale = 2.4;
combo = 0;
comboAlpha = 0;


//url_open("http://deepx.ucsd.edu/ddc");

lines = 0;
pos = -1;

var sm_file = global.beatmap_file;
var file = file_text_open_read(sm_file);

if (file == -1) {
	show_message("COULDN'T FIND LEVEL .sm / .txt FILE !");
	exit;
}

while(!file_text_eof(file)) {
	file_text_readln(file);
	lines++;
}
file_text_close(file);





file_ = file_text_open_read(sm_file);

title = file_text_readln(file_);

artist = file_text_readln(file_);
offset = real(string_delete(file_text_readln(file_), 1, 8));
BPM = real(string_delete(file_text_readln(file_), 1, 6));
// one beat = 1 quarter note, since is 1/8th division-> time step is halfed
time_step = 60 / BPM / 2;
dropSpeed = BPM /12 ;


file_text_readln(file_);


j=0;
for(var i=0; i<lines-5; i++) {
	fread = file_text_read_string(file_);
	if (fread != ",") {
		scr_name[j] = fread;
		j++;
	};
	file_text_readln(file_);
}
file_text_close(file_);

lines = j;

//var file_sound = get_open_filename("*.mp3", "");
//var sound = audio_create_stream(Song_FNAF1);
// Map is split up to 8th notes per measure
//
Music = audio_play_sound(global.song_file, 10, false);
audio_master_gain(0.3);