/// @description Baddies Appear 6

if __view_get( e__VW.XView, 0 )>=5840-2-320
{
en1=instance_create(__view_get( e__VW.XView, 0)+64,230-32,oFairy)
with en1 {image_xscale=1 current_pal=3 ground=0 canmove=0 anim=13 z=-200
	enemy_switch("LUSH",0)
	}

en2=instance_create(__view_get( e__VW.XView, 0)+64,230,oFairy)
with en2 {image_xscale=1 current_pal=3  ground=0 canmove=0 anim=13 z=-200
	enemy_switch("LUSH",0)
	}	

en3=instance_create(__view_get( e__VW.XView, 0)+64,230+32,oFairy)
with en3 {image_xscale=1 current_pal=3  ground=0 canmove=0 anim=13 z=-200
	enemy_switch("LUSH",0)
	}	

////
if playernumber>=3 {P2en1=instance_create(__view_get( e__VW.XView, 0)+320-64,230-32,oFairy)
with P2en1 {image_xscale=1 current_pal=3  ground=0 canmove=0 anim=13 z=-200	enemy_switch("LUSH",0)}}

if playernumber>=2 {P2en2=instance_create(__view_get( e__VW.XView, 0)+320-64,230,oFairy)
with P2en2 {image_xscale=1 current_pal=3  ground=0 canmove=0 anim=13 z=-200	enemy_switch("LUSH",0)}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0)+320-64,230+32,oFairy)
with P2en3 {image_xscale=1 current_pal=3  ground=0 canmove=0 anim=13 z=-200	enemy_switch("LUSH",0)}}
////

}
else
{
timeline_position-=1
}

