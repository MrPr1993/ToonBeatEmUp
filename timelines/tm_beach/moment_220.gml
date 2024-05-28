if specialSet8=20
{
oPlayer.key_right=0;
//oPlayer.canControl=1;
oPlayer.areaEntry=0
specialSet8=0

with oPlayer
{AnimFrame=0 anim=9999 canmove=0 
specialanimscript=function()
{
if AnimFrame=0
{image_index=0
if character=0 sprite_index=spr_viva_point
if character=1 sprite_index=spr_hina_point
if character=2 sprite_index=spr_bahati_point
if character=3 sprite_index=spr_sofia_point

if instance_exists(oSeaweed) 
if oSeaweed.AnimFrame>=9
{
if character=0 sprite_index=spr_viva_wildtake7	
if character=1 sprite_index=spr_hina_wildtake7
if character=2 sprite_index=spr_bahati_wildtake7	
if character=3 sprite_index=spr_sofia_wildtake7
	AnimFrame=1 }
}
frame_set(1,0,0.25)
frame_set(2,1,0.25)
frame_set(3,2,0.25)
}

}

boss=instance_create_depth(bos.x,bos.y,-1,oSeaweed)
with boss
{canmove=0 anim=100}
with bos instance_destroy()
}
else
{
timeline_position-=1;
specialSet8+=1;
}