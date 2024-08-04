enemy_endstep()
throw_step()

overwriteHitAir=1
overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1
overwriteAttack3=1
overwriteAttack4=1
overwriteAttack5=1


if DeathCryOnce=0 hasBounce=0 else hasBounce=1

if weaponspr=-1 rangeAtk=100 else rangeAtk=150

	///Attacks
	if anim=10 ///Attack Stand
	{
	if weaponspr=-1
	{
	if distance_to_point(targetEnemy.x,targetEnemy.y)>40 anim=12 else anim=11
	}
	else
	{
	if distance_to_point(targetEnemy.x,targetEnemy.y)>60 anim=12 else anim=11
	
	if anim=12
	if current_pal=1 or current_pal=2 anim=130
	}
	}
	
	//2 = Special sword thrower
	
	
if anim=11
{sprite_index=spr_dancer_sword1 atkcol_set(46,0,0,2.75,1,64) damage=0.15 selfatk.isCut=1 selfatk.spriteFX=spr_blood selfatk.HitSound=snd_cut
frame_set(0,0,0.25) MoveType=1
frame_set(1,1,0.1)
if weaponspr=-1
{atkcol_set(24,0,6,1.05,1,58) selfatk.isCut=0 selfatk.spriteFX=spr_hitflash selfatk.HitSound=snd_hit
frame_set(2,0,0.25) if AnimFrame=clamp(AnimFrame,3,4.9) sprite_index=spr_dancer_attack MoveType=0
frame_set(3,0,0.1) if AnimFrame=clamp(AnimFrame,3,3.9) atk=1 else atk=0
frame_set(4,1,0.5) 
frame_set(5,0,0.1)
if AnimFrame>5.5 canmove=1
}
else
{
frame_set(2,2,0.25)
frame_set(3,3,0.25)
frame_set(4,4,0.5) if AnimFrame=clamp(AnimFrame,4,4.9) atk=1 else atk=0
frame_set(5,4,0.05)
frame_set(6,0,0.25)
if AnimFrame>6.5 canmove=1
}
if image_index=clamp(image_index,0,0.9) weaponanim(weaponspr,weaponIndex,-20,-84,30,weaponcolor)
if image_index=clamp(image_index,1,1.9) weaponanim(weaponspr,weaponIndex,-21,-82,90,weaponcolor)
if image_index=clamp(image_index,2,2.9) weaponanim(weaponspr,weaponIndex,-5,-84,209,weaponcolor)
if image_index=clamp(image_index,3,3.9) weaponanim(weaponspr,weaponIndex,29,-59,74,weaponcolor)
if image_index=clamp(image_index,4,4.9) weaponanim(weaponspr,weaponIndex,30,-42,-22,weaponcolor)

}

if anim=12
{sprite_index=spr_dancer_sword2  isCut=1 damage=0.15 selfatk.isCut=1 selfatk.spriteFX=spr_blood selfatk.HitSound=snd_cut
	
	
frame_set(0,0,0.25) atkcol_set(58,0,29,2.55,1,35) MoveType=1
frame_set(1,1,0.1) 
if weaponspr=-1 {selfatk.isCut=0 selfatk.spriteFX=spr_hitflash atkcol_set(46,0,26,1.75,1,29) selfatk.HitSound=snd_hit damage=0.1 isCut=0 if AnimFrame=clamp(AnimFrame,2,5) sprite_index=spr_dancer_kick
frame_set(2,0,0.25)
if AnimFrame=clamp(AnimFrame,3,4) { atk=1 sentflying=8*image_xscale} else {atk=0 sentflying=lerp(sentflying,0,0.1)}
frame_set(3,1,0.5)
frame_set(4,2,0.05)	
	}
else
{
frame_set(2,2,0.25)
if AnimFrame=clamp(AnimFrame,3,4) {atk=1 sentflying=8*image_xscale} else {atk=0 sentflying=lerp(sentflying,0,0.1)}
frame_set(3,3,0.5)
frame_set(4,3,0.05)
}
frame_set(5,1,0.1)

if AnimFrame>5.5 canmove=1

if image_index=clamp(image_index,0,0.9) weaponanim(weaponspr,weaponIndex,-18,-86,0,weaponcolor)
if image_index=clamp(image_index,1,1.9) weaponanim(weaponspr,weaponIndex,-20,-82,-2,weaponcolor)
if image_index=clamp(image_index,2,2.9) weaponanim(weaponspr,weaponIndex,20,-42,-1,weaponcolor)
if image_index=clamp(image_index,3,3.9) weaponanim(weaponspr,weaponIndex,41,-46,-1,weaponcolor)

}

