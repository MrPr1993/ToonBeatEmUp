
		spawn=instance_create_depth(x,y+spawnYAdd,-1,spawnEnemy) if name!=-1 spawn.name=name
		spawn.z=z spawn.my_pal_sprite=my_pal_sprite spawn.current_pal=current_pal
		if hp!=-1
		{spawn.hp=hp; spawn.maxhp=maxhp;}
		
		spawned=3
