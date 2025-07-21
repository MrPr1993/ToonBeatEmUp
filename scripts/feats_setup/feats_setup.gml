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
for (var i=0; i<100; i++)
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
if object_index=oContinueScreen if stageClear=1 and minigameroom=0 {if nodeath setfeats=1} break;

case 6: featname="I'm Not Stage Frightened!" ///Beat any Stage without using Showtime once.
if object_index=oContinueScreen if noshowtime and minigameroom=0 if stageClear=1 setfeats=1
break;

case 7: featname="Legendary Dancing Diva!" ///Beat arcade mode without dying
if object_index=oContinueScreen if stageClear=1 and minigameroom=0 if stageClear=1 and global.ArcadeDeath=0 and room=rm_stagefinal setfeats=1
break;

case 8: featname="Don't Touch the Diva" ///Beat any stage without taking damage
if object_index=oContinueScreen if stageClear=1 and minigameroom=0 {if perfecthp	setfeats=1}
break;

case 9: featname="Sorry, I'm on a Diet..." ///Beat any stage without taking any food
if object_index=oContinueScreen if stageClear=1 and minigameroom=0 {if nofood setfeats=1}
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

case 16: featname="ANNAMARI" ///Defeat Lady Wolf without taking any damage
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



case 46:
if object_index=oContinueScreen if isbossbattle=1 if stageClear=1 setfeats=1
break;

case 49: featname="It's Bad For You!"
if object_index=oPlayer {if sprite_index=spr_viva_cough setfeats=1}
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