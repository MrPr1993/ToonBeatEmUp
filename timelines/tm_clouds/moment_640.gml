oEnemySpawner.roomHSpd=0
oEnemySpawner.roomMove=0

oPlayer.key_right=0;
//oPlayer.canControl=1;
oPlayer.areaEntry=0

boss=instance_create_depth(oControl.camX+160,190,-1,oDragonMaiden)
with boss
{canmove=0 anim=100 lockPos=0
z=1500
	
	}
//with bos instance_destroy()