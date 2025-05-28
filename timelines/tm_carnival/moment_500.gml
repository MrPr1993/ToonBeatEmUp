///@description Ride

if specialSet6=200
{

}
else
{
timeline_position-=1

if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
and !instance_exists(en6)
{specialSet6+=1
if specialSet6=60
{
en1=instance_create(__view_get( e__VW.XView, 0)+160-64,228,oClown)
with en1 {image_xscale=1 ground=0 canmove=0 anim=13
	z=-200 //weapon_add("HARPOONGUN")
	}
en2=instance_create(__view_get( e__VW.XView, 0)+160+64,228,oClown)
with en2 {image_xscale=-1 ground=0  enemy_switch("MARI",0) weapon_add_double("TWIRL")
	 z=-200 canmove=0 anim=13
	}



////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 200,oBear)
with P2en1 {enemy_switch("PADDY",0) canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )-32, 200+32,oBear)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 200+64,oBear)
with P2en3 {enemy_switch("PADDY",0) canAttack=5 alarm[1]=30 image_xscale=-1}}
////


}


if specialSet6=80
{
en1=instance_create(__view_get( e__VW.XView, 0)+160-64,228-32,oBear)
with en1 {image_xscale=1 ground=0 canmove=0 anim=13
	z=-200 //weapon_add("HARPOONGUN")
	}
en2=instance_create(__view_get( e__VW.XView, 0)+160-64,228+32,oFairy)
with en2 {image_xscale=1 ground=0  //enemy_switch(my_pal_sprite,1,"MARI",0,0.24,0.24)
	 z=-200 canmove=0 anim=13
	}
en3=instance_create(__view_get( e__VW.XView, 0)+160+64,228-32,oBear)
with en3 {image_xscale=-1 ground=0 canmove=0 anim=13
	z=-200 //weapon_add("HARPOONGUN")
	}
en4=instance_create(__view_get( e__VW.XView, 0)+160+64,228+32,oFairy)
with en4 {image_xscale=-1 ground=0  //enemy_switch(my_pal_sprite,1,"MARI",0,0.24,0.24)
	 z=-200 canmove=0 anim=13
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

if specialSet6=100
{
en1=instance_create(__view_get( e__VW.XView, 0)+160-64,228-32,oClown)
with en1 {image_xscale=1 ground=0 canmove=0 anim=13  enemy_switch("POPPI",0) weapon_add_double("TWIRL")
	z=-200 //weapon_add("HARPOONGUN")
	}
en2=instance_create(__view_get( e__VW.XView, 0)+160-64,228+32,oBear)
with en2 {image_xscale=1 ground=0 
	 z=-200  canmove=0 anim=13
	}
en3=instance_create(__view_get( e__VW.XView, 0)+160+64,228-32,oClown)
with en3 {image_xscale=-1 ground=0  canmove=0 anim=13 enemy_switch("POPPI",0) weapon_add_double("TWIRL")
	z=-200 //weapon_add("HARPOONGUN")
	}
en4=instance_create(__view_get( e__VW.XView, 0)+160+64,228+32,oBear)
with en4 {image_xscale=-1 ground=0  
	 z=-200  canmove=0 anim=13
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






}



}






