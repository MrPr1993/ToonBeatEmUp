/// @description Submarine Area

if __view_get( e__VW.XView, 0 )>=3680-2
{
en1=instance_create(__view_get( e__VW.XView, 0)+160-64,200-32,oDiver)
with en1 {image_xscale=1 ground=0 enemy_modify(my_pal_sprite,6,"MR.DROP",0,0.24,0.24)
	canmove=0 anim=13 z=-200 weapon_add("HARPOONGUN")
	}
en2=instance_create(__view_get( e__VW.XView, 0)+160-64,200+32,oDiver)
with en2 {image_xscale=1 ground=0 
	canmove=0 anim=13 z=-200
	}
en3=instance_create(__view_get( e__VW.XView, 0)+160+64,200-32,oDiver)
with en3 {image_xscale=-1 ground=0 enemy_modify(my_pal_sprite,6,"MR.DROP",0,0.24,0.24)
	canmove=0 anim=13 z=-200 weapon_add("HARPOONGUN")
	}
en4=instance_create(__view_get( e__VW.XView, 0)+160+64,200+32,oDiver)
with en4 {image_xscale=-1 ground=0
	canmove=0 anim=13 z=-200
	}
}
else
timeline_position-=1
