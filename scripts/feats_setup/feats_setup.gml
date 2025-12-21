// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function feats_default(){
	
for (var i=0; i<100; i++)
{global.Feats[i]=0;}

global.Feats[1]=2 ///Default to show them
global.Feats[2]=2 ///Default to show them
global.Feats[3]=2 ///Default to show them
global.Feats[4]=2 ///Default to show them
global.Feats[5]=2 ///Default to show them
global.Feats[35]=2 ///Default to show them



}

function feats_stageunlock(){



}

function feats_check(_no){

var i=_no;
var setfeats=0; var savefeats=0; var checkfeat=0;
var featname=""

if _no=-1
{
for (var i=0; i<60; i++)
{setfeats=0 checkfeat=feat_data(i); if checkfeat setfeats=1
if global.Feats[i]!=1
{if setfeats {global.SaveFeat=1 global.Feats[i]=1 feat_create(i)}}
}
}
else
{setfeats=feat_data(_no); i=_no
	
	if global.Feats[i]!=1
{if setfeats {global.SaveFeat=1 global.Feats[i]=1 feat_create(i)}}
	}

if setfeats global.SaveFeat=1


if global.Feats[35]=1 if global.Feats[36]=0 global.Feats[36]=2
if global.Feats[36]=1 if global.Feats[37]=0 global.Feats[37]=2

if global.SaveFeat feats_save() global.SaveFeat=0
}


