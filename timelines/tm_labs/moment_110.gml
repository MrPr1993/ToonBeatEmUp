/// @description Baddies Appear 5

if __view_get( e__VW.XView, 0 )>=5200-2-320
{
	

en4=instance_create(5160,192,oSlime) with en4 {image_xscale=-1 canAttack=5 alarm[1]=60 anim=13 z=-200 canmove=0
	enemy_switch("CALCIUM",0)
	}

en5=instance_create(5160,256,oSlime) with en5 {image_xscale=-1 canAttack=5 alarm[1]=60 anim=13 z=-200 canmove=0
	enemy_switch("CHEMI",0)
	}

////
if playernumber>=2 {P2en1=instance_create(5070,224,oSlime)
with P2en1 {image_xscale=-1 canAttack=5 alarm[1]=60 anim=13 z=-200 canmove=0 enemy_switch("CALCIUM",0)}}

if playernumber>=3 {P2en2=instance_create(5070,224-16,oSlime)
with P2en2 {image_xscale=-1 canAttack=5 alarm[1]=60 anim=13 z=-200 canmove=0 enemy_switch("CHEMI",0)}}

if playernumber>=4 {P2en3=instance_create(5070,224+16,oSlime)
with P2en3 {image_xscale=-1 canAttack=5 alarm[1]=60 anim=13 z=-200 canmove=0 enemy_switch("CALCIUM",0)}}
////


}
else
{
timeline_position-=1
}

