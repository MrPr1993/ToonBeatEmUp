/// @description /Make sure to only count the previous ones, otherwise you'll get an error.



if __view_get( e__VW.XView, 0 )>=320
{
	
en1=instance_create(850,164,oEnemy1) en1.canAttack=0 en1.alarm[1]=60
en2=instance_create(888,164,oEnemy1) en2.canAttack=0 en2.alarm[1]=60

with oEnemySpawner
if selfID="WaveSet1" {wave=0 x=480 image_xscale=10}

en3=instance_create(__view_get( e__VW.XView, 0 )-64,176,oEnemy1)
en4=instance_create(__view_get( e__VW.XView, 0 )-32,192,oEnemy1)
}
else
{
timeline_position-=1
}

