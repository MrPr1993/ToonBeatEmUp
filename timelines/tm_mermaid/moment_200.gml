/// @description Submarine Area

if __view_get( e__VW.XView, 0 )>=5340-2
{
en1=instance_create(__view_get( e__VW.XView, 0)+320-64,200,oMerman)
with en1 {image_xscale=-1 weapon_add("TRIDENT") 	
	enemy_modify(spr_zombiepal,1,"ERIC",0,0.5,0.5)
		canAttack=5 alarm[1]=60 weapon_add("SPEAR")
	}

en2=instance_create(__view_get( e__VW.XView, 0)-64,200,oMerman)
with en2 {image_xscale=1 weapon_add("TRIDENT") 	
	enemy_modify(spr_zombiepal,1,"ERIC",0,0.5,0.5)
		canAttack=5 alarm[1]=60 weapon_add("SPEAR")
	}
	
en3=instance_create(__view_get( e__VW.XView, 0)+320-64,250,oMerman)
with en3 {image_xscale=-1 weapon_add("TRIDENT") 	
	enemy_modify(spr_zombiepal,1,"ERIC",0,0.5,0.5)
		canAttack=5 alarm[1]=60 weapon_add("SPEAR")
	}

en4=instance_create(__view_get( e__VW.XView, 0)-64,250,oMerman)
with en4 {image_xscale=1 weapon_add("TRIDENT") 	
	enemy_modify(spr_zombiepal,1,"ERIC",0,0.5,0.5)
		canAttack=5 alarm[1]=60 weapon_add("SPEAR")
	}

}
else
timeline_position-=1
