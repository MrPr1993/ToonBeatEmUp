/// @description Baddies Appear 1 - Elevator

if __view_get( e__VW.XView, 0 )>=1530-2-320+320
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
specialSet7+=1
if specialSet7>160 specialSet7=0
layer_y("ElevatorBG",specialSet7)
//layer_background_htiled("ElevatorBG",false)

}

}
else
{
timeline_position-=1
}

