function character_physics() {
	if act=1
	{

		
	totalSpeed=abs(walkSpeed)*1+abs(dashing)*1+abs(sentflying)
if dodgetime!=0 dodgetime-=1 else {dodge=0 dodging=0 dodgetime=0}

///Water Interaction
if place_meeting(x,y,oWaterFX)
{
wfx=instance_place(x,y,oWaterFX)
waterMax=wfx.z+wfx.zAdd

if !ground if waterSplash=0 and zSpeed>2 and z>waterMax
{
watsplash=instance_create_depth(x,y,depth,oFlashFX) watsplash.isDepth=0 watsplash.depth=depth-1
watsplash.z=waterMax watsplash.image_speed=0.5 watsplash.sprite_index=spr_watersplash
watsplash.alarm[0]=0
waterSplash=10; 
}if ground waterSplash=0;
}else waterMax=0

if waterSplash!=0 waterSplash-=1 else waterSplash=0;

	if shaketime!=0 
	{shaketime-=1 if shake!=-2 shake-=1 else shake=2
	if (anim!=4 and anim!=9 and anim!=41 and anim!=61 and anim!=31 and anim!=37 and anim!=38 and anim!=201 and grabbed=0)
	  shake=0} else 
	{shaketime=0 shake=0
	}
	
	if superarmor=1
	{
	if superarmortime>120 superarmorhp=2
	superarmortime+=1
	if superarmorFX>0.1 superarmorFX-=0.1 else superarmorFX=0
	}else superarmorhp=0
	
	//if weapontype!=-1 if atk=0 MoveType=weaponHitType

	if canmove=1
	{
	HitForce=0
	HitForceZ=0
	HitForceReact=0
	HitForceReactZ=0
	}


{
	if hp<=0 or hp=0 and hplayer=0
	{
	if DeathCryOnce=0
	{
	DeathCryOnce=1
	PlaySoundNoStack(DeathCry)
	if isEnemy=1
	enemydeathcount()
	}

	if isBoss=1 ////Check if enemy is boss for the slow effect
	{if isBossCheck=0
	{
	if instance_exists(oEnemy1) with oEnemy1 if dead=0 {hp=0 DeathCryOnce=1 HitType=1 event_user(0)
	}
	isBossCheck=1 if !ground spdZ=-8 room_speed=10 
	oControl.alarm[9]=30
	}
	}
	}
}




	if isEnemy=1
	{
	if atk=0 hitCheck=0
	if hurt=0 {hitSource=-1 ThrowDamage=0 charThrown=0}
	if hurt=1 and canAttack=6 {canAttack=0 isIdle=0}
	}
	//key_jump = keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord("K"));

	if damageFallTime<0 {damageFall=4 damageFallTime=60}
	else damageFallTime-=1
	if isDepth=1
	depth=-y
	z+=zSpeed
	if !ground 
	{
	if zSpeed<4 zSpeed+=0.4
	if z>0 {
	
		
	
		
		if fallHole=0
		{
		ground=1 zSpeed=0 z=0 if anim=2 or anim=3 {animFrame=0 canmove=0 anim=22}}
		}
	}
	else
	{

	
	if hurt=1 { dashing=0 doubledash=0}
	sentflying=0
	}
	doubledash-=0.05
	if doubledash<0 {dashing=0 doubledash=0}
	selfatk.atk=atk
	if hurt=1 atk=0
	}



}
