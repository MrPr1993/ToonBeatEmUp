if __view_get( e__VW.XView, 0 )>=832
{
en3=instance_create_depth(1872,148,0,oSneak)
en3.canAttack=6 en3.isIdle=1 en3.alarm[1]=60 en3.idleRange=60
en3.anim=70000 en3.idleRange=90 en3.image_xscale=-1

en4=instance_create_depth(1680,160,-1,oEntryClimb) en4.z=-64 en4.rangeX=1680-300
with en4 enemy_modify(my_pal_sprite,4,"MR. LAR",0,0.24,0.24)
}
else
{

timeline_position-=1
}

