oEnemySpawner.roomHSpd=0
oEnemySpawner.roomMove=0

oPlayer.key_right=0;
//oPlayer.canControl=1;
oPlayer.areaEntry=0

with oPlayer
{canmove=0 anim=99999 image_index=0
if character=0 sprite_index=spr_viva_quicksand
if character=1 sprite_index=spr_hina_quicksand
if character=2 sprite_index=spr_bahati_quicksand
if character=3 sprite_index=spr_sofia_quicksand
}

boss=instance_create_depth(oControl.camX+160,190,-1,oDragonMaiden)
with boss
{canmove=0 anim=100 lockPos=0
z=1500
	
	}
//with bos instance_destroy()