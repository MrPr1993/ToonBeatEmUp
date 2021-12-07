	if oPlayer.dead=0 and oPlayer.hurt=0 and oPlayer.ground
	{
with oPlayer 
{//x=160 y=200
canControl=0
ground=0
zSpeed=-32
PlaySound(snd_swing) key_right=0 key_left=0 key_up=0 key_down=0
hspeed=8
vspeed=0



fakeen=instance_create_depth(847,170,0,oAnimFX) with fakeen
{
sprite_index=spr_burglar_stand image_speed=0
}

}

en1=instance_create_depth(1070,132,0,oSneak)
with en1 {canAttack=6 isIdle=1 alarm[1]=60 idleRange=60 image_xscale=-1}

en2=instance_create_depth(1070+32,132,0,oSneak)
with en2 {canAttack=6 isIdle=1 alarm[1]=60 idleRange=60 image_xscale=-1
	enemy_modify(my_pal_sprite,1,"MR. BLAST",0,0.2,0.2)
	}



//
oEnemySpawner.canFollow=0
oControl.camMove=0
oEnemySpawner.roomHSpd=8
oEnemySpawner.roomMove=1
//

	}
	
	else 
timeline_position-=1
//StreetBG
//847
