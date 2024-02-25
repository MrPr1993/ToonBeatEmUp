/// @description Baddies Appear 6

if __view_get( e__VW.XView, 0 )>=5840-2-320
{

en7=instance_create(5560,192,oSlime) with en7 {image_xscale=1 canAttack=5 alarm[1]=60 anim=13 z=-200 canmove=0}

en8=instance_create(5560,256,oSlime) with en8 {image_xscale=1 canAttack=5 alarm[1]=60 anim=13 z=-200 canmove=0}
	
}
else
{
timeline_position-=1
}

