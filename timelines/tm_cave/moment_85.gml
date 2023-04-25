/// @description Baddies Appear 4/5

if __view_get( e__VW.XView, 0 )>=4560-2-640-320
{
en3=instance_create(__view_get( e__VW.XView, 0)+320+64,180,oShroom)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=60}

en4=instance_create(__view_get( e__VW.XView, 0)+320+64,220,oShroom)
with en4 {image_xscale=-1 canAttack=5 alarm[1]=60}	

}
else
{
timeline_position-=1
}

