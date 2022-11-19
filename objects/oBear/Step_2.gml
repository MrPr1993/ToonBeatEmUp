enemy_endstep()
throw_step()

overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1
overwriteAttack3=1

	///Attacks
	if anim=10 ///Attack Stand
	{
	anim=choose(11,12)
	}
	
	if anim=11
	{
	 hit=0  sprite_index=AtkSpr
MoveType=0 damage=0.1
	image_index=animFrame image_speed=0
	 if animFrame=clamp(animFrame,2,2.2) atk=1 else atk=0
	if animFrame=clamp(animFrame,0,1.5)
	animFrame+=0.2 else animFrame+=0.1 if animFrame>3.5 {hurt=0 atk=0 canmove=1 hit=0
	}
	}
	
	if anim=12
	{

{if animFrame=0 sprite_index=spr_bear_attack2 atkcol_set(8,0,10,1.45,1,29) MoveType=1
frame_set(0,0,0.05)
if animFrame=0.5 sprite_index=spr_bear_attack
if animFrame=1 {image_index=1 sentflying=3*image_xscale ground=0 zSpeed=-6}
frame_set(1,1,0.1)
if animFrame>1.5 if ground {animFrame+=0.1 sprite_index=spr_bear_attack image_index=0 sentflying=0 atk=0} else {sprite_index=spr_bear_attack2 sentflying=3*image_xscale atk=1}

if animFrame>3 and ground {canmove=1}
}

	}