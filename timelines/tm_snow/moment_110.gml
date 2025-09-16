/// @description Baddies Appear 5

if __view_get( e__VW.XView, 0 )>=5200-2-320
{with oRainFX fade=1
en1=instance_create(__view_get( e__VW.XView, 0)+320+64,230-20,oFairy)
with en1 {enemy_switch("LUSH",0) image_xscale=-1 canAttack=5 alarm[1]=60}

en2=instance_create(__view_get( e__VW.XView, 0)+320+64,230,oSnowGirl)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60
	enemy_switch("EVA",0)
	}	

en3=instance_create(__view_get( e__VW.XView, 0)+320+64,230+20,oFairy)
with en3 {enemy_switch("LUSH",0) image_xscale=-1 canAttack=5 alarm[1]=60}	

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )-32, 200+40,oSnowGirl)
with P2en1 {enemy_switch("EVA",0) canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )-32, 190,oFairy)
with P2en2 {enemy_switch("LUSH",0) canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )-32, 270,oFairy)
with P2en3 {enemy_switch("LUSH",0) canAttack=5 alarm[1]=30 image_xscale=1}}
////


}
else
{
timeline_position-=1
}

