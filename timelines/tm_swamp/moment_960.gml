if __view_get( e__VW.XView, 0 )>=8680-2
{
en1=instance_create(__view_get( e__VW.XView, 0)+320+64,200-32,oPlant)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=30 canAttack5Move=12}

en2=instance_create(__view_get( e__VW.XView, 0)+320+64,200+32,oPlant)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=30 canAttack5Move=12}

}
else
{
timeline_position-=1
}