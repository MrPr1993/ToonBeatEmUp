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
case 1: featname="DIVA'S DEBUT"
if object_index=oContinueScreen and stageClear=1 and room=rm_stage1 {setfeats=1} break;

case 2: featname="MUST PET!"
if instance_exists(oPlayer) if oPlayer.anim=10010 setfeats=1 break;

case 3: featname="ENCORE!"
if instance_exists(oPlayer) if oPlayer.continueScreen=2 setfeats=1 break;

case 4: featname="SHOWTIME FINISH"
if object_index=oControl if showtimehit setfeats=1 break;

case 5: featname="WOLF WHISPERER"
if room=rm_stage1 and stageClear=1
if object_index=oControl {if instance_exists(oPlayer) with oPlayer if hp<maxhp oControl.perfecthp=0 if perfecthp setfeats=1} break;

case 6: featname="ONE LONG NOTE"
if stageClear=1
if object_index=oControl {if instance_exists(oPlayer) with oPlayer if hp<=0 oControl.nodeath=0 if nodeath setfeats=1} break;

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