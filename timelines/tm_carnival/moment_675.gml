if boss.hp<1.5
{
if enemySpawn0=0
{
enemySpawn0=1
en1=instance_create(__view_get( e__VW.XView, 0)+160-64,228-32,oBear)
with en1 {image_xscale=1 ground=0 canmove=0 anim=13
	z=-200 //weapon_add("HARPOONGUN")
	}
en1=instance_create(__view_get( e__VW.XView, 0)+160+64,228-32,oBear)
with en1 {image_xscale=-1 ground=0 canmove=0 anim=13
	z=-200 //weapon_add("HARPOONGUN")
	}
////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 200,oBear)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )-32, 200+32,oBear)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 200+64,oBear)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=-1}}
////
}
if boss.hp<1
{
if enemySpawn0=1
{
enemySpawn0=1
en1=instance_create(__view_get( e__VW.XView, 0)+160-64,228-32,oFairy)
with en1 {image_xscale=1 ground=0 canmove=0 anim=13
	z=-200 //weapon_add("HARPOONGUN")
	}
en2=instance_create(__view_get( e__VW.XView, 0)+160-64,228+32,oFairy)
with en2 {image_xscale=1 ground=0  //enemy_switch(my_pal_sprite,1,"MARI",0,0.24,0.24)
	 z=-200 canmove=0 anim=13
	}
en2=instance_create(__view_get( e__VW.XView, 0)+160+64,228,oClown)
with en2 {image_xscale=-1 ground=0  //enemy_switch(my_pal_sprite,1,"MARI",0,0.24,0.24)
	 z=-200 canmove=0 anim=13
	}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 200,oBear)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )-32, 200+32,oBear)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 200+64,oBear)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=-1}}
////
}
}
else timeline_position-=1
}
else timeline_position-=1
