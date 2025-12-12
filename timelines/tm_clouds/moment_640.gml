oEnemySpawner.roomHSpd=0
oEnemySpawner.roomMove=0

oPlayer.key_right=0;
//oPlayer.canControl=1;
oPlayer.areaEntry=0

	with oPlayer
{anim=9999977999 image_speed=0 canmove=0
if character=0 sprite_index=spr_viva_lookaround
if character=1 sprite_index=spr_hina_lookaround
if character=2 sprite_index=spr_bahati_lookaround
if character=3 sprite_index=spr_sofia_lookaround
}

analyzer=instance_create_depth(0,0,-1,oCameoChar)
with analyzer
newscript=function()
{

frame_set(0,2,0.05)
frame_set(1,1,0.05)
frame_set(2,0,0.05)
frame_set(3,1,0.05) if AnimFrame=4 {AnimFrame=0 image_index=2}

oPlayer.image_index=image_index

if instance_exists(oDragonMaiden)
{
if oDragonMaiden.AnimFrame>=1
{
with oPlayer
{canmove=0 anim=99999 image_index=0
if character=0 sprite_index=spr_viva_quicksand
if character=1 sprite_index=spr_hina_quicksand
if character=2 sprite_index=spr_bahati_quicksand
if character=3 sprite_index=spr_sofia_quicksand
}
instance_destroy();
}
}
}


boss=instance_create_depth(oControl.camX+160,190,-1,oDragonMaiden)
with boss
{canmove=0 anim=100 lockPos=0
z=1500
	
	}
//with bos instance_destroy()