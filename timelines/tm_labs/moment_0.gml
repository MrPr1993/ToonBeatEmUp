/// @description Stage Starting
spawner_followset("WaveSet1",0,692+224,1)

oControl.stageNext=rm_cutscene7

////Skip to Plane
//spawner_followset("WaveSet1",0,5800,1)
//oPlayer.x=5000
//timeline_position=449

oControl.showMap=0

bgfog1=layer_background_get_id(layer_get_id("BGclouds"));
layer_background_visible(bgfog1,0)

layer_y("TileBoss",-240)

oPlayer.x-=64

with oPlayer
{
canmove=0 anim=9999 key_right=0 canControl=0
visible=0
}

npc1=instance_create_depth(290,208,-1,oCameoChar) with npc1
{anim=9999 image_speed=0.25 image_xscale=-1 sprite_index=spr_nurse_idle1 newscript=function()
{if specialcheck[0]=1 {image_speed=0 specialcheck[0]=2 image_xscale=-1 sprite_index=spr_nurse_panic image_index=0}
if specialcheck[0]=2 specialcheck[1]++; if specialcheck[1]>=30 {image_speed=0.25 sprite_index=spr_nurse_move image_xscale=1 hspeed=5}}}

npc2=instance_create_depth(290-48,208,-1,oCameoChar) with npc2
{anim=9999 image_speed=0.25 sprite_index=spr_nurse_idle1 newscript=function()
{if specialcheck[0]=1 {image_speed=0 specialcheck[0]=2 image_xscale=-1 sprite_index=spr_nurse_panic image_index=0}
if specialcheck[0]=2 specialcheck[1]++; if specialcheck[1]>=30 {image_speed=0.25 sprite_index=spr_nurse_move image_xscale=1 hspeed=5}}}

///118

///74,164 Lady Wolf
npc3=instance_create_depth(74,164,-1,oCameoChar) with npc3
{
if global.StageRecord[2]=0 y=9999; ///Lady Wolf will not be there if stopped early
	
anim=9999 image_speed=0.25 image_xscale=1 sprite_index=spr_hwolf_init newscript=function()
{if specialcheck[0]=1 {image_speed=0 specialcheck[0]=2 sprite_index=spr_hwolf_panic image_index=0}
if specialcheck[0]=2 specialcheck[1]++; if specialcheck[1]>=30 {image_speed=0.25 sprite_index=spr_hwolf_escape2 image_xscale=-1 hspeed=-5}}}

if instance_number(oPlayer)!=1
with oPlayer
{
y=oControl.wallY+16*controlNO
alarm[0]=0
}

specialSet0=30

timeline_skip(0)

timer_set(0)

