/// @description Insert description here
// You can write your code in this editor
enemy_endstep()
throw_step()

overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1

if weaponspr=-1 if anim=0 or anim=1
if instance_exists(oOniClub)
{with instance_nearest(x,y,oOniClub) {
	flashFX(x,y,z,spr_ghost_poof,0,0.5,0,1,1,c_white,1)
	instance_destroy()}
weapon_add("ONI CLUB")
flashFX(x+weaponX*image_xscale,y,z+weaponY,spr_ghost_poof,0,0.5,0,1,1,c_white,1)
}

if anim=0
{
weaponanim(weaponspr,weaponIndex,34,-95,180*image_xscale,weaponcolor)
}

if anim=1
{
if image_index=clamp(image_index,0,1) or image_index=clamp(image_index,3,4)
weaponanim(weaponspr,weaponIndex,34,-92,180*image_xscale,weaponcolor)
if image_index=clamp(image_index,1,2) or image_index=clamp(image_index,4,5)
weaponanim(weaponspr,weaponIndex,34,-92-1,180*image_xscale,weaponcolor)
if image_index=clamp(image_index,2,3) or image_index=clamp(image_index,5,6)
weaponanim(weaponspr,weaponIndex,34,-92-2,180*image_xscale,weaponcolor)
}

	///Attacks
	if anim=10 ///Attack Stand
	{animFrame=0 canmove=0 specialcheck0=0
	
		
if distance_to_point(targetEnemy.x,targetEnemy.y)>100
{
if distance_to_point(targetEnemy.x,targetEnemy.y)>150
	anim=12 else anim=13
}
	else
	anim=11
	}

///Swing Attack
if anim=11
{
if animFrame=0 {PlaySound(choose(snd_oni3,snd_oni4))}
///With weapon
if weaponspr!=-1
{
damage=0.2 MoveType=1
atkcol_set(66,0,38,4.25,1,34)
sprite_index=spr_oni_attack
frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,2,0.5) if animFrame=clamp(animFrame,3,4) atk=1 else atk=0
frame_set(3,3,0.5)
frame_set(4,4,0.025)
frame_set(5,0,0.1)
if animFrame>5.8 {atk=0 canmove=1 anim=0}

if image_index=clamp(image_index,0,1)
weaponanim(weaponspr,weaponIndex,24,-116,189,weaponcolor)
if image_index=clamp(image_index,1,2)
weaponanim(weaponspr,weaponIndex,5,-125,234,weaponcolor)
if image_index=clamp(image_index,2,3)
weaponanim(weaponspr,weaponIndex,25,-107,90,weaponcolor)
if image_index=clamp(image_index,3,4)
weaponanim(weaponspr,weaponIndex,50,-52,0*image_xscale,weaponcolor)	
if image_index=clamp(image_index,4,5)
weaponanim(weaponspr,weaponIndex,50,-55,0*image_xscale,weaponcolor)
}
else
{sprite_index=spr_oni_attack
frame_set(0,2,0.1) atkcol_set(33,0,38,2.05,1,30)
frame_set(1,2,0.1) damage=0.1 MoveType=1
frame_set(2,2,0.5) if animFrame=clamp(animFrame,3,4) {sentflying=24*image_xscale atk=1} else {sentflying=0 atk=0}
frame_set(3,3,0.5)
frame_set(4,4,0.025)
frame_set(5,0,0.1)
if animFrame>5.8 {atk=0 canmove=1 anim=0}
}
}

///Fan Attack
if anim=12
{
if animFrame=0 {PlaySound(choose(snd_oni3,snd_oni13))}	
sprite_index=spr_oni_range
frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,2,0.05)
 if animFrame=3
{PlaySoundNoStack(snd_swing2) card=instance_create_depth(x+16*image_xscale,y+1,depth,oNinjaBunCard) card.hspeed=4*image_xscale
	card.z=z-56 card.sprite_index=spr_oni_fan card.image_xscale=image_xscale
	}
frame_set(3,3,0.5)
frame_set(4,4,0.025)
frame_set(5,0,0.1)
if animFrame>5.8 {atk=0 canmove=1 anim=0}

if image_index=clamp(image_index,0,1)
weaponanim(weaponspr,weaponIndex,36,-95,180,weaponcolor)
if image_index=clamp(image_index,1,2)
weaponanim(weaponspr,weaponIndex,36,-93,180,weaponcolor)
if image_index=clamp(image_index,2,3)
weaponanim(weaponspr,weaponIndex,37,-93,180,weaponcolor)
if image_index=clamp(image_index,3,4)
weaponanim(weaponspr,weaponIndex,32,-94,180,weaponcolor)
if image_index=clamp(image_index,4,5)
weaponanim(weaponspr,weaponIndex,33,-94,180,weaponcolor)
}