function feat_data(_no)
{var setfeats=0; var featname=""
switch(_no)
{
case 1: featname="DIVA'S DEBUT" ///Clear Stage 1
if object_index=oContinueScreen if stageClear=1 and room=rm_stage1 {setfeats=1} break;

case 2: featname="MUST PET!" ///PET THE FIRST ANIMAL IN ANY STAGE.
if instance_exists(oPlayer) if oPlayer.anim=10010 setfeats=1 break;

case 3: featname="ENCORE!" ///USE YOUR FIRST CONTINUE.
if instance_exists(oPlayer) if oPlayer.continueScreen=2 setfeats=1 break;

case 4: featname="SHOWTIME FINISH" ///DEFEAT A BOSS WITH A SHOWTIME ATTACK.
if object_index=oContinueScreen if showtimehit and minigameroom=0 if stageClear=1 setfeats=1 break;

case 5: featname="ONE LONG NOTE"
if object_index=oContinueScreen if stageClear=1 and minigameroom=0 and global.Difficulty>=2 {if nodeath setfeats=1} break;

case 6: featname="I'm Not Stage Frightened!" ///Beat any Stage without using Showtime once.
if object_index=oContinueScreen if noshowtime and minigameroom=0 if stageClear=1 setfeats=1
break;

case 7: featname="Legendary Dancing Diva!" ///Beat arcade mode without dying
if object_index=oContinueScreen if stageClear=1 and minigameroom=0 and global.ArcadeDeath=0 and global.MenuGlobal=0 and global.Difficulty>=2 and room=rm_stagefinal setfeats=1
break;

case 8: featname="Don't Touch the Diva" ///Beat any stage without taking damage
if object_index=oContinueScreen if stageClear=1 and minigameroom=0 {if perfecthp and nodeath setfeats=1}
break;

case 9: featname="Sorry, I'm on a Diet..." ///Beat any stage without taking any food
if object_index=oContinueScreen if stageClear=1 and minigameroom=0 {if nofood setfeats=1}
break;

case 10: featname="Went off key" ///10% health
if object_index=oContinueScreen
if hppercent1<=10 or hppercent2<=10 or hppercent3<=10 or hppercent4<=10
{if nodeath setfeats=1} break;

case 11: featname="trainer" ///training
if global.TrainingClear[1]=1 and global.TrainingClear[2]=1
and global.TrainingClear[3]=1 and global.TrainingClear[4]=1 setfeats=1;
break;

case 12: featname="WOLF WHISPERER" ///Defeat Lady Wolf without taking any damage
if object_index=oContinueScreen if room=rm_stage1 if stageClear=1
{//if perfecthp
	setfeats=1}
break;

case 13: featname="HARPILDA" ///Defeat Lady Wolf without taking any damage
if object_index=oContinueScreen if room=rm_stage2b if stageClear=1
{//if perfecthp
	setfeats=1}
break;

case 14: featname="ROSY" ///Defeat Lady Wolf without taking any damage
if object_index=oContinueScreen if room=rm_stage2 if stageClear=1
{//if perfecthp
	setfeats=1}
break;

case 15: featname="DOLORES" ///Defeat Lady Wolf without taking any damage
if object_index=oContinueScreen if room=rm_stage2c if stageClear=1
{//if perfecthp
	setfeats=1}
break;

case 16: featname="ANNA MARI" ///Defeat Lady Wolf without taking any damage
if object_index=oContinueScreen if room=rm_stage4 if stageClear=1
{//if perfecthp
	setfeats=1}
break;

case 17: featname="HATHOR" ///Defeat Lady Wolf without taking any damage
if object_index=oContinueScreen if room=rm_stage3 if stageClear=1
{//if perfecthp
	setfeats=1}
break;

case 18: featname="ONI SISTERS" ///Defeat Lady Wolf without taking any damage
if object_index=oContinueScreen if room=rm_stage5 if stageClear=1
{//if perfecthp
	setfeats=1}
break;

case 19: featname="KIANDRA" ///Defeat Lady Wolf without taking any damage
if object_index=oContinueScreen if room=rm_stageswamp if stageClear=1
{//if perfecthp
	setfeats=1}
break;

case 20: featname="DUCK" ///Defeat Lady Wolf without taking any damage
if object_index=oContinueScreen if room=rm_stagecarnival if stageClear=1
{//if perfecthp
	setfeats=1}
break;

case 21: featname="CIRCE" ///Defeat Lady Wolf without taking any damage
if object_index=oContinueScreen if room=rm_stagebeach if stageClear=1
{//if perfecthp
	setfeats=1}
break;

case 22: featname="UFO" ///Defeat Lady Wolf without taking any damage
if object_index=oContinueScreen if room=rm_stageufo if stageClear=1
{//if perfecthp
	setfeats=1}
break;

case 23: featname="PRINCE" ///Defeat Lady Wolf without taking any damage
if object_index=oContinueScreen if room=rm_stagemermaid if stageClear=1
{//if perfecthp
	setfeats=1}
break;

case 24: featname="GENIE" ///Defeat Lady Wolf without taking any damage
if object_index=oContinueScreen if room=rm_stagedesert if stageClear=1
{//if perfecthp
	setfeats=1}
break;

case 25: featname="MIRROR" ///Defeat Lady Wolf without taking any damage
if object_index=oContinueScreen if room=rm_stagesnow if stageClear=1
{//if perfecthp
	setfeats=1}
break;

case 26: featname="PLANT" ///Defeat Lady Wolf without taking any damage
if object_index=oContinueScreen if room=rm_stagecave if stageClear=1
{//if perfecthp
	setfeats=1}
break;

case 27: featname="DRAGON" ///Defeat Lady Wolf without taking any damage
if object_index=oContinueScreen if room=rm_stageclouds if stageClear=1
{//if perfecthp
	setfeats=1}
break;

case 28: featname="LAB" ///Defeat Lady Wolf without taking any damage
if object_index=oContinueScreen if room=rm_stagelab if stageClear=1
{//if perfecthp
	setfeats=1}
break;

case 29: featname="FINAL" ///Defeat Lady Wolf without taking any damage
if object_index=oContinueScreen if room=rm_stagefinal if stageClear=1
{//if perfecthp
	setfeats=1}
break;

case 30: featname="FINAL" ///Clear arcade mode
if global.MenuGlobal=0
if object_index=oContinueScreen if finalStage if stageClear=1
{//if perfecthp
	setfeats=1}
break;

case 31: featname="HARDMODE" ///Clear arcade mode on very hard
if global.MenuGlobal=0
if object_index=oContinueScreen if room=rm_stagefinal and global.Difficulty>=4 if stageClear=1
{//if perfecthp
	setfeats=1}
break;


case 32: featname="UNLOCK ALL STAGES" ///Clear arcade mode on very hard
if object_index=oContinueScreen 
if global.UnlockStage[1] and global.UnlockStage[2] and global.UnlockStage[3] and global.UnlockStage[4] and global.UnlockStage[5] and global.UnlockStage[6] and global.UnlockStage[7] and global.UnlockStage[8] and global.UnlockStage[9] and global.UnlockStage[10]
and global.UnlockStage[11] and global.UnlockStage[12] and global.UnlockStage[13] and global.UnlockStage[14] and global.UnlockStage[15] and global.UnlockStage[16] and global.UnlockStage[17] and global.UnlockStage[18]
if stageClear=1
{//if perfecthp
	setfeats=1}
break;

case 33: ///Animal Tamer
if global.PetPetted[1] and global.PetPetted[2] and global.PetPetted[3] and global.PetPetted[4]
and global.PetPetted[5] and global.PetPetted[6] and global.PetPetted[7] setfeats=1;
break;

case 34: featname="Detective"
if global.SecretBreak[1] and global.SecretBreak[2] and global.SecretBreak[3] and global.SecretBreak[4] and global.SecretBreak[5] and global.SecretBreak[6] and global.SecretBreak[7] and global.SecretBreak[8] and global.SecretBreak[9] and global.SecretBreak[10]
and global.SecretBreak[11] and global.SecretBreak[12] and global.SecretBreak[13] and global.SecretBreak[14] and global.SecretBreak[15] and global.SecretBreak[16] and global.SecretBreak[17] and global.SecretBreak[18]
setfeats=1;
break;

case 35: featname="ENEMY KILL" ///
if global.EnemyDeath>=100 {setfeats=1; if global.Feats[35]!=1 enemydata_save()}
break;

case 36: featname="ENEMY KILL" ///
if global.EnemyDeath>=500 {setfeats=1; if global.Feats[36]!=1 enemydata_save()}
break;

case 37: featname="ENEMY KILL" ///
if global.EnemyDeath>=1000 {setfeats=1; if global.Feats[37]!=1 enemydata_save()}
break;

case 38: featname="BUY ALL ITEMS" ///
if global.UnlockCharacterData=1 
and global.UnlockAltPal=1 
and global.UnlockAltPal2=2 
and global.UnlockAltPal3=3 
and global.UnlockSoundTest=1 
and global.UnlockMovies=1 
and global.FishingUnlock=1 
and global.SlotMachineUnlock=1 
and global.MiniGameUnlock1=1 
and global.MiniGameUnlock2=1 
and global.MiniGameUnlock3=1 
and global.MiniGameUnlock4=1 
and global.MiniGameUnlock5=1 
and global.MiniGameUnlock6=1 
and global.SurvivalUnlock=1 
and global.BossBattleUnlock=1 
setfeats=1;
break;
case 39: featname="BUY ALL CHEATS" ///
if global.CheatUnlock[1] and global.CheatUnlock[2] and global.CheatUnlock[3] and global.CheatUnlock[4] and global.CheatUnlock[5] and global.CheatUnlock[6] and global.CheatUnlock[7] and global.CheatUnlock[8] and global.CheatUnlock[9] and global.CheatUnlock[10] and global.CheatUnlock[11]
and global.CheatUnlock[12] and global.CheatUnlock[13] and global.CheatUnlock[14] and global.CheatUnlock[15] and global.CheatUnlock[16] setfeats=1
break;
case 40: featname="BUY ALL GALLERY" ///
if global.Gallery[1] and global.Gallery[2] and global.Gallery[3] and global.Gallery[4] and global.Gallery[5] and global.Gallery[6] and global.Gallery[7] and global.Gallery[8] and global.Gallery[9] and global.Gallery[10] and global.Gallery[11]
and global.Gallery[12] and global.Gallery[13] and global.Gallery[14] and global.Gallery[15] and global.Gallery[16] setfeats=1
break;

case 41: ///Bad Ending
if room=rm_cutscenebadend setfeats=1;
break;

case 42: 
if object_index=oContinueScreen or object_index=oControl
{
if global.UnlockEnemy[1] and global.UnlockEnemy[2] and global.UnlockEnemy[3] and global.UnlockEnemy[5] and global.UnlockEnemy[6]
and global.UnlockEnemy[7] and global.UnlockEnemy[10] and global.UnlockEnemy[11] and global.UnlockEnemy[12] and global.UnlockEnemy[13]
and global.UnlockEnemy[14] and global.UnlockEnemy[15] and global.UnlockEnemy[16] and global.UnlockEnemy[20]// and global.UnlockEnemy[21] //21 - TRIG unused
and global.UnlockEnemy[22] and global.UnlockEnemy[23] and global.UnlockEnemy[24] and global.UnlockEnemy[25] and global.UnlockEnemy[26]
and global.UnlockEnemy[27] and global.UnlockEnemy[28] and global.UnlockEnemy[29] and global.UnlockEnemy[30] and global.UnlockEnemy[31]
and global.UnlockEnemy[32] and global.UnlockEnemy[33] and global.UnlockEnemy[34] and global.UnlockEnemy[35] and global.UnlockEnemy[36]
and global.UnlockEnemy[37] and global.UnlockEnemy[38] and global.UnlockEnemy[39] and global.UnlockEnemy[40] and global.UnlockEnemy[41]
and global.UnlockEnemy[42] and global.UnlockEnemy[43] and global.UnlockEnemy[44] and global.UnlockEnemy[45] and global.UnlockEnemy[46]
and global.UnlockEnemy[51] and global.UnlockEnemy[52] and global.UnlockEnemy[53] and global.UnlockEnemy[54] and global.UnlockEnemy[55]
and global.UnlockEnemy[56] and global.UnlockEnemy[57] and global.UnlockEnemy[58] and global.UnlockEnemy[59] and global.UnlockEnemy[60]
and global.UnlockEnemy[61] and global.UnlockEnemy[62] and global.UnlockEnemy[63] and global.UnlockEnemy[64] and global.UnlockEnemy[65]
and global.UnlockEnemy[66] and global.UnlockEnemy[67] and global.UnlockEnemy[68] and global.UnlockEnemy[69] and global.UnlockEnemy[70]
and global.UnlockEnemy[71] and global.UnlockEnemy[72] and global.UnlockEnemy[73] and global.UnlockEnemy[74] and global.UnlockEnemy[117]
and global.UnlockEnemy[118] and global.UnlockEnemy[119] and global.UnlockEnemy[75] and global.UnlockEnemy[76] and global.UnlockEnemy[77]
and global.UnlockEnemy[78] and global.UnlockEnemy[79] and global.UnlockEnemy[80] and global.UnlockEnemy[81] and global.UnlockEnemy[82]
and global.UnlockEnemy[83] and global.UnlockEnemy[84] and global.UnlockEnemy[85] and global.UnlockEnemy[86] and global.UnlockEnemy[87]
and global.UnlockEnemy[88] and global.UnlockEnemy[89] and global.UnlockEnemy[90] and global.UnlockEnemy[91] and global.UnlockEnemy[92]
and global.UnlockEnemy[93] and global.UnlockEnemy[94] and global.UnlockEnemy[95] and global.UnlockEnemy[96] and global.UnlockEnemy[97]
and global.UnlockEnemy[98] and global.UnlockEnemy[99] and global.UnlockEnemy[100] and global.UnlockEnemy[101] and global.UnlockEnemy[102]
and global.UnlockEnemy[103] and global.UnlockEnemy[104] and global.UnlockEnemy[105] and global.UnlockEnemy[106] and global.UnlockEnemy[107]
and global.UnlockEnemy[108] and global.UnlockEnemy[109] and global.UnlockEnemy[110] and global.UnlockEnemy[111] and global.UnlockEnemy[112]
and global.UnlockEnemy[113] and global.UnlockEnemy[114] and global.UnlockEnemy[115] and global.UnlockEnemy[130] and global.UnlockEnemy[131]
and global.UnlockEnemy[133] and global.UnlockEnemy[134] and global.UnlockEnemy[166] and global.UnlockEnemy[17] and global.UnlockEnemy[18]
and global.UnlockEnemy[19] and global.UnlockEnemy[47] and global.UnlockEnemy[48] and global.UnlockEnemy[49] and global.UnlockEnemy[50]
and global.UnlockEnemy[125] and global.UnlockEnemy[126] and global.UnlockEnemy[127] and global.UnlockEnemy[128]
and global.UnlockEnemy[150] and global.UnlockEnemy[151] and global.UnlockEnemy[152] and global.UnlockEnemy[153] and global.UnlockEnemy[154]
and global.UnlockEnemy[155] and global.UnlockEnemy[156] and global.UnlockEnemy[157] and global.UnlockEnemy[158] and global.UnlockEnemy[159]
and global.UnlockEnemy[160] and global.UnlockEnemy[161] and global.UnlockEnemy[162] and global.UnlockEnemy[163] and global.UnlockEnemy[164]
and global.UnlockEnemy[165] and global.UnlockEnemy[166] and global.UnlockEnemy[167] and global.UnlockEnemy[168] and global.UnlockEnemy[169]
and global.UnlockEnemy[170] and global.UnlockEnemy[171] and global.UnlockEnemy[172] and global.UnlockEnemy[173] and global.UnlockEnemy[174]
and global.UnlockEnemy[175] and global.UnlockEnemy[176] and global.UnlockEnemy[177]// and global.UnlockEnemy[1] and global.UnlockEnemy[1]
//and global.UnlockEnemy[1] and global.UnlockEnemy[1] and global.UnlockEnemy[1] and global.UnlockEnemy[1] and global.UnlockEnemy[1]
//and global.UnlockEnemy[1] and global.UnlockEnemy[1] and global.UnlockEnemy[1] and global.UnlockEnemy[1] and global.UnlockEnemy[1]
setfeats=1;

}
break;

case 43: /////All cutscenes
if global.UnlockCutscene[1] and global.UnlockCutscene[2] and global.UnlockCutscene[3]
and global.UnlockCutscene[4] and global.UnlockCutscene[5] and global.UnlockCutscene[6]
and global.UnlockCutscene[7] and global.UnlockCutscene[8] and global.UnlockCutscene[9]
and global.UnlockCutscene[10] and global.UnlockCutscene[11] and global.UnlockCutscene[12]
and global.UnlockCutscene[13] and global.UnlockCutscene[14] and global.UnlockCutscene[15]
and global.UnlockCutscene[16] and global.UnlockCutscene[17] and global.UnlockCutscene[18]
and global.UnlockCutscene[19]// and global.UnlockCutscene[2] and global.UnlockCutscene[3]
and global.UnlockCutscene[25] and global.UnlockCutscene[26]// and global.UnlockCutscene[23]
setfeats=1;
break;

case 44: //////World Tour Mode
if global.MenuGlobal=0
if object_index=oContinueScreen if room=rm_stagefinal and global.AllStageMode if stageClear=1 setfeats=1;
break;
//Diva Survivor
case 45: 
if global.HiScoreSurvival>=10000 setfeats=1
break;

case 46: ///Boss fight
if object_index=oContinueScreen if isbossbattle=1 if stageClear=1 setfeats=1
break;

case 47: ///Minigame Queen
if object_index=oContinueScreen if global.MinigameWin[1] and global.MinigameWin[2] and global.MinigameWin[3] and global.MinigameWin[4] and global.MinigameWin[5] and global.MinigameWin[6]
setfeats=1;
break;

case 48:
if object_index=oContinueScreen if global.FishData[1] and global.FishData[2] and global.FishData[3] and global.FishData[4] and global.FishData[5]
and global.FishData[6] and global.FishData[7] and global.FishData[8] and global.FishData[9] and global.FishData[10]
setfeats=1;
break;

case 49: featname="It's Bad For You!"
if object_index=oPlayer {if sprite_index=spr_viva_cough setfeats=1}
break;

case 50: featname="ZZZ"
if object_index=oPlayer {if sprite_index=spr_hina_sleep setfeats=1}
break;

case 51: featname="Nice Froggy..."
if object_index=oPlayer {if sprite_index=spr_bahati_petlowF setfeats=1}
break;

case 52: featname="Boingy"
if object_index=oPlayer {if featno[2]>=8  setfeats=1}
break;

///45 feats
///
///Defeat 
///
///
///
///
///
///Pet all the animals
///Clear all stages
///Complete training with all 4 Divas
///Complete Enemy Info
///Buy all Extras
///Buy all Cheats
///Buy All Gallery
///Clear the Final Stage
///
///Clear All Stage Mode
///Clear Boss Battles
///Get a High Score on Survival
///
///
///
}
return setfeats;
}

function feat_create(_no)
{
var _existfeater=oControl; if !instance_exists(oControl) if instance_exists(oContinueScreen) _existfeater=oContinueScreen;

if instance_exists(_existfeater)
with _existfeater
{
featc=instance_create_depth(0,0,0,oFeatDisplay); featc.featNO=_no// featc.depth=depth with featc depth-=instance_number(oFeatDisplay)
}
}

function feats_save()
{
ini_open("GAMEDATA/hiscore.ini");
for (var i=0; i<100; i++)
{
ini_write_real("FEATS", "feats"+string(i), global.Feats[i])
}
ini_close()
}

function feats_load()
{
ini_open("GAMEDATA/hiscore.ini");
for (var i=0; i<100; i++)
{
global.Feats[i]=ini_read_real("FEATS", "feats"+string(i), global.Feats[i])
}
ini_close()
}