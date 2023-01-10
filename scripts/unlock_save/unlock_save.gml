// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function unlock_save(){
ini_open("GAMEDATA/hiscore.ini");

ini_write_real("SHOP", "0", global.UnlockCharacterData)
ini_write_real("SHOP", "1", global.UnlockAltPal)
ini_write_real("SHOP", "2", global.UnlockAltPal2)
ini_write_real("SHOP", "3", global.UnlockAltPal3)

ini_write_real("SHOP", "4", global.UnlockSoundTest)
ini_write_real("SHOP", "5", global.UnlockMovies)


ini_close()
}