// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function feats_default(){
global.Feats[1]=2 ///Default to show them
	
}

function feats_check(){
var savefeats=0;
var featname=""
for (var i=0; i<100; i++)
{savefeats=0;
switch(i)
{
case 1: featname="DIVA'S DEBUT!"
if object_index=oContinueScreen and stageClear=1 and room=rm_stage1 {savefeats=1} break;



}
if savefeats {global.Feats[i]=1 feat_create(featname)}
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