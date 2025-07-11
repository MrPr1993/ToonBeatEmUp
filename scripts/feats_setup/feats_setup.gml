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
}

function feats_stageunlock(){



}

function feats_check(){

var setfeats=0; var savefeats=0;
var featname=""
for (var i=0; i<100; i++)
{setfeats=0;
switch(i)
{
case 1: featname="DIVA'S DEBUT" ///Clear Stage 1
if object_index=oContinueScreen and stageClear=1 and room=rm_stage1 {setfeats=1} break;

case 2: featname="MUST PET!" ///PET THE FIRST ANIMAL IN ANY STAGE.
if instance_exists(oPlayer) if oPlayer.anim=10010 setfeats=1 break;

case 3: featname="ENCORE!" ///USE YOUR FIRST CONTINUE.
if instance_exists(oPlayer) if oPlayer.continueScreen=2 setfeats=1 break;

case 4: featname="SHOWTIME FINISH" ///DEFEAT A BOSS WITH A SHOWTIME ATTACK.
if object_index=oContinueScreen if showtimehit and stageClear=1 setfeats=1 break;

case 5: featname="ONE LONG NOTE"
if stageClear=1
if object_index=oContinueScreen {if nodeath setfeats=1} break;

case 6: featname="I'm Not Stage Frightened!" ///Beat any Stage without using Showtime once.
if object_index=oContinueScreen if noshowtime and stageClear=1 setfeats=1
break;

case 7: featname="Legendary Dancing Diva!" ///Beat arcade mode without dying
if object_index=oContinueScreen and stageClear=1 and stageClear=1 and global.ArcadeDeath=0 and room=rm_stagefinal setfeats=1
break;

case 8: featname="Don't Touch the Diva" ///Beat any stage without taking damage
if object_index=oContinueScreen and stageClear=1 {if perfecthp	setfeats=1}
break;

case 9: featname="Sorry, I'm on a Diet..." ///Beat any stage without taking any food
if object_index=oContinueScreen and stageClear=1 {if nofood setfeats=1}
break;

case 12: featname="WOLF WHISPERER" ///Defeat Lady Wolf without taking any damage
if room=rm_stage1 and stageClear=1
if object_index=oContinueScreen {//if perfecthp
	setfeats=1}
break;

case 13: featname="HARPILDA" ///Defeat Lady Wolf without taking any damage
if room=rm_stage2b and stageClear=1
if object_index=oContinueScreen {//if perfecthp
	setfeats=1}
break;

case 14: featname="ROSY" ///Defeat Lady Wolf without taking any damage
if room=rm_stage2 and stageClear=1
if object_index=oContinueScreen {//if perfecthp
	setfeats=1}
break;

case 15: featname="DOLORES" ///Defeat Lady Wolf without taking any damage
if room=rm_stage2c and stageClear=1
if object_index=oContinueScreen {//if perfecthp
	setfeats=1}
break;

case 16: featname="ANNAMARI" ///Defeat Lady Wolf without taking any damage
if room=rm_stage4 and stageClear=1
if object_index=oContinueScreen {//if perfecthp
	setfeats=1}
break;

case 17: featname="HATHOR" ///Defeat Lady Wolf without taking any damage
if room=rm_stage3 and stageClear=1
if object_index=oContinueScreen {//if perfecthp
	setfeats=1}
break;

case 18: featname="ONI SISTERS" ///Defeat Lady Wolf without taking any damage
if room=rm_stage5 and stageClear=1
if object_index=oContinueScreen {//if perfecthp
	setfeats=1}
break;

case 19: featname="KIANDRA" ///Defeat Lady Wolf without taking any damage
if room=rm_stageswamp and stageClear=1
if object_index=oContinueScreen {//if perfecthp
	setfeats=1}
break;

case 20: featname="DUCK" ///Defeat Lady Wolf without taking any damage
if room=rm_stagecarnival and stageClear=1
if object_index=oContinueScreen {//if perfecthp
	setfeats=1}
break;

case 21: featname="CIRCE" ///Defeat Lady Wolf without taking any damage
if room=rm_stagebeach and stageClear=1
if object_index=oContinueScreen {//if perfecthp
	setfeats=1}
break;

case 22: featname="UFO" ///Defeat Lady Wolf without taking any damage
if room=rm_stageufo and stageClear=1
if object_index=oContinueScreen {//if perfecthp
	setfeats=1}
break;

case 23: featname="PRINCE" ///Defeat Lady Wolf without taking any damage
if room=rm_stagemermaid and stageClear=1
if object_index=oContinueScreen {//if perfecthp
	setfeats=1}
break;

case 24: featname="GENIE" ///Defeat Lady Wolf without taking any damage
if room=rm_stagedesert and stageClear=1
if object_index=oContinueScreen {//if perfecthp
	setfeats=1}
break;

case 25: featname="MIRROR" ///Defeat Lady Wolf without taking any damage
if room=rm_stagesnow and stageClear=1
if object_index=oContinueScreen {//if perfecthp
	setfeats=1}
break;

case 26: featname="PLANT" ///Defeat Lady Wolf without taking any damage
if room=rm_stagecave and stageClear=1
if object_index=oContinueScreen {//if perfecthp
	setfeats=1}
break;

case 27: featname="DRAGON" ///Defeat Lady Wolf without taking any damage
if room=rm_stageclouds and stageClear=1
if object_index=oContinueScreen {//if perfecthp
	setfeats=1}
break;

case 28: featname="LAB" ///Defeat Lady Wolf without taking any damage
if room=rm_stagelab and stageClear=1
if object_index=oContinueScreen {//if perfecthp
	setfeats=1}
break;

case 29: featname="FINAL" ///Defeat Lady Wolf without taking any damage
if room=rm_stagefinal and stageClear=1
if object_index=oContinueScreen {//if perfecthp
	setfeats=1}
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

if setfeats global.SaveFeat=1

if global.Feats[i]!=1
{if setfeats {global.SaveFeat=1 global.Feats[i]=1 feat_create(featname) featc.featNO=i;}}
}

if global.SaveFeat feats_save() global.SaveFeat=0
}

function feat_create(_text)
{
featc=instance_create_depth(0,0,0,oFeatDisplay) with featc
{featX=-128-128*instance_number(oFeatDisplay)
} featc.name=_text 
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