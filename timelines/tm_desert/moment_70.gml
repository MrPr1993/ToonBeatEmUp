/// @description Pyramid Area

if __view_get( e__VW.XView, 0 )>=2868-2
{PlaySound(snd_stonebreaks)
en1=instance_create(__view_get( e__VW.XView, 0)+64,180+48,oDancer)
with en1 {
	var dusty=0; repeat(8) {dust_make(x,y,0,lengthdir_x(2,45*dusty),lengthdir_y(1,45*dusty),0) dusty+=1;}	
	image_xscale=1 z=-8
	animFrame=0 anim=13 zSpeed=-8 canmove=0 ground=0
	name="RULA" current_pal=1;
	}
	
en2=instance_create(__view_get( e__VW.XView, 0)+320-64,180+24,oDancer)
with en2 {
	var dusty=0; repeat(8) {dust_make(x,y,0,lengthdir_x(2,45*dusty),lengthdir_y(1,45*dusty),0) dusty+=1;}	
	image_xscale=-1 z=-8
	animFrame=0 anim=13 zSpeed=-8 canmove=0 ground=0
	name="RULA" current_pal=1;
	}

en3=instance_create(__view_get( e__VW.XView, 0)+320-64,180+64,oDancer)
with en3 {
	var dusty=0; repeat(8) {dust_make(x,y,0,lengthdir_x(2,45*dusty),lengthdir_y(1,45*dusty),0) dusty+=1;}	
	image_xscale=-1 z=-8
	animFrame=0 anim=13 zSpeed=-8 canmove=0 ground=0
	name="RULA" current_pal=1;
	}
}
else
timeline_position-=1
