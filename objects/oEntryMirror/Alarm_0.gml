
		spawn=instance_create_depth(x,y+spawnYAdd,-1,spawnEnemy) if name!=-1 spawn.name=name
		spawn.z=z spawn.my_pal_sprite=my_pal_sprite spawn.current_pal=current_pal
		if enemyID!=-1 spawn.enemyID=enemyID
		if character!=-1 spawn.charchoose=character with spawn {mirrordiva_check()}
		
		if hp!=-1
		{spawn.hp=hp; spawn.maxhp=maxhp;}
		
		spawned=3
		y=9999999999999
