/// @description Baddies Appear 6

if __view_get( e__VW.XView, 0 )>=5840-2-320
{

en7=instance_create(5560,192,oSlime) with en7 {image_xscale=1 canAttack=5 alarm[1]=60 anim=13 z=-200 canmove=0
	enemy_switch("BLUEBERRY",0)	
	}

en8=instance_create(5560,256,oSlime) with en8 {image_xscale=1 canAttack=5 alarm[1]=60 anim=13 z=-200 canmove=0
	enemy_switch("BANANA",0)	
	}


////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+64, 220,oGoblin)
with P2en1 {canAttack=5 alarm[1]=60 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+64, 200,oGoblin)
with P2en2 {canAttack=5 alarm[1]=60 image_xscale=-1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+64, 240,oGoblin)
with P2en3 {canAttack=5 alarm[1]=60 image_xscale=-1}}
////


}
else
{
timeline_position-=1
}

