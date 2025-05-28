/// @description Dancers Appear

if __view_get( e__VW.XView, 0 )>=2228-2
{PlaySound(snd_stonebreaks)




////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )-32, 182,oDancer)
with P2en1 {weaponspr=-1
	var dusty=0; repeat(8) {dust_make(x,y,0,lengthdir_x(2,45*dusty),lengthdir_y(1,45*dusty),0) dusty+=1;}	
	image_xscale=-1 z=-8
	AnimFrame=0 anim=13 zSpeed=-8 canmove=0 ground=0
	}}

en1=instance_create(__view_get( e__VW.XView, 0)+320-64,182+20,oDancer)
with en1 {weaponspr=-1
	var dusty=0; repeat(8) {dust_make(x,y,0,lengthdir_x(2,45*dusty),lengthdir_y(1,45*dusty),0) dusty+=1;}	
	image_xscale=-1 z=-8
	AnimFrame=0 anim=13 zSpeed=-8 canmove=0 ground=0
	}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )-32, 182+40,oDancer)
with P2en2 {weaponspr=-1
	var dusty=0; repeat(8) {dust_make(x,y,0,lengthdir_x(2,45*dusty),lengthdir_y(1,45*dusty),0) dusty+=1;}	
	image_xscale=-1 z=-8
	AnimFrame=0 anim=13 zSpeed=-8 canmove=0 ground=0
	}}

en2=instance_create(__view_get( e__VW.XView, 0)+320-64,182+60,oDancer)
with en2 {weaponspr=-1
	var dusty=0; repeat(8) {dust_make(x,y,0,lengthdir_x(2,45*dusty),lengthdir_y(1,45*dusty),0) dusty+=1;}	
	image_xscale=-1 z=-8
	AnimFrame=0 anim=13 zSpeed=-8 canmove=0 ground=0
	}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )-32, 180+80,oDancer)
with P2en3 {weaponspr=-1
	var dusty=0; repeat(8) {dust_make(x,y,0,lengthdir_x(2,45*dusty),lengthdir_y(1,45*dusty),0) dusty+=1;}	
	image_xscale=-1 z=-8
	AnimFrame=0 anim=13 zSpeed=-8 canmove=0 ground=0
	}}
////


}
else
timeline_position-=1
