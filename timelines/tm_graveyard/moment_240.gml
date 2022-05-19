/// @description Next
////Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=1158
{

en1=instance_create(__view_get( e__VW.XView, 0)-64,192,oEnemy1)
with en1
{canAttack=3 image_xscale=1 alarm[0]=31
}
en2=instance_create(__view_get( e__VW.XView, 0)-70,192+32,oEnemy1B)
with en2
{canAttack=3 image_xscale=1 alarm[0]=31
}
en3=instance_create(__view_get( e__VW.XView, 0)-64,192+64,oEnemy1)
with en3
{canAttack=3 image_xscale=1 alarm[0]=31
}

}
else
timeline_position-=1

