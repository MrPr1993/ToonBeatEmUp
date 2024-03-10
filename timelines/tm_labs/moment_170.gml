/// @description Baddies Appear 8 - Rocket Variants?

if __view_get( e__VW.XView, 0 )>=7440-2-320
{
en1=instance_create(__view_get( e__VW.XView, 0)-64,184,oLadybot)
with en1 {image_xscale=1
	enemy_switch("METR-A",0)
	canAttack=5 alarm[1]=30 canAttack5Move=11
	}

en2=instance_create(__view_get( e__VW.XView, 0)-64,200,oLadybot)
with en2 {image_xscale=1
	enemy_switch("METR-A",0)
	canAttack=5 alarm[1]=30 canAttack5Move=11
	}	

en3=instance_create(__view_get( e__VW.XView, 0)+320+64,216,oLadybot)
with en3 {image_xscale=-1
	enemy_switch("METR-A",0)
	canAttack=5 alarm[1]=30 canAttack5Move=11
	}	

}
else
{
timeline_position-=1
}

