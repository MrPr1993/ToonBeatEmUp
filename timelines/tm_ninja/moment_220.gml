/// @description Gunner
////Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=1158
{
en4=instance_create(__view_get( e__VW.XView, 0 )-32, 218,oSneak) with en4
{canAttack=5 alarm[1]=30
weapon_add("TOMMYGUN")
}

if playernumber>=2 P2en1=instance_create(__view_get( e__VW.XView, 0 )-32, 218+32,oSneak) with P2en1
{canAttack=5 alarm[1]=30
weapon_add("TOMMYGUN")
}

if playernumber>=3 P2en2=instance_create(__view_get( e__VW.XView, 0 )-32, 218+2,oEnemy1) with P2en2
{canAttack=5 alarm[1]=30
}

if playernumber>=4 P2en3=instance_create(__view_get( e__VW.XView, 0 )-32, 218+32,oEnemy1B) with P2en3
{canAttack=5 alarm[1]=30}

}
else
timeline_position-=1

