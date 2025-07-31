// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function unlock_load(){
ini_open("GAMEDATA/hiscore.ini");

global.ClearGame=ini_read_real("SHOPCG", "0", 0);

global.UnlockCharacterData=ini_read_real("SHOP", "0", 0);
global.UnlockAltPal=ini_read_real("SHOP", "1", 0);
global.UnlockAltPal2=ini_read_real("SHOP", "2", 0);
global.UnlockAltPal3=ini_read_real("SHOP", "3", 0);
global.UnlockSoundTest=ini_read_real("SHOP","4",0)
global.UnlockMovies=ini_read_real("SHOP","5",0)
global.FishingUnlock=ini_read_real("SHOP","6",0)
global.SlotMachineUnlock=ini_read_real("SHOP","7",0)
global.MiniGameUnlock1=ini_read_real("SHOP","8",0)
global.MiniGameUnlock2=ini_read_real("SHOP","9",0)
global.MiniGameUnlock3=ini_read_real("SHOP","10",0)
global.MiniGameUnlock4=ini_read_real("SHOP","11",0)
global.MiniGameUnlock5=ini_read_real("SHOP","12",0)
global.MiniGameUnlock6=ini_read_real("SHOP","13",0)
global.SurvivalUnlock=ini_read_real("SHOP","14",0)
global.BossBattleUnlock=ini_read_real("SHOP","15",0)


global.UnlockStageA[1]=ini_read_real("SHOPCa", "0", 0);
global.UnlockStageA[2]=ini_read_real("SHOPCa", "1", 0);
global.UnlockStageA[3]=ini_read_real("SHOPCa", "2", 0);
global.UnlockStageA[4]=ini_read_real("SHOPCa", "3", 0);
global.UnlockStageA[5]=ini_read_real("SHOPCa","4",0)
global.UnlockStageA[6]=ini_read_real("SHOPCa","5",0)
global.UnlockStageA[7]=ini_read_real("SHOPCa","6",0)
global.UnlockStageA[8]=ini_read_real("SHOPCa","7",0)
global.UnlockStageA[9]=ini_read_real("SHOPCa","8",0)
global.UnlockStageA[10]=ini_read_real("SHOPCa","9",0)
global.UnlockStageA[11]=ini_read_real("SHOPCa","10",0)
global.UnlockStageA[12]=ini_read_real("SHOPCa","11",0)
global.UnlockStageA[13]=ini_read_real("SHOPCa","12",0)
global.UnlockStageA[14]=ini_read_real("SHOPCa","13",0)
global.UnlockStageA[15]=ini_read_real("SHOPCa","14",0)
global.UnlockStageA[16]=ini_read_real("SHOPCa","15",0)

global.CheatUnlock[1]=ini_read_real("SHOPCc", "1", 0);
global.CheatUnlock[2]=ini_read_real("SHOPCc", "2", 0);
global.CheatUnlock[3]=ini_read_real("SHOPCc", "3", 0);
global.CheatUnlock[4]=ini_read_real("SHOPCc", "4", 0);
global.CheatUnlock[5]=ini_read_real("SHOPCc","5",0)
global.CheatUnlock[6]=ini_read_real("SHOPCc","6",0)
global.CheatUnlock[7]=ini_read_real("SHOPCc","7",0)
global.CheatUnlock[8]=ini_read_real("SHOPCc","8",0)
global.CheatUnlock[9]=ini_read_real("SHOPCc","9",0)
global.CheatUnlock[10]=ini_read_real("SHOPCc","10",0)
global.CheatUnlock[11]=ini_read_real("SHOPCc","11",0)
global.CheatUnlock[12]=ini_read_real("SHOPCc","12",0)
global.CheatUnlock[13]=ini_read_real("SHOPCc","13",0)
global.CheatUnlock[14]=ini_read_real("SHOPCc","14",0)
global.CheatUnlock[15]=ini_read_real("SHOPCc","15",0)
global.CheatUnlock[16]=ini_read_real("SHOPCc","16",0)

global.Cheat[1]=ini_read_real("SHOPC", "1", 0);
global.Cheat[2]=ini_read_real("SHOPC", "2", 0);
global.Cheat[3]=ini_read_real("SHOPC", "3", 0);
global.Cheat[4]=ini_read_real("SHOPC", "4", 0);
global.Cheat[5]=ini_read_real("SHOPC","5",0)
global.Cheat[6]=ini_read_real("SHOPC","6",0)
global.Cheat[7]=ini_read_real("SHOPC","7",0)
global.Cheat[8]=ini_read_real("SHOPC","8",0)
global.Cheat[9]=ini_read_real("SHOPC","9",0)
global.Cheat[10]=ini_read_real("SHOPC","10",0)
global.Cheat[11]=ini_read_real("SHOPC","11",0)
global.Cheat[12]=ini_read_real("SHOPC","12",0)
global.Cheat[13]=ini_read_real("SHOPC","13",0)
global.Cheat[14]=ini_read_real("SHOPC","14",0)
global.Cheat[15]=ini_read_real("SHOPC","15",0)
global.Cheat[16]=ini_read_real("SHOPC","16",0)

