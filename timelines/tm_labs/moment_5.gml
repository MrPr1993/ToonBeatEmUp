/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if specialSet0<0
{
if global.StageRecord[6]!=2
{
PlaySound(snd_jump)
with oPlayer
{visible=1
key_right=1 z=-2 zSpeed=-7.5 sentflying=8
dashing=2 AnimFrame=0 ground=0
anim=21
}
}
}
else
{
specialSet0-=0.5



if specialSet0=15
{specialSet0=-1;
with oControl quakeFXTime=30
PlaySound(snd_explosion)

with npc1 specialcheck[0]=1
with npc2 specialcheck[0]=1
with npc3 specialcheck[0]=1

if global.StageRecord[6]=2
{
timer_set(0)
with oPlayer
{visible=1 canmove=0; key_right=0; x=96; z=-620 zSpeed=12.5 prevanim=8; ground=0;
anim=5 AnimFrame=0 sentflying=0; hashitBack=1 dizzyHit=0 key_jump_hold=0;
}
exit;
}

dust_make(48,208,-48,0,0,0) dustmk.sprite_index=spr_explosion2
dust_make(32,208,-96,0,0,0) dustmk.sprite_index=spr_explosion2


dor1=instance_create_depth(32,208,0,oBarrel) with dor1 
{sprite_index=spr_labdoor 
image_xscale=1 solid=false hit=1 ground=0 zSpeed=-8 hspeed=1 mask_index=mask_none
sentflying=2 image_index=0 alarm[0]=2}

dor2=instance_create_depth(32,208,0,oBarrel) with dor2
{sprite_index=spr_labdoor
image_xscale=1 solid=false hit=1 ground=0 zSpeed=-8 hspeed=1 mask_index=mask_none
sentflying=2 image_index=1 alarm[0]=2}
}

//with oFlashFX if name="Limo" hspeed-=0.5
timeline_position-=1
}
