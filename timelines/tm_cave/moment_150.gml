/// @description Baddies Appear 7

if __view_get( e__VW.XView, 0 )>=7440-2-320
{
en1=instance_create(__view_get( e__VW.XView, 0)+320+64,190,oShroom)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=60
	enemy_switch("ELEGANS",0)	
	}

en2=instance_create(__view_get( e__VW.XView, 0)+320+64,224,oSnowGirl)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("UNDA",0)
	}		

en3=instance_create(__view_get( e__VW.XView, 0)+320+64,256,oGoblin)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=60
	enemy_switch("ELEGANS",0)
	}	
}
else
{
timeline_position-=1
}

