function item_collision() {
	{
	if other.attack=1
	{
	if hit=0
	if other.z>z-height and other.z<z+2
	{
	if isSource=1
	{
	if x>other.x sourceCheckX=-1 else sourceCheckX=1 }
	event_user(0)

	with other
	{
	if isweapon=1
	{
	if spinBack=1 spdX=0
	else
	spdX=2*-image_xscale
	canGrav=1 gravLandHalt=1 spdZ=-8 attack=0 spinBack=1
	weaponLife-=1-1*global.Cheat[10]
	}
	else
	{if itemHP!=1 itemHP-=1 else
	instance_destroy()}
	event_user(0)
	}
	}
	} else with other if isweapon=1 spdX=0


	}



}
