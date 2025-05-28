/// @description Baddies Appear 7

if __view_get( e__VW.XView, 0 )>=6660-2-320
{
en3=instance_create(__view_get( e__VW.XView, 0)+320-64,176,oSpacer)
with en3 {image_xscale=-1 flashFX(x,y+1,z,spr_ateleporter,0,0.25,10,1,1,c_white,1)
	enemy_switch("VER",0)
	}
en4=instance_create(__view_get( e__VW.XView, 0)+320-64,240,oSpacer)
with en4 {image_xscale=-1 flashFX(x,y+1,z,spr_ateleporter,0,0.25,10,1,1,c_white,1)
	enemy_switch("VER",0)
	}
	
////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 196,oSpacer)
with P2en1 {enemy_switch("VER",0) canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+32, 196+32,oSpacer)
with P2en2 {enemy_switch("VER",0) canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 196+64,oSpacer)
with P2en3 {enemy_switch("VER",0) canAttack=5 alarm[1]=30 image_xscale=-1}}
////

}
else
{
timeline_position-=1
}

