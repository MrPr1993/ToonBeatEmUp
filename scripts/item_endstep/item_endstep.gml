function item_endstep() {
	
	x+=spdX
	if carry=1 or isBroken=1
	{
	if isBroken=0
	{
	x=hitSource.x
	y=hitSource.y
	z=hitSource.z+carryZ depth=hitSource.depth-1
	}
	alarm[0]=60 FX=0
		
	}

	if isBroken=1
	if brokenCheck=0
	{brokenCheck=1 visible=0
	alarm[2]=2
	}

	if wallCheck=1
	{
	if attack=1
	{
	if isweapon=1
	{
	if spinBack=1 spdX=0
	else
	spdX=2*-image_xscale
	canGrav=1 gravLandHalt=1 spdZ=-8 attack=0 spinBack=1
	weaponLife-=1-1*global.CheatUnlock[10]
	}
	else
	{if itemHP!=1 itemHP-=1 else
	instance_destroy()}
	event_user(0)
	} else if isweapon=1 spdX=0}


	///Z Block Collision

	if place_meeting(x,y,oHeight32)
	{
	hz=instance_place(x,y,oHeight32)
	if z>hz.z-hz.height+16
	{
	if place_meeting(x+hspeed,y,hz)
	{
	x=xprevious wallCheck=1

	} else wallCheck=0

	with hz
	if place_meeting(x,y,other) with other
	y=ceil(yprevious)
	}
	else
	{if spdZ>=0
	{if z>=hz.z-hz.height+16-spdZ {z=(hz.z-hz.height+16) 
		
	if !place_meeting(x,y,oFallHole)
		{			
		ground=1 spdZ=0
		}
		
		}
	else if canGrav=1 ground=0
	}else if canGrav=1 ground=0
	}
	} else if z!=0 if canGrav=1 ground=0

if place_meeting(x,y,oWaterFX)
{
wfx=instance_place(x,y,oWaterFX)
waterMax=wfx.z+wfx.zAdd

if !ground if waterSplash=0 and spdZ>2 and z>waterMax
{
watsplash=instance_create_depth(x,y,depth,oFlashFX) watsplash.isDepth=0 watsplash.depth=depth-1
watsplash.z=waterMax watsplash.image_speed=0.5 watsplash.sprite_index=spr_watersplash
watsplash.alarm[0]=0
waterSplash=10; 
}if ground waterSplash=0;
}else waterMax=0

if carryID!=-1 and carry=1 waterMax=carryID.waterMax

}