///Spin Attack
if anim=130
{
//if AnimFrame=0 {PlaySound(choose(snd_oni5,snd_oni8))}	
atkcol_set(0,0,0,1.5,1,34)
if AnimFrame=0 {special0=0 sprite_index=spr_dancer_sword2}
damage=0.2 selfatk.MoveType=1 selfatk.isCut=1
if AnimFrame<0.5 frame_set(0,0,0.05) else frame_set(0,1,0.05)
if AnimFrame=1 if ground {sprite_index=spr_dancer_hit z+=-32 ground=0 zSpeed=-4}
frame_set(1,14,0.25) if AnimFrame=clamp(AnimFrame,1,5) {atk=1 sentflying=6*image_xscale} else {atk=0 sentflying=0}
frame_set(2,13,0.25) 
frame_set(3,12,0.25) 
frame_set(4,11,0.25) if AnimFrame=5 if !ground AnimFrame=1
if ground and AnimFrame=clamp(AnimFrame,1,4) {AnimFrame=5 sprite_index=spr_dancer_attack}
frame_set(5,1,0.25)
frame_set(6,1,0.25)

if AnimFrame>6.75 {canmove=1}
}


	if anim=5 ///Hit Air
	{
	//////If dead get cut
//	if cutDMG=1 and hasCut=0
	if hp<=0 and hasCut=1 and cutDMG!=0
	{AnimFrame=0 anim=1337 exit;}
	atk=0 sprite_index=ThrownSpr
	hurt=1 recovery=120

	recovery=30

	if hitBack=0
	{image_index=AnimFrame }
	else
	{if hashitBack=1
	image_index=AnimFrame+13 else image_index=AnimFrame}


	image_speed=0 AnimFrame=clamp(AnimFrame,3,5)
	AnimFrame+=0.1
	//Land on ground
	if ground 
	{
	if (DeathCryOnce=0 and (prevanim!=8 or prevanim!=9))
	{ground=0 zSpeed=-6 AnimFrame=0 anim=60 key_jump_hold=0 exit;}///Break out of fall

	
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
 
	 AnimFrame=6.8 anim=6
 
	///if hitBackFaceDown=1 and hashitBackFaceDown=1
	///{sentflying=-sentflying hitBack=1 hasBounce=1}

	 if hasGroundRoll=1 and groundRoll=1
	 {groundRoll=0 HitType=2 event_user(0)}

 
	 }}
	}
	
	///Instantly Tech From Fall
	if anim=60
	{thrownAtk=0 Throw=0
	if AnimFrame=0 sprite_index=ThrownSpr
	frame_set(0,11,0.25)
	frame_set(1,12,0.25)
	frame_set(2,13,0.25)
	frame_set(3,14,0.25)
	frame_set(4,11,0.25)
	frame_set(5,12,0.25)
	frame_set(6,13,0.25)
	frame_set(7,14,0.5) if AnimFrame=8 sprite_index=spr_dancer_move
	frame_set(8,0,0) sentflying=lerp(sentflying,0,0.1)

	
	if ground {AnimFrame=10 image_index=10 anim=6}
	}
	
	///Alt Jump
	if anim=13
	{thrownAtk=0 Throw=0
	if AnimFrame=0 sprite_index=ThrownSpr
	frame_set(0,11,0.25)
	frame_set(1,12,0.25)
	frame_set(2,13,0.25)
	frame_set(3,14,0.25)
	frame_set(4,11,0.25)
	frame_set(5,12,0.25)
	frame_set(6,13,0.25)
	frame_set(7,14,0.5) if AnimFrame=8 sprite_index=spr_dancer_move
	frame_set(8,0,0) sentflying=lerp(sentflying,0,0.1)
	
	if ground {AnimFrame=10 image_index=10 anim=0 canmove=1}
	}
	


if sprite_index=StandSpr
{
weaponBack=1
if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,-16,-91,0,weaponcolor)
if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,-15,-90,0,weaponcolor)
if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,-15,-88,0,weaponcolor)
}

if sprite_index=MoveSpr or sprite_index=RunSpr
{weaponBack=1
if image_index=clamp(image_index,0,0.9) or image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,weaponIndex,-16,-89-2,0,weaponcolor)
if image_index=clamp(image_index,1,1.9) or image_index=clamp(image_index,4,4.9)
weaponanim(weaponspr,weaponIndex,-16,-89,0,weaponcolor)
if image_index=clamp(image_index,2,2.9) or image_index=clamp(image_index,5,5.9)
weaponanim(weaponspr,weaponIndex,-16,-89-1,0,weaponcolor)
}


