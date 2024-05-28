
if oPlayer.x>__view_get( e__VW.XView, 0 )+48
{
with oPlayer
{
key_right=0;
{AnimFrame=0 image_index=0 anim=99999 canmove=0 
specialanimscript=function()
{
if AnimFrame=0
{
sprite_index=PointSpr
if instance_exists(oMartianBoss)
{
if character=0 sprite_index=spr_viva_wildtake7
if character=1 sprite_index=spr_hina_wildtake7
if character=2 sprite_index=spr_bahati_wildtake7
if character=3 sprite_index=spr_sofia_wildtake7
AnimFrame=1
}
}
frame_set(1,0,0.25)
if AnimFrame=2
{image_index+=0.25
if character=0 sprite_index=spr_viva_wildtake6
if character=1 sprite_index=spr_hina_wildtake6
if character=2 sprite_index=spr_bahati_wildtake6
if character=3 sprite_index=spr_sofia_wildtake6
}

}
}

}
}
else timeline_position-=1

