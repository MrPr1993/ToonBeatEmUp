/// @description Baddies Appear 7

if __view_get( e__VW.XView, 0 )>=6480-2-320+320
{
en3=instance_create(__view_get( e__VW.XView, 0)+320+64,176,oMerman)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=60 current_pal=5
	enemy_switch("ADAM",0)
	}

en4=instance_create(__view_get( e__VW.XView, 0)+320+64,210,oMerman)
with en4 {image_xscale=-1 canAttack=5 alarm[1]=60 current_pal=5
		enemy_switch("ADAM",0)
	} 	

}
else
{
timeline_position-=1
}

