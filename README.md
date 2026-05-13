# FNAF-Rhythm-Game

Repository for FNAF Ditch Day 2026 Rhythm Game.

Containes a both the entire Gamemaker library and standalone(found in release) zip file that can be run.
Run by downloading the zip file and running the executable. To change the hidden message and cheat code, pull the repository and change within the oMenu object. Cheat code is within the Create Event in variable `hiddenCode`; hidden message is within the Create Event in variable `hiddenMessage`.

## Main Menu Commands:
Fullscreen: F
Song Select with A and S to navigate and L to select the song.
Input cheat code with R. Will lock out of song select until an attempt (6 char string) is made.

## Game:
In order for the parts of the cheat code to appear, need to clear the song with above a 70%. When 70% above is reached Golden Freddy will appear.
While playing the song pressing R will restart the song. Pressing Esc will end the song and bring to the level end menu

On the level end screen will show accuracy and score. Pressing R will restart the song, Pressing Esc returns to the main menu

Beatmaps made using [AutoStepper](https://github.com/phr00t/AutoStepper).
