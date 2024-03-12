/// @description Insert description here
// You can write your code in this editor
if weaponspr!=-1
{
rangeAtk=160
walkSpeed=0.5
walkSpeedY=0.5
}
else
{
rangeAtk=100
walkSpeed=0.5
walkSpeedY=0.5
}


enemy_endstep()
throw_step()

overwriteHitAir=1

if DeathCryOnce=0 hasBounce=0 else hasBounce=1

	if anim=5 ///Hit Air - has own unique take to break fall if alive
	{
	atk=0 sprite_index=ThrownSpr
	hurt=1 recovery=120

	recovery=30

	if hitBack=0
	{image_index=animFrame }
	else
	{if hashitBack=1
	image_index=animFrame+13 else image_index=animFrame}


	image_speed=0 animFrame=clamp(animFrame,3,5)
	animFrame+=0.1
	//Land on ground
	if ground 
	{
	if (DeathCryOnce=0 and (prevanim!=8 or prevanim!=9))
	{ground=0 zSpeed=-6 animFrame=0 anim=60 key_jump_hold=0 exit;}///Break out of fall

	
		hp-=thrownDMG //The character will take damage if it's a throw attack

	hground=instance_create_depth(x,y,0,oFlashFX)
	hground.sprite_index=spr_hitground hground.depth=99996
	hground.isDepth=0 hground.z=z

	{if HitGround!=-1 PlaySoundNoStack(HitGround)
	if isHeavy=1 oControl.quakeFXTime=10


	if ThrowDamage!=0 
	if isEnemy=1
	{event_user(10) hp-=ThrowDamage hpscan() hud_show() ThrowDamage=0} //If land take damage
	else hp-=ThrowDamage
 
	 recovery=10 
 
	 animFrame=6.8 anim=6
 
	///if hitBackFaceDown=1 and hashitBackFaceDown=1
	///{sentflying=-sentflying hitBack=1 hasBounce=1}

	 if hasGroundRoll=1 and groundRoll=1
	 {groundRoll=0 HitType=2 event_user(0)}

 
	 }}
	}
	
	///Instantly Tech From Fall
	if anim=60
	{thrownAtk=0 Throw=0
	if animFrame=0 sprite_index=ThrownSpr
	frame_set(0,11,0.25)
	frame_set(1,12,0.25)
	frame_set(2,13,0.25)
	frame_set(3,14,0.25)
	frame_set(4,11,0.25)
	frame_set(5,12,0.25)
	frame_set(6,13,0.25)
	frame_set(7,14,0.5) if animFrame=8 sprite_index=spr_merman_move
	frame_set(8,0,0) sentflying=lerp(sentflying,0,0.1)

	
	if ground {animFrame=10 image_index=10 anim=6}
	}

if anim=0 
{armspr=spr_merman_arms armsX=0
if image_index<1
{
weaponanim(weaponspr,weaponIndex,-3,-37,42,weaponcolor) armsY=0}
else if image_index<2
{weaponanim(weaponspr,weaponIndex,-3,-36,42,weaponcolor) armsY=1}
else
{weaponanim(weaponspr,weaponIndex,-3,-36,42,weaponcolor) armsY=1}
}
if anim=1
{armsX=3 armspr=spr_merman_arms
if image_index=clamp(image_index,0,0.9)
{weaponanim(weaponspr,weaponIndex,1,-35,42,weaponcolor) armsY=1}
if image_index=clamp(image_index,1,1.9)
{weaponanim(weaponspr,weaponIndex,1,-36,42,weaponcolor) armsY=0}
if image_index=clamp(image_index,2,2.9)
{weaponanim(weaponspr,weaponIndex,1,-37,42,weaponcolor) armsY=-1}
if image_index=clamp(image_index,3,3.9)
{weaponanim(weaponspr,weaponIndex,1,-35,42,weaponcolor) armsY=1}
if image_index=clamp(image_index,4,4.9)
{weaponanim(weaponspr,weaponIndex,1,-36,42,weaponcolor) armsY=0}
if image_index=clamp(image_index,5,5.9)
{weaponanim(weaponspr,weaponIndex,1,-37,42,weaponcolor) armsY=-1}
}