///Roll Attack
if anim=13
{
if animFrame=0 {PlaySound(choose(snd_oni5,snd_oni8))}	
sprite_index=spr_oni_hit
if animFrame=0 special0=0
damage=0.2 selfatk.MoveType=1
frame_set(0,10,0.05) if animFrame=1 if ground {ground=0 zSpeed=-8}
frame_set(1,14,0.25) if animFrame=clamp(animFrame,1,5) {atk=1 sentflying=6*image_xscale} else {atk=0 sentflying=0}
frame_set(2,13,0.25) 
frame_set(3,12,0.25) 
frame_set(4,11,0.25) if animFrame=5 if !ground animFrame=1
if ground and animFrame=clamp(animFrame,1,4) animFrame=5
frame_set(5,10,0.25)
frame_set(6,10,0.25)
frame_set(7,10,0.25)

if animFrame>7.75 {canmove=1}
}


if sprite_index=spr_oni_hit
{
if image_index=clamp(image_index,0,1)
weaponanim(weaponspr,weaponIndex,32,-77,181,weaponcolor)
if image_index=clamp(image_index,1,2)
weaponanim(weaponspr,weaponIndex,32,-96,181,weaponcolor)
if image_index=clamp(image_index,2,3)
weaponanim(weaponspr,weaponIndex,26,-94,181,weaponcolor)
if image_index=clamp(image_index,3,4)
weaponanim(weaponspr,weaponIndex,28,-73,90,weaponcolor)
if image_index=clamp(image_index,4,5)
weaponanim(weaponspr,weaponIndex,18,-77,144,weaponcolor)
if image_index=clamp(image_index,5,6)
weaponanim(weaponspr,weaponIndex,-6,-73,180,weaponcolor)
if image_index=clamp(image_index,6,7)
weaponanim(weaponspr,weaponIndex,36,-16,104,weaponcolor)
if image_index=clamp(image_index,7,8)
weaponanim(weaponspr,weaponIndex,11,-15,163,weaponcolor)
if image_index=clamp(image_index,8,9)
weaponanim(weaponspr,weaponIndex,13,-12,181,weaponcolor)
if image_index=clamp(image_index,9,10)
weaponanim(weaponspr,weaponIndex,-2,-13,91,weaponcolor)
if image_index=clamp(image_index,10,11)
weaponanim(weaponspr,weaponIndex,43,-74,160,weaponcolor)
if image_index=clamp(image_index,11,12)
weaponanim(weaponspr,weaponIndex,0,0,89,weaponcolor)
if image_index=clamp(image_index,12,13)
weaponanim(weaponspr,weaponIndex,26,-34,181,weaponcolor)
if image_index=clamp(image_index,13,14)
weaponanim(weaponspr,weaponIndex,-9,-68,270,weaponcolor)
if image_index=clamp(image_index,14,15)
weaponanim(weaponspr,weaponIndex,-38,-25,361,weaponcolor)
if image_index=clamp(image_index,15,16)
weaponanim(weaponspr,weaponIndex,11,-81,181,weaponcolor)
if image_index=clamp(image_index,16,17)
weaponanim(weaponspr,weaponIndex,9,-48,119,weaponcolor)
if image_index=clamp(image_index,17,18)
weaponanim(weaponspr,weaponIndex,17,-47,92,weaponcolor)
if image_index=clamp(image_index,18,19)
weaponanim(weaponspr,weaponIndex,17,-12,79,weaponcolor)
if image_index=clamp(image_index,19,20)
weaponanim(weaponspr,weaponIndex,17,-1,47,weaponcolor)
if image_index=clamp(image_index,20,21)
weaponanim(weaponspr,weaponIndex,17,-8,8,weaponcolor)
if image_index=clamp(image_index,21,22)
weaponanim(weaponspr,weaponIndex,19,-1,8,weaponcolor)
if image_index=clamp(image_index,22,23)
weaponanim(weaponspr,weaponIndex,8,3,19,weaponcolor)
if image_index=clamp(image_index,23,24)
weaponanim(weaponspr,weaponIndex,45,-76,166,weaponcolor)
if image_index=clamp(image_index,24,25)
weaponanim(weaponspr,weaponIndex,34,-93,176,weaponcolor)
}