// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function feats_default(){
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
if object_index=oControl if showtimehit setfeats=1 break;

case 5: featname="ONE LONG NOTE"
if stageClear=1
if object_index=oControl {if instance_exists(oPlayer) with oPlayer if hp<=0 oControl.nodeath=0 if nodeath setfeats=1} break;

case 6: featname="I'm Not Stage Frightened!" ///Beat any Stage without using Showtime once.
break;

case 7: featname="Legendary Dancing Diva!" ///Beat arcade mode without dying
break;

case 8: featname="Don't Touch the Diva" ///Beat any stage without taking damage
break;

case 9: featname="Sorry, I'm on a Diet..." ///Beat any stage without taking any food
break;

case 12: featname="WOLF WHISPERER" ///Defeat Lady Wolf without taking any damage
if room=rm_stage1 and stageClear=1
if object_index=oControl {if perfecthp setfeats=1} break;

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

if global.Feats[i]!=1
{if setfeats {savefeats=1 global.Feats[i]=1 feat_create(featname)}}

}


if savefeats feats_save()
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
ini_write_real("FEATS", "feats", global.Feats[i])
}
ini_close()
}

function feats_load()
{
ini_open("GAMEDATA/hiscore.ini");
for (var i=0; i<100; i++)
{
global.Feats[i]=ini_read_real("FEATS", "feats", global.Feats[i])
}
ini_close()
}