if sprite_index=ThrownSpr
{weaponBack=0
if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,-2,-83,0,weaponcolor)
if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,-29,-83,24,weaponcolor)
if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,-24,-92,-7,weaponcolor)
if image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,weaponIndex,1,-46,49,weaponcolor)
if image_index=clamp(image_index,4,4.9)
weaponanim(weaponspr,weaponIndex,18,-40,148,weaponcolor)
if image_index=clamp(image_index,5,5.9)
weaponanim(weaponspr,weaponIndex,9,-55,125,weaponcolor)
if image_index=clamp(image_index,6,6.9)
weaponanim(weaponspr,weaponIndex,-25,-19,43,weaponcolor)
if image_index=clamp(image_index,7,7.9)
weaponanim(weaponspr,weaponIndex,22,-28,11,weaponcolor)
if image_index=clamp(image_index,8,8.9)
weaponanim(weaponspr,weaponIndex,19,0,3,weaponcolor)
if image_index=clamp(image_index,9,9.9)
weaponanim(weaponspr,weaponIndex,19,-3,43,weaponcolor)
if image_index=clamp(image_index,10,10.9)
weaponanim(weaponspr,weaponIndex,-19,-85,-1,weaponcolor)
if image_index=clamp(image_index,11,11.9)
weaponanim(weaponspr,weaponIndex,4,-19,135,weaponcolor)
if image_index=clamp(image_index,12,12.9)
weaponanim(weaponspr,weaponIndex,4,-19,135+90,weaponcolor)
if image_index=clamp(image_index,13,13.9)
weaponanim(weaponspr,weaponIndex,4,-19,135+180,weaponcolor)
if image_index=clamp(image_index,14,14.9)
weaponanim(weaponspr,weaponIndex,4,-19,135+270,weaponcolor)
if image_index=clamp(image_index,15,15.9)
weaponanim(weaponspr,weaponIndex,-27,-62,83,weaponcolor)
if image_index=clamp(image_index,16,16.9)
weaponanim(weaponspr,weaponIndex,8,-28,18,weaponcolor)
if image_index=clamp(image_index,17,17.9)
weaponanim(weaponspr,weaponIndex,3,-26,-10,weaponcolor)
if image_index=clamp(image_index,18,18.9)
weaponanim(weaponspr,weaponIndex,-12,-17,-32,weaponcolor)
if image_index=clamp(image_index,19,19.9)
weaponanim(weaponspr,weaponIndex,-12,-1,-3,weaponcolor)
if image_index=clamp(image_index,20,20.9)
weaponanim(weaponspr,weaponIndex,-12,-8,-3,weaponcolor)
if image_index=clamp(image_index,21,21.9)
weaponanim(weaponspr,weaponIndex,-12,-2,-3,weaponcolor)
if image_index=clamp(image_index,22,22.9)
weaponanim(weaponspr,weaponIndex,-17,-43,-50,weaponcolor)
if image_index=clamp(image_index,23,23.9)
weaponanim(weaponspr,weaponIndex,-19,-85,-1,weaponcolor)
if image_index=clamp(image_index,24,24.9)
{weaponBack=1
weaponanim(weaponspr,weaponIndex,-18,-91,-2,weaponcolor)
}
}


///AI for enemy doing blocks
if weaponspr!=-1
{
if canmove=1 and (anim=0 or anim=1)
if distance_to_object(targetEnemy)<48
and (targetEnemy.y=clamp(targetEnemy.y,y-8,y+8))
and (
(image_xscale=1 and x<targetEnemy.x and targetEnemy.image_xscale=-1)
or (image_xscale=-1 and x>targetEnemy.x and targetEnemy.image_xscale=1)
)
{
if targetEnemy.atk=1 if anim!=65
{AnimFrame=0 canmove=0 recovery=0
anim=65 
}
}
}

///Block
if anim=65
{canBlock=1 weaponanim(weaponspr,weaponIndex,7,-39,76,weaponcolor)
sprite_index=spr_dancer_block
AnimFrame+=0.1 
if AnimFrame>6 {canmove=1 anim=0 alarm[1]=2}
}

if anim=65 or anim=61
canBlock=1 else canBlock=0

///Block Hit
if anim=61
{canBlock=1 AnimFrame+=0.1 shaketime=30 weaponanim(weaponspr,weaponIndex,7,-39,76,weaponcolor)
if AnimFrame<0.5
{
if place_free(x+0.1*-image_xscale,y) x+=0.1*-image_xscale
}
sprite_index=spr_dancer_block
if AnimFrame>2 {anim=65}
}