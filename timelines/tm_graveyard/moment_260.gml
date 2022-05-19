/// @description Plane 2
////Make sure to only count the previous ones, otherwise you'll get an error.
if !instance_exists(en1)
and !instance_exists(en2)
{
with thunder
{sprite_index=spr_whitecol oControl.quakeFXTime=10 image_alpha=1 image_xscale=999999 image_yscale=99999999 isfading=1 PlaySound(snd_thunder)}
	
en1=instance_create(__view_get( e__VW.XView, 0 )+160-64,224-32,oZombieMan)
with en1
{canmove=0 animFrame=0 anim=666 alarm[1]=choose(60,90,120)}
en2=instance_create(__view_get( e__VW.XView, 0 )+160-64,224+32,oZombieMan)
with en2
{current_pal=1 name="ZOMBOBBY"
canmove=0 animFrame=0 anim=666 alarm[1]=choose(60,90,120) image_xscale=-1
}
en3=instance_create(__view_get( e__VW.XView, 0 )+160+64,224,oZombieWoman)
with en3
{canmove=0 animFrame=0 anim=666 alarm[1]=choose(60,90,120)}
}
else
timeline_position-=1

