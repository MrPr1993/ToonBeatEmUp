if !instance_exists(en1)
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
{
en1=instance_create(__view_get( e__VW.XView, 0)+160-64,200-32,oDiver)
with en1 {image_xscale=1 ground=0 enemy_switch("MR.DROP",0)
	canmove=0 anim=13 z=-200 weapon_add("HARPOONGUN")
	}
en2=instance_create(__view_get( e__VW.XView, 0)+160-64,200+32,oDiver)
with en2 {image_xscale=1 ground=0 enemy_switch("MR.DROP",0)
	canmove=0 anim=13 z=-200 weapon_add("HARPOONGUN")
	}
en3=instance_create(__view_get( e__VW.XView, 0)+160+64,200-32,oDiver)
with en3 {image_xscale=-1 ground=0 enemy_switch("MR.DROP",0)
	canmove=0 anim=13 z=-200 weapon_add("HARPOONGUN")
	}
en4=instance_create(__view_get( e__VW.XView, 0)+160+64,200+32,oDiver)
with en4 {image_xscale=-1 ground=0 enemy_switch("MR.DROP",0)
	canmove=0 anim=13 z=-200 weapon_add("HARPOONGUN")
	}
}
else
timeline_position-=1;