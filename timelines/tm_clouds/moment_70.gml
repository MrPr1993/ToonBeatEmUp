/// @description Baddies Appear 3

if __view_get( e__VW.XView, 0 )>=3280-2-320
{
en1=instance_create(__view_get( e__VW.XView, 0)+320-64,240,oBeeLady)
with en1 {image_xscale=-1 ground=0 canmove=0 anim=13 z=-200
	enemy_switch("HONEYDEW",0)
	}


////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+64, 220,oBeeLady)
with P2en1 {image_xscale=-1 ground=0 canmove=0 anim=13 z=-200
	enemy_switch("HONEYDEW",0)}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+64, 200,oBeeLady)
with P2en2 {image_xscale=-1 ground=0 canmove=0 anim=13 z=-200
	}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+64, 260,oBeeLady)
with P2en3 {image_xscale=-1 ground=0 canmove=0 anim=13 z=-200
	}}
////




}
else
{
timeline_position-=1
}

