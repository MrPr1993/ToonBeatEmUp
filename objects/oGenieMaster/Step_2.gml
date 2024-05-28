/// @description Insert description here
// You can write your code in this editor
depth=-y


if anim=100
{
sprite_index=spr_geniemaster_intro

if AnimFrame=0 {specialcheck[0]=0 image_xscale=1}
specialcheck[0]+=0.1 if specialcheck[0]=2 {specialcheck[0]=0
	if AnimFrame=clamp(AnimFrame,4,4.9) PlaySound(snd_steal)
	}
if specialcheck[1]=0
frame_set(0,specialcheck[0],0.01)
else
frame_set(0,specialcheck[0],0)
frame_set(1,2,0.1) if AnimFrame=2 {PlaySound(snd_enemy2)}
frame_set(2,3,0.02) if AnimFrame=3 image_xscale=-1
frame_set(3,2,0.1)
frame_set(4,4+specialcheck[0],0.01) if AnimFrame=5
{
djinn=instance_create_depth(x+10*image_xscale,y+1,-1,oGenie)
with djinn {sprite_index=spr_genie_lamp specialanim=0 AnimFrame=0 canmove=0 anim=100 z=-7 ground=0} djinn.image_xscale=image_xscale
}
frame_set(5,6,0.1)
frame_set(6,7,0.25) if AnimFrame=7 {PlaySound(snd_swing) PlaySound(snd_enemy1)}
frame_set(7,8,0.02)
frame_set(8,7,0.1) if AnimFrame>8.5 {AnimFrame=0 anim=1}
}

if anim=1
{
sprite_index=spr_geniemaster_move
image_index+=0.25
if y>160
{x-=2 y-=2}
else 
{
if x>oControl.camX+160 x-=2
else
{y=160 x=oControl.camX+160 AnimFrame=0 anim=0 image_index=0}
}
}

if anim=0
{
sprite_index=spr_geniemaster_idle

if changeidle=0
{
frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,2,0.1)
if AnimFrame>=3 AnimFrame=0
}

if changeidle=1
{
image_index+=0.1 if image_index=5 image_index=2
AnimFrame+=0.05
if oPlayer.anim=4 or oPlayer.anim=5 or oPlayer.anim=6 or oPlayer.anim=7
{
}
else
if AnimFrame>2 {AnimFrame=0 changeidle=0}
}

if changeidle=2
{
if image_index<6.5
image_index+=0.1
AnimFrame+=0.05

if oGenie.anim=4 or oGenie.anim=5 or oGenie.anim=6 or oGenie.anim=7
{
}
else
if AnimFrame>2 {AnimFrame=0 changeidle=0}
}

if changeidle=3
{
frame_set(0,6,0.02)
frame_set(1,7,0.25)
frame_set(2,8,0.1)
frame_set(3,9,0.1)
if AnimFrame>=4 {AnimFrame=2}
}


if instance_exists(oGenie)
{
if changeidle!=3
{
if oPlayer.anim=4 or oPlayer.anim=5 or oPlayer.anim=6 or oPlayer.anim=7
{
if changeidle!=1 {AnimFrame=0 changeidle=1 image_index=2}	
}

if oGenie.anim=4 or oGenie.anim=5 or oGenie.anim=6 or oGenie.anim=7
{
if changeidle!=2 {AnimFrame=0 changeidle=2 image_index=5}
}
}

if oGenie.dead=1
if changeidle!=3 {AnimFrame=0 image_index=6 changeidle=3}

} else if changeidle!=3 {AnimFrame=0 image_index=6 changeidle=3}

}