if anim=11
{
armsX=0 armsY=0 armspr=spr_merman_attackhands
if image_index=clamp(image_index,0,0.9)
{weaponanim(weaponspr,weaponIndex,-15,-38,0,weaponcolor)}
if image_index=clamp(image_index,1,1.9)
{weaponanim(weaponspr,weaponIndex,-17,-38,0,weaponcolor)}
if image_index=clamp(image_index,2,2.9)
{weaponanim(weaponspr,weaponIndex,14,-38,0,weaponcolor)}
if image_index=clamp(image_index,3,3.9)
{weaponanim(weaponspr,weaponIndex,11,-38,0,weaponcolor)}	
}

if anim=12
{
armspr=spr_merman_arms2
if image_index=clamp(image_index,0,0.9)
{weaponanim(weaponspr,weaponIndex,-3,-37+1,42+1,weaponcolor) armsX=1 armsY=1}
if image_index=clamp(image_index,1,1.9)
{weaponanim(weaponspr,weaponIndex,-3,-37-1,42,weaponcolor) armsX=-1 armsY=0}
if image_index=clamp(image_index,2,2.9)
{weaponanim(weaponspr,weaponIndex,-3,-37+1,42,weaponcolor) armsX=1 armsY=0}
if image_index=clamp(image_index,3,3.9)
{weaponanim(weaponspr,weaponIndex,-3,-37,42,weaponcolor) armsX=0 armsY=0}
}

///Hits
if sprite_index=ThrownSpr
{armsX=99999999999999999999
if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,40,-27,48,weaponcolor)
if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,16,-55,143,weaponcolor)
if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,19,-52,92,weaponcolor)
if image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,weaponIndex,24,-73,92,weaponcolor)
if image_index=clamp(image_index,4,4.9)
weaponanim(weaponspr,weaponIndex,-3,-50,164,weaponcolor)
if image_index=clamp(image_index,5,5.9)
weaponanim(weaponspr,weaponIndex,-22,-49,244,weaponcolor)
if image_index=clamp(image_index,6,6.9)
weaponanim(weaponspr,weaponIndex,27,-18,77,weaponcolor)
if image_index=clamp(image_index,7,7.9)
weaponanim(weaponspr,weaponIndex,-1,-18,77,weaponcolor)
if image_index=clamp(image_index,8,8.9)
weaponanim(weaponspr,weaponIndex,17,0,172,weaponcolor)
if image_index=clamp(image_index,9,9.9)
weaponanim(weaponspr,weaponIndex,17,-7,172,weaponcolor)
if image_index=clamp(image_index,10,10.9)
weaponanim(weaponspr,weaponIndex,17,-49,88,weaponcolor)
if image_index=clamp(image_index,11,11.9)
weaponanim(weaponspr,weaponIndex,2,-10,88,weaponcolor)
if image_index=clamp(image_index,12,12.9)
weaponanim(weaponspr,weaponIndex,2,-10,113,weaponcolor)
if image_index=clamp(image_index,13,13.9)
weaponanim(weaponspr,weaponIndex,2,-10,88,weaponcolor)
if image_index=clamp(image_index,14,14.9)
weaponanim(weaponspr,weaponIndex,2,-10,113,weaponcolor)
if image_index=clamp(image_index,15,15.9)
weaponanim(weaponspr,weaponIndex,4,-40,113,weaponcolor)
if image_index=clamp(image_index,16,16.9)
weaponanim(weaponspr,weaponIndex,1,-40,96,weaponcolor)
if image_index=clamp(image_index,17,17.9)
weaponanim(weaponspr,weaponIndex,13,-29,72,weaponcolor)
if image_index=clamp(image_index,18,18.9)
weaponanim(weaponspr,weaponIndex,6,-11,11,weaponcolor)
if image_index=clamp(image_index,19,19.9)
weaponanim(weaponspr,weaponIndex,6,-5,11,weaponcolor)
if image_index=clamp(image_index,20,20.9)
weaponanim(weaponspr,weaponIndex,6,-16,19,weaponcolor)
if image_index=clamp(image_index,21,21.9)
weaponanim(weaponspr,weaponIndex,3,-3,19,weaponcolor)
if image_index=clamp(image_index,22,22.9)
weaponanim(weaponspr,weaponIndex,3,-5,19,weaponcolor)
if image_index=clamp(image_index,23,23.9)
weaponanim(weaponspr,weaponIndex,3,-28,52,weaponcolor)
if image_index=clamp(image_index,24,24.9)
weaponanim(weaponspr,weaponIndex,0,-33,45,weaponcolor)
}

if anim=31 or anim=30 armsX=99999999999999999999

if sprite_index=spr_swing_frozen
{armsX=99999999999999999999
weaponanim(weaponspr,weaponIndex,40,-27,48,weaponcolor)
}
