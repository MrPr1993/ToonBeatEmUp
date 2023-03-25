/// @description Next
////Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=1158-320
{

en1=instance_create(1146,132-8,oEntryFenceJump)
with en1
{depth=16777208 isDepth=0 ySpeed=1.5 rideX=1160
}
en2=instance_create(1300,132-8,oEntryFenceJump)
with en2
{depth=16777208 isDepth=0 rangeXAdd=48  ySpeed=1.5
		spawnFall=spr_burglarB_front rideX=1333
	moveSpr=spr_burglarB_run 
	spawnEnemy=oEnemy1B
	enemy_modify(my_pal_sprite,4,"MR.STIL",0,0.24,0.24)
	
	}
	
en3=instance_create(1500,132-8,oEntryFenceJump)
with en3
{depth=16777208 isDepth=0 rangeXAdd=-48 ySpeed=1.5 rideX=1520
enemy_modify(my_pal_sprite,4,"MR.LAR",0,0.24,0.24) 
}

en4=instance_create(1660-32,196-32,oWrestler)
with en4
{canmove=0 isIdle=1 alarm[1]=60 anim=70002 idleRange=30 
	enemyIdle3=spr_wrestler_idle1
	}
en5=instance_create(1660+48,196-32,oWrestler)
with en5{canmove=0 isIdle=1 alarm[1]=60 anim=70002 idleRange=60+32
	enemyIdle3=spr_wrestler_idle2 enemy_modify(spr_ninjapal,7,"MS.CRUSH",0,hp,maxhp)	
	image_xscale=-1}

}
else
timeline_position-=1