global.GalleryUnlock[1]=ini_read_real("SHOPGg", "0", 0);
global.GalleryUnlock[2]=ini_read_real("SHOPGg", "1", 0);
global.GalleryUnlock[3]=ini_read_real("SHOPGg", "2", 0);
global.GalleryUnlock[4]=ini_read_real("SHOPGg", "3", 0);
global.GalleryUnlock[5]=ini_read_real("SHOPGg","4",0)
global.GalleryUnlock[6]=ini_read_real("SHOPGg","5",0)
global.GalleryUnlock[7]=ini_read_real("SHOPGg","6",0)
global.GalleryUnlock[8]=ini_read_real("SHOPGg","7",0)
global.GalleryUnlock[9]=ini_read_real("SHOPGg","8",0)
global.GalleryUnlock[10]=ini_read_real("SHOPGg","9",0)
global.GalleryUnlock[11]=ini_read_real("SHOPGg","10",0)
global.GalleryUnlock[12]=ini_read_real("SHOPGg","11",0)
global.GalleryUnlock[13]=ini_read_real("SHOPGg","12",0)
global.GalleryUnlock[14]=ini_read_real("SHOPGg","13",0)
global.GalleryUnlock[15]=ini_read_real("SHOPGg","14",0)
global.GalleryUnlock[16]=ini_read_real("SHOPGg","15",0)

global.Gallery[1]=ini_read_real("SHOPG", "1", 0);
global.Gallery[2]=ini_read_real("SHOPG", "2", 0);
global.Gallery[3]=ini_read_real("SHOPG", "3", 0);
global.Gallery[4]=ini_read_real("SHOPG", "4", 0);
global.Gallery[5]=ini_read_real("SHOPG","5",0)
global.Gallery[6]=ini_read_real("SHOPG","6",0)
global.Gallery[7]=ini_read_real("SHOPG","7",0)
global.Gallery[8]=ini_read_real("SHOPG","8",0)
global.Gallery[9]=ini_read_real("SHOPG","9",0)
global.Gallery[10]=ini_read_real("SHOPG","10",0)
global.Gallery[11]=ini_read_real("SHOPG","11",0)
global.Gallery[12]=ini_read_real("SHOPG","12",0)
global.Gallery[13]=ini_read_real("SHOPG","13",0)
global.Gallery[14]=ini_read_real("SHOPG","14",0)
global.Gallery[15]=ini_read_real("SHOPG","15",0)
global.Gallery[16]=ini_read_real("SHOPG","16",0)

///Training
global.TrainingClear[0]=ini_read_real("Tdata", "0", 0);
global.TrainingClear[1]=ini_read_real("Tdata", "1", 0);
global.TrainingClear[2]=ini_read_real("Tdata", "2", 0);
global.TrainingClear[3]=ini_read_real("Tdata", "3", 0);
global.TrainingClear[4]=ini_read_real("Tdata", "4", 0);


global.MinigameWin[1]=ini_read_real("Mdata", "1", 0);
global.MinigameWin[2]=ini_read_real("Mdata", "2", 0);
global.MinigameWin[3]=ini_read_real("Mdata", "3", 0);
global.MinigameWin[4]=ini_read_real("Mdata", "4", 0);
global.MinigameWin[5]=ini_read_real("Mdata", "5", 0);
global.MinigameWin[6]=ini_read_real("Mdata", "6", 0);

var _rep=1;
repeat(30)
{
global.UnlockCutscene[_rep]=ini_read_real("UCdata", ""+string(_rep), 0);
_rep+=1;
}

var _rep=1;
repeat(20)
{
global.PetPetted[_rep]=ini_read_real("PETdata", ""+string(_rep), 0)
_rep+=1;
}

var _rep=1;
repeat(30)
{
global.SecretBreak[_rep]=ini_read_real("SECdata", ""+string(_rep), 0)
_rep+=1;
}

repeat(30)
{
global.FishData[_rep]=ini_read_real("FISHdata", ""+string(_rep), 0);
_rep+=1;
}

global.AllStageModeUnlock=ini_read_real("ULdata", "0", 0)
global.SecretBoss=ini_read_real("ULdata", "1", 0)


ini_close()
}