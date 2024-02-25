/// @description Baddies Appear 5

if __view_get( e__VW.XView, 0 )>=5200-2-320
{
en1=instance_create(5140,200+24,oSlime) with en1 {image_xscale=-1 canAttack=5 alarm[1]=60 anim=13 z=-200 canmove=0}

}
else
{
timeline_position-=1
}

