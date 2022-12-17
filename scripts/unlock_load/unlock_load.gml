// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function unlock_load(){
ini_open("GAMEDATA/hiscore.ini");

global.UnlockCharacterData=ini_read_real("SHOP", "0", 0);
global.UnlockAltPal=ini_read_real("SHOP", "1", 0);
global.UnlockSoundTest=ini_read_real("SHOP","4",0)
global.UnlockMovies=ini_read_real("SHOP","5",0)


ini_close()
}