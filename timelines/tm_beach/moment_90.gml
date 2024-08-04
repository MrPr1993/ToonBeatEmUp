/// @description Octopus Fight

if __view_get( e__VW.XView, 0 )>=4560-2-320-320
{
if specialSet8=90
{specialSet8=0 oControl.MusicFade=0 oControl.MusicFadeAdd=1
	
with cast 
{
dust_make(x-16,y+1,z,-2,0,0)
dust_make(x,y+1,z,0,0,0)
dust_make(x+16,y+1,z,2,0,0)

dust_make(x-16,y+1,z-32,-2,0,-0.5)
dust_make(x,y+1,z-32,0,0,-0.5)
dust_make(x+16,y+1,z-32,2,0,-0.5)

dust_make(x-16,y+1,z-64,-2,0,-1)
dust_make(x,y+1,z-64,0,0,-1)
dust_make(x+16,y+1,z-64,2,0,-1)

instance_destroy()
}
musicplaystart(msc_boss)
en1=instance_create(4082,178,oOctopus)
with en1
{immune=1 anim=66 canmove=0}
oControl.time=99
with oPlayer {canControl=1}

oControl.bossID=oOctopus
}
else
{
if specialSet8=0
{
	with oEnemySpawner specialscript=function()
	{{if MaxY>240 MaxY-=1
		else {MaxY=240 specialscript=-1;}
	}}
}

if specialSet8=30
with cast
{PlaySound(snd_steal) shaketime=999
}

with oPlayer
{
canControl=0
automoveX=4082-80 automoveY=178 automove=1

specialanimscript=function()
{
if automove=0
{AnimFrame=0 anim=9999 canmove=0 
specialanimscript=function()
{
if AnimFrame=0
{
if character=0 sprite_index=spr_viva_point
if character=1 sprite_index=spr_hina_point
if character=2 sprite_index=spr_bahati_point
if character=3 sprite_index=spr_sofia_point

if instance_exists(oOctopus) {
if character=0 sprite_index=spr_viva_wildtake5	
if character=1 sprite_index=spr_hina_wildtake5	
if character=2 sprite_index=spr_bahati_wildtake5	
if character=3 sprite_index=spr_sofia_wildtake5	
	AnimFrame=1 }
}
frame_set(1,0,0.25)
frame_set(2,1,0.25)
if instance_exists(oOctopus)
{
if oOctopus.anim=0 {specialanimscript=-1; AnimFrame=0 anim=0 image_index=0 canmove=1}}
}
}
}
}

oControl.MusicFade=1 oControl.MusicFadeAdd=1
specialSet8+=1
timeline_position-=1
}

}
else
{
timeline_position-=1
}

