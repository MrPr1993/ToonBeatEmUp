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
	if animFrame>15.9 animFrame=0
}

if anim=1
{sprite_index=spr_olga_good
frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,2,0.01)
frame_set(3,0,0.1) if animFrame>3.5 {animFrame=0 anim=0}
}

oPlayer.pow=0
if locksuper=1
oPlayer.super=0
oPlayer.hp=1

with oControl
{time=99}

if anim=0
{if oPlayer.x>x image_xscale=1 else image_xscale=-1}