
oEnemySpawner.roomHSpd=0
oEnemySpawner.roomMove=0

with oPlayer
{canControl=0 areaEntry=1
key_up=0 key_down=0 key_left=0
key_right=0 doubledash=0 dashing=0
AnimFrame=0 anim=302 canmove=0
}

PlaySound(snd_jump)
fk=instance_create_depth(3896, 140,16777207,oFlashFX) with fk
{isDepth=0 depth=16777207 alarm[0]=300 animEnd=0 sprite_index=spr_twoheads_jump hspeed=8 vspeed=-2 haspal=0 image_blend=c_black
	
	}

///16777207
specialSet8=20
