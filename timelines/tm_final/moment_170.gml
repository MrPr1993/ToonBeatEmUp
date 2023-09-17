/// @description Baddies Appear 8

if __view_get( e__VW.XView, 0 )>=11320-2-320
{
en1=instance_create(__view_get( e__VW.XView, 0)+320+64,178,oEnemy1)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=60}
en2=instance_create(__view_get( e__VW.XView, 0)+320+64,178+16,oEnemy1)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60}
en3=instance_create(__view_get( e__VW.XView, 0)+320+64,178+32,oEnemy1)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=60}
en4=instance_create(__view_get( e__VW.XView, 0)+320+64,178+48,oEnemy1)
with en4 {image_xscale=-1 canAttack=5 alarm[1]=60}

}
else
{
timeline_position-=1
}

