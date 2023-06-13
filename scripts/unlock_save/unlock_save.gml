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


ini_write_real("SHOPC", "1", global.Cheat[1])
ini_write_real("SHOPC", "2", global.Cheat[2])
ini_write_real("SHOPC", "3", global.Cheat[3])
ini_write_real("SHOPC", "4", global.Cheat[4])
ini_write_real("SHOPC", "5", global.Cheat[5])
ini_write_real("SHOPC", "6", global.Cheat[6])
ini_write_real("SHOPC", "7", global.Cheat[7])
ini_write_real("SHOPC", "8", global.Cheat[8])
ini_write_real("SHOPC", "9", global.Cheat[9])
ini_write_real("SHOPC", "10", global.Cheat[10])
ini_write_real("SHOPC", "11", global.Cheat[11])
ini_write_real("SHOPC", "12", global.Cheat[12])
ini_write_real("SHOPC", "13", global.Cheat[13])
ini_write_real("SHOPC", "14", global.Cheat[14])
ini_write_real("SHOPC", "15", global.Cheat[15])
ini_write_real("SHOPC", "16", global.Cheat[16])

ini_write_real("SHOPG", "1", global.GalleryUnlock[1])
ini_write_real("SHOPG", "2", global.GalleryUnlock[2])
ini_write_real("SHOPG", "3", global.GalleryUnlock[3])
ini_write_real("SHOPG", "4", global.GalleryUnlock[4])
ini_write_real("SHOPG", "5", global.GalleryUnlock[5])
ini_write_real("SHOPG", "6", global.GalleryUnlock[6])
ini_write_real("SHOPG", "7", global.GalleryUnlock[7])
ini_write_real("SHOPG", "8", global.GalleryUnlock[8])
ini_write_real("SHOPG", "9", global.GalleryUnlock[9])
ini_write_real("SHOPG", "10", global.GalleryUnlock[10])
ini_write_real("SHOPG", "11", global.GalleryUnlock[11])
ini_write_real("SHOPG", "12", global.GalleryUnlock[12])
ini_write_real("SHOPG", "13", global.GalleryUnlock[13])
ini_write_real("SHOPG", "14", global.GalleryUnlock[14])
ini_write_real("SHOPG", "15", global.GalleryUnlock[15])
ini_write_real("SHOPG", "16", global.GalleryUnlock[16])


ini_close()
}