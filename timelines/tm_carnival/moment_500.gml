///@description Ride

if specialSet6=300
{
if boss.canmove
{
with bgsetter
{y=-9999999
image_alpha=1
specialdraw=function()
{
if image_alpha>0 image_alpha-=0.05 else instance_destroy()

draw_set_alpha(image_alpha) draw_set_color(c_white)
draw_rectangle(__view_get( e__VW.XView, 0)-4,-666,__view_get( e__VW.XView, 0)+444,777,false)
draw_set_alpha(1)
}
	

}

with oPlayer
{layer_set_visible("TILE_AUDIENCE",1)
	
canControl=1 automove=0
}
} else timeline_position-=1
}
else
{
timeline_position-=1

if !instance_exists(en1)
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
en2=instance_create(__view_get( e__VW.XView, 0)+160-64,228,oClown)
with en2 {image_xscale=1 ground=0  enemy_switch("MARI",0) weapon_add_double("TWIRL")
	 z=-200 canmove=0 anim=13
	}
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
en1=instance_create(__view_get( e__VW.XView, 0)+160+64,228-32,oBear)
with en1 {image_xscale=-1 ground=0 canmove=0 anim=13
	z=-200 //weapon_add("HARPOONGUN")
	}
en2=instance_create(__view_get( e__VW.XView, 0)+160+64,228+32,oFairy)
with en2 {image_xscale=-1 ground=0  //enemy_switch(my_pal_sprite,1,"MARI",0,0.24,0.24)
	 z=-200 canmove=0 anim=13
	}
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
}

if specialSet6=120
{
with bgsetter
{
newscript=function()
{if image_alpha>0 image_alpha-=0.01}

with oPlayer
{
canControl=0
automoveX=6688+64 automoveY=178+64 automove=1
}
}
}

if specialSet6=200
{oControl.MusicFade=1 oControl.MusicFadeAdd=1
boss=instance_create(__view_get( e__VW.XView, 0)+160,228,oDuckBoss)
boss.z=-200 boss.anim=100 boss.animFrame=0 boss.ground=0 boss.canmove=0

}

if specialSet6=240
{oControl.MusicFade=0 oControl.MusicFade=0 oControl.MusicFadeAdd=1
musicplaystart(msc_boss3)
oControl.bossID=oDuckBoss

}



}



}






