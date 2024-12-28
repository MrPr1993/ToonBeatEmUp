/// @description

if __view_get( e__VW.XView, 0 )>=3280-2-320-640
{
en3=instance_create(__view_get( e__VW.XView, 0)+320+64,190+32,oSnowGirl)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("UNDA",0)

	}	

en4=instance_create(__view_get( e__VW.XView, 0)+320+64,190+64,oSnowGirl)
with en4 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("UNDA",0)
	
	}	

}
else
{
timeline_position-=1
}

