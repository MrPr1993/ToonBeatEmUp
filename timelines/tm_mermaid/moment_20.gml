if __view_get( e__VW.XView, 0 )>=594
{
en3=instance_create(__view_get( e__VW.XView, 0)+320-64,200,oDiver) 
with en3 {image_xscale=-1 ground=0 enemy_switch("MR.DROP",0)
	canmove=0 anim=13 z=-200 weapon_add("HARPOONGUN")
	}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )-32, 200,oMartian)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )-32, 200-32,oMartian)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )-32, 200+32,oMartian)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=1}}
////


}
else
timeline_position-=1
