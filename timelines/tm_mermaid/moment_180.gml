/// @description Submarine Area

if __view_get( e__VW.XView, 0 )>=4900-2
{
en4=instance_create(4676,160,oAreaSpawner) with en4
{
spawnX=0
MaxSpawnFrame=0 visible=1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
turn0=1 enemyMax=2 
enemytype0=oSiren name0="MARINA" pal0=1
enemytype1=oSiren name1="MARINA" pal1=1
enemytype2=oLobster name2="PINCHER" pal2=1
}


en1=instance_create(__view_get( e__VW.XView, 0)+320+64,206,oMerman)
with en1 {weapon_add("TRIDENT") 	
	enemy_switch("ERIK",0)
		image_xscale=-1 canAttack=5 alarm[1]=60 weapon_add("SPEAR")
	}

en2=instance_create(__view_get( e__VW.XView, 0)-64,200+32,oMerman)
with en2 {image_xscale=1 weapon_add("TRIDENT") 	
	enemy_switch("ERIK",0)
		canAttack=5 alarm[1]=60 weapon_add("SPEAR")
	}

}
else
timeline_position-=1
