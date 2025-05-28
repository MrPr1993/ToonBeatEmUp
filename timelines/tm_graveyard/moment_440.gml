if __view_get( e__VW.XView, 0 )>=4512-32-320
{
en5=instance_create_depth(__view_get( e__VW.XView, 0 )-16,210,0,oZombieMan) with en5
{image_xscale=-1 canAttack=5 alarm[3]=30
	current_pal=1 name="ZOMBOBBY" enemy_switch("ZOMBOBBY",0)
	}
en6=instance_create_depth(__view_get( e__VW.XView, 0 )-16,190,0,oZombieWoman) with en6
{image_xscale=-1 canAttack=5 alarm[3]=30
	current_pal=1 name="ZOMBELLE" enemy_switch("ZOMBELLE",0)
	}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 200,oEnemy1)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+32, 200+32,oEnemy1B)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 200+64,oEnemy1)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=-1}}
////
}
else
{
timeline_position-=1
}
