/// @description Insert description here
// You can write your code in this editor

files_name = ["fnaf1", "ItsBeenSoLong", "DieInAFire", "tempIGNT", "tempICFY", "JoinUsForaBite"];
song_files = [Song_FNAF1, Song_ItsBeenSoLong, Song_DieInAFire, Song_IGotNoTIme, Song_ICantFixYou, Song_JoinUsForABite];
songnames = ["FNAF", "It's Been So Long", "Die in a Fire", "I Got No Time", "I Can't Fix You", "Join Us For a Bite"];
displaynames = ["@N*#", "|t's #@)) sO ^0@*", "#IE @# @ fI$3", "1 9O7 &@ 7@#(", "* (AN'# $#* y)(", "j*9# uS #@) 1 $*^@"];
video_offsets = [62000, 0, 2000, 0, 0, 0];
hiddenCode = "ASSKLL";
hiddenMessage = "Hidden Message";


global.song_idx = 0;
global.accuracy = 0;
global.score = 0;
global.song_file = song_files[global.song_idx];
global.beatmap_file = files_name[global.song_idx]+".sm";
global.video_file = files_name[global.song_idx]+".mp4";
global.song_name = songnames[global.song_idx];
global.hidden = string_char_at(hiddenCode, global.song_idx);
global.voff = video_offsets[global.song_idx];

code_enter = false;
display_location = false;
entered = "";
clen = 0;

color1 = c_white;
color2 = c_dkgray;
alpha1 = 1;
alpha2 = 0.5;
