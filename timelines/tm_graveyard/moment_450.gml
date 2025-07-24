if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
and !instance_exists(en6)
{
//with oControl {//camMove=0 camMax=room_width 980 
//goActive=1; ambushtime=0; alarm[1]=90
//xGoCheck=__view_get( e__VW.XView, 0 )+320
//}
PlaySound(snd_steal)
with axe1 shaketime=60
with axe2 shaketime=60

with thunder
{sprite_index=spr_whitecol oControl.quakeFXTime=10 image_alpha=1 image_xscale=999999 image_yscale=99999999 isfading=1 PlaySound(snd_thunder)}

port=instance_create_depth(4272, 32,-1,oFlashFX) with port
{depth=16777201 haspal=0 sprite_index=spr_ghostport image_speed=0.5 animEnd=0 alarm[0]=0}

}
else
timeline_position-=1
