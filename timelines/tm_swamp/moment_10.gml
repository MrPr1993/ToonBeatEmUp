/// @description /Make sure to only count the previous ones, otherwise you'll get an error.

if __view_get( e__VW.XView, 0 )>=1048/2
{

en7=instance_create(__view_get( e__VW.XView, 0)-64,192,oEnemy1)
with en7
{canAttack=5 image_xscale=1 alarm[0]=31
}
en8=instance_create(__view_get( e__VW.XView, 0)-70,192+32,oFatBurglar)
with en8
{canAttack=5 image_xscale=1 alarm[0]=31
}
en9=instance_create(__view_get( e__VW.XView, 0)-64,192+64,oEnemy1)
with en9
{canAttack=5 image_xscale=1 alarm[0]=31
}

timeline_position=200
}
else
{
timeline_position-=1
}

