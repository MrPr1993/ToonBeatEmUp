/// @description Baddies Appear 5

if __view_get( e__VW.XView, 0 )>=5200-2-320
{
	

en4=instance_create(5460,192,oSlime) with en4 {image_xscale=-1 canAttack=5 alarm[1]=60 anim=13 z=-200 canmove=0
	enemy_switch("CALCIUM",0)
	}

en5=instance_create(5460,256,oSlime) with en5 {image_xscale=-1 canAttack=5 alarm[1]=60 anim=13 z=-200 canmove=0
	enemy_switch("CHEMI",0)
	}
	

}
else
{
timeline_position-=1
}

