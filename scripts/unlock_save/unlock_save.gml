// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function unlock_save(){
ini_open("GAMEDATA/hiscore.ini");

ini_write_real("SHOPCG", "0", global.ClearGame)

ini_write_real("SHOP", "0", global.UnlockCharacterData)
ini_write_real("SHOP", "1", global.UnlockAltPal)
ini_write_real("SHOP", "2", global.UnlockAltPal2)
ini_write_real("SHOP", "3", global.UnlockAltPal3)

ini_write_real("SHOP", "4", global.UnlockSoundTest)
ini_write_real("SHOP", "5", global.UnlockMovies)
ini_write_real("SHOP", "6", global.FishingUnlock)
ini_write_real("SHOP", "7", global.SlotMachineUnlock)

ini_write_real("SHOP", "8", global.MiniGameUnlock1)
ini_write_real("SHOP", "9", global.MiniGameUnlock2)
ini_write_real("SHOP", "10", global.MiniGameUnlock3)
ini_write_real("SHOP", "11", global.MiniGameUnlock4)

ini_write_real("SHOP", "12", global.MiniGameUnlock5)
ini_write_real("SHOP", "13", global.MiniGameUnlock6)
ini_write_real("SHOP", "14", global.SurvivalUnlock)
ini_write_real("SHOP", "15", global.BossBattleUnlock)


ini_write_real("SHOPCa", "1", global.UnlockStageA[1])
ini_write_real("SHOPCa", "2", global.UnlockStageA[2])
ini_write_real("SHOPCa", "3", global.UnlockStageA[3])
ini_write_real("SHOPCa", "4", global.UnlockStageA[4])
ini_write_real("SHOPCa", "5", global.UnlockStageA[5])
ini_write_real("SHOPCa", "6", global.UnlockStageA[6])
ini_write_real("SHOPCa", "7", global.UnlockStageA[7])
ini_write_real("SHOPCa", "8", global.UnlockStageA[8])
ini_write_real("SHOPCa", "9", global.UnlockStageA[9])
ini_write_real("SHOPCa", "10", global.UnlockStageA[10])
ini_write_real("SHOPCa", "11", global.UnlockStageA[11])
ini_write_real("SHOPCa", "12", global.UnlockStageA[12])
ini_write_real("SHOPCa", "13", global.UnlockStageA[13])
ini_write_real("SHOPCa", "14", global.UnlockStageA[14])
ini_write_real("SHOPCa", "15", global.UnlockStageA[15])
ini_write_real("SHOPCa", "16", global.UnlockStageA[16])

ini_write_real("SHOPCc", "1", global.CheatUnlock[1])
ini_write_real("SHOPCc", "2", global.CheatUnlock[2])
ini_write_real("SHOPCc", "3", global.CheatUnlock[3])
ini_write_real("SHOPCc", "4", global.CheatUnlock[4])
ini_write_real("SHOPCc", "5", global.CheatUnlock[5])
ini_write_real("SHOPCc", "6", global.CheatUnlock[6])
ini_write_real("SHOPCc", "7", global.CheatUnlock[7])
ini_write_real("SHOPCc", "8", global.CheatUnlock[8])
ini_write_real("SHOPCc", "9", global.CheatUnlock[9])
ini_write_real("SHOPCc", "10", global.CheatUnlock[10])
ini_write_real("SHOPCc", "11", global.CheatUnlock[11])
ini_write_real("SHOPCc", "12", global.CheatUnlock[12])
ini_write_real("SHOPCc", "13", global.CheatUnlock[13])
ini_write_real("SHOPCc", "14", global.CheatUnlock[14])
ini_write_real("SHOPCc", "15", global.CheatUnlock[15])
ini_write_real("SHOPCc", "16", global.CheatUnlock[16])

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

ini_write_real("SHOPGg", "1", global.GalleryUnlock[1])
ini_write_real("SHOPGg", "2", global.GalleryUnlock[2])
ini_write_real("SHOPGg", "3", global.GalleryUnlock[3])
ini_write_real("SHOPGg", "4", global.GalleryUnlock[4])
ini_write_real("SHOPGg", "5", global.GalleryUnlock[5])
ini_write_real("SHOPGg", "6", global.GalleryUnlock[6])
ini_write_real("SHOPGg", "7", global.GalleryUnlock[7])
ini_write_real("SHOPGg", "8", global.GalleryUnlock[8])
ini_write_real("SHOPGg", "9", global.GalleryUnlock[9])
ini_write_real("SHOPGg", "10", global.GalleryUnlock[10])
ini_write_real("SHOPGg", "11", global.GalleryUnlock[11])
ini_write_real("SHOPGg", "12", global.GalleryUnlock[12])
ini_write_real("SHOPGg", "13", global.GalleryUnlock[13])
ini_write_real("SHOPGg", "14", global.GalleryUnlock[14])
ini_write_real("SHOPGg", "15", global.GalleryUnlock[15])
ini_write_real("SHOPGg", "16", global.GalleryUnlock[16])

ini_write_real("SHOPG", "1", global.Gallery[1])
ini_write_real("SHOPG", "2", global.Gallery[2])
ini_write_real("SHOPG", "3", global.Gallery[3])
ini_write_real("SHOPG", "4", global.Gallery[4])
ini_write_real("SHOPG", "5", global.Gallery[5])
ini_write_real("SHOPG", "6", global.Gallery[6])
ini_write_real("SHOPG", "7", global.Gallery[7])
ini_write_real("SHOPG", "8", global.Gallery[8])
ini_write_real("SHOPG", "9", global.Gallery[9])
ini_write_real("SHOPG", "10", global.Gallery[10])
ini_write_real("SHOPG", "11", global.Gallery[11])
ini_write_real("SHOPG", "12", global.Gallery[12])
ini_write_real("SHOPG", "13", global.Gallery[13])
ini_write_real("SHOPG", "14", global.Gallery[14])
ini_write_real("SHOPG", "15", global.Gallery[15])
ini_write_real("SHOPG", "16", global.Gallery[16])

ini_write_real("Tdata", "0", global.TrainingClear[0])
ini_write_real("Tdata", "1", global.TrainingClear[1])
ini_write_real("Tdata", "2", global.TrainingClear[2])
ini_write_real("Tdata", "3", global.TrainingClear[3])
ini_write_real("Tdata", "4", global.TrainingClear[4])

ini_write_real("Mdata", "1", global.MinigameWin[1])
ini_write_real("Mdata", "2", global.MinigameWin[2])
ini_write_real("Mdata", "3", global.MinigameWin[3])
ini_write_real("Mdata", "4", global.MinigameWin[4])
ini_write_real("Mdata", "5", global.MinigameWin[5])
ini_write_real("Mdata", "6", global.MinigameWin[6])

var _rep=1;
repeat(30)
{
ini_write_real("UCdata", ""+string(_rep), global.UnlockCutscene[_rep])
_rep+=1;
}

ini_close()
}

function pet_save(_no){
ini_open("GAMEDATA/hiscore.ini");
ini_write_real("PETdata", ""+string(_no), global.PetPetted[_no])
ini_close()
}

function breaksecret_save(_no){
ini_open("GAMEDATA/hiscore.ini");
ini_write_real("SECdata", ""+string(_no), global.SecretBreak[_no])
ini_close()
}