/// @description Baddies Appear 4 - Elevator

if __view_get( e__VW.XView, 0 )>=4026-2
{
en1=instance_create(__view_get( e__VW.XView, 0)+320+64,200+24,oEnemy1)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=60}

en2=instance_create(__view_get( e__VW.XView, 0)+320+64,200+64,oEnemy1B)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60}	

PlaySound(snd_hitgroundmetal)
oControl.quakeFXTime=10

with oEnemySpawner
specialscript=function()
{
specialSet8+=2
if specialSet8>72 specialSet8=0
layer_x("ElevatorBG",-specialSet8)
}

}
else
{
timeline_position-=1
}

