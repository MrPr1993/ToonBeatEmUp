/// @description /Make sure to only count the previous ones, otherwise you'll get an error.

if __view_get( e__VW.XView, 0 )>=532
{
thunder=instance_create_depth(0,0,16777215,oAlphaFadeFX) with thunder
{sprite_index=spr_whitecol image_xscale=999999 image_yscale=99999999 isfading=1 PlaySound(snd_thunder)}
oControl.quakeFXTime=10

en3=instance_create(__view_get( e__VW.XView, 0 )+320+64,176+32,oFatBurglar) with en3
{canAttack=5  alarm[3]=30 enemy_modify(my_pal_sprite,4,"MR. WIDE",0,0.4,0.4)}
}
else
{
timeline_position-=1
}

