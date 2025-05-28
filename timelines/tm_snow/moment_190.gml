/// @description Baddies Appear 9

if __view_get( e__VW.XView, 0 )>=8080-2-320
{
en1=instance_create(__view_get( e__VW.XView, 0)+320+64,200,oFairy)
with en1 {image_xscale=-1 current_pal=3 canAttack=5 alarm[1]=60
	enemy_switch("LUSH",0)}	

en2=instance_create(__view_get( e__VW.XView, 0)+320+64,210,oGoblin)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60
	}	

en3=instance_create(__view_get( e__VW.XView, 0)+320+64,220,oFairy)
with en3 {image_xscale=-1 current_pal=3 canAttack=5 alarm[1]=60
	enemy_switch("LUSH",0)}	

en4=instance_create(__view_get( e__VW.XView, 0)+320+64,230,oGoblin)
with en4 {image_xscale=-1 canAttack=5 alarm[1]=60
	}	

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0)+320+64,240,oFairy)
with P2en1 {enemy_switch("LUSH",0) canAttack=5 alarm[1]=60 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0)+320+64,250,oGoblin)
with P2en2 {canAttack=5 alarm[1]=60 image_xscale=-1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0)+320+64,190,oFairy)
with P2en3 {enemy_switch("LUSH",0) canAttack=5 alarm[1]=60 image_xscale=-1}}
////

}
else
{
timeline_position-=1
}

