if __view_get( e__VW.XView, 0 )>=594
{
en3=instance_create(__view_get( e__VW.XView, 0)+320-64,200-32,oDiver)
with en3 {image_xscale=-1 ground=0
	canmove=0 anim=13 z=-200
	}
en4=instance_create(__view_get( e__VW.XView, 0)+320-64,200,oDiver)
with en4 {image_xscale=-1 ground=0 enemy_modify(my_pal_sprite,6,"MR.DROP",0,0.24,0.24)
	canmove=0 anim=13 z=-200 weapon_add("HARPOONGUN")
	}
en5=instance_create(__view_get( e__VW.XView, 0)+320-64,200+32,oDiver)
with en5 {image_xscale=-1 ground=0
	canmove=0 anim=13 z=-200
	}
}
else
timeline_position-=1
