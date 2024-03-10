/// @description Baddies Appear 3

if __view_get( e__VW.XView, 0 )>=3280-2-320
{
en1=instance_create(__view_get( e__VW.XView, 0)+320-64,200+24,oBeeLady)
with en1 {image_xscale=-1 ground=0 canmove=0 anim=13 z=-200
	enemy_switch("HONEYDEW",0)
	}

en2=instance_create(__view_get( e__VW.XView, 0)+320-64,200+64,oFairy)
with en2 {image_xscale=-1 ground=0 canmove=0 anim=13 z=-200
	enemy_switch("WENDY",0)
	}	

en3=instance_create(__view_get( e__VW.XView, 0)-64,200+24,oHarpyE)
with en3 {image_xscale=1 canAttack=5 alarm[1]=60
		enemy_switch("ICARA",0)
	}

}
else
{
timeline_position-=1
}

