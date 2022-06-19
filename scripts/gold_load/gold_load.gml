// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gold_load(){
ini_open("GAMEDATA/hiscore.ini");

global.Gold=ini_read_real("STAT", "GOLD", 0);

ini_close()
}