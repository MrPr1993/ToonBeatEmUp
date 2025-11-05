/// @description Insert description here
// You can write your code in this editor
if anim=0
{
sprite_index=spr_olga_stand
	frame_set(0,0,0.1)
	frame_set(1,1,0.1)
	frame_set(2,2,0.1)
	frame_set(3,1,0.1)
	frame_set(4,0,0.1)
	frame_set(5,3,0.1)
	frame_set(6,4,0.1)
	frame_set(7,3,0.1)
	frame_set(8,5,0.1)
	frame_set(9,1,0.1)
	frame_set(10,2,0.1)
	frame_set(11,1,0.1)
	frame_set(12,0,0.1)
	frame_set(13,3,0.1)
	frame_set(14,4,0.1)
	frame_set(15,3,0.1)
	if AnimFrame>15.9 AnimFrame=0
}

if anim=1
{sprite_index=spr_olga_good
frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,2,0.01)
frame_set(3,0,0.1) if AnimFrame>3.5 {AnimFrame=0 anim=0}
}

oPlayer.pow=0
if locksuper=1
oPlayer.super=0
oPlayer.hp=1

with oControl
{time=99}

if anim=0
{if oPlayer.x>x image_xscale=1 else image_xscale=-1}

if tutorialwords
{
var _tt0="PERFECT!"
var _tt1="GOOD JOB!"
var _tt2="EXCELLENT!"
var _tt3="NOT BAD!"
var _tt4="VERY GOOD!"
switch(global.Language)
{
case 2: ///Portuguese
var _tt0="PERFEITO!"
var _tt1="BOM TRABALHO!"
var _tt2="EXCELENTE!"
var _tt3="NADA MAL!"
var _tt4="MUITO BOM!"
break;
}
var _tuttext=choose(1,2,3,4);
if _tuttext=0 {tutorialtext=_tt0 PlaySound(snd_olga4)}
if _tuttext=1 {tutorialtext=_tt1 PlaySound(snd_olga5)}
if _tuttext=2 {tutorialtext=_tt2 PlaySound(snd_olga6)}
if _tuttext=3 {tutorialtext=_tt3 PlaySound(snd_olga7)}
if _tuttext=4 {tutorialtext=_tt4 PlaySound(snd_olga8)}

tutorialwords=0;
}