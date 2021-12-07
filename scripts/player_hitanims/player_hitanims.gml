function player_hitanims() {
	if hurt=1
	{
	sprite_index=ThrownSpr
	if anim=4 ///Hit Stand
	{weaponBack=0


	if image_index=clamp(image_index,0,0.9)
	weaponanim(weaponspr,weaponIndex,-8,-44,11*image_xscale,weaponcolor)
	if image_index=clamp(image_index,1,1.9)
	weaponanim(weaponspr,weaponIndex,-16,-43,2*image_xscale,weaponcolor)
	if image_index=clamp(image_index,2,2.9)
	weaponanim(weaponspr,weaponIndex,-10,-48,-12*image_xscale,weaponcolor)


	hurt=1
	if hitBack=0
	image_index=animFrame+targetHeightHit
	else
	image_index=15

	 image_speed=0
	animFrame+=0.05 if animFrame>1-0.05 {hurt=0 

	if dizzyHit=0
	{canmove=1}
	else {animFrame=0 anim=42}

	}

	///Check to force out of enemy combo
	if key_shield_pressed and animFrame>0.5 and dizzyHit=0 {animFrame=1 recovery=30 if hp>=0.2 {hurt=0 event_user(4)}}
	}

	if anim=5 ///Hit Air
	{atk=0 sprite_index=ThrownSpr
	hurt=1 recovery=120

	recovery=30

	if hitBack=0
	{image_index=animFrame }
	else
	{image_index=animFrame+13 }

	image_speed=0 animFrame=clamp(animFrame,3,5)
	animFrame+=0.1
	//Land on ground
	if ground {hp-=thrownDMG PlaySound(HitGround)
	{animFrame=6.2 anim=6}}
	}

	if anim=6 ///Hit Getup
	{
	weaponanim(weaponspr,weaponIndex,2,-9,45*image_xscale,weaponcolor)

	hurt=1 
	recovery=30
	if specialDead=0
	{sprite_index=ThrownSpr 

	if hitBack=0
	image_index=animFrame 
	else
	image_index=animFrame+13

	image_speed=0}

	if specialDead=9 ///Flattened Dead
	{if dead=1 
	sprite_index=spr_viva_flat
	image_index=0 image_speed=0
	}

 
	if hp<=0 if dead=0 {dead=1 alarm[2]=30}

	if dead=0
	animFrame=clamp(animFrame,6,12)
	else
	animFrame=clamp(animFrame,6,8)

	if animFrame<9
	{
	if animFrame<7 animFrame+=0.2 else
	{
	if animFrame<8
	animFrame+=0.4
	else animFrame+=0.02}
	}else animFrame+=0.4

	if animFrame>10.8 {
	if dizzyHit=0 {hurt=0 canmove=1}
	else {animFrame=0 anim=42}
	if prevanim=7 {prevanim=0 recovery=90}}

	}


	if anim=7 ///Rolling Back
	{atk=0 sprite_index=ThrownSpr
	hurt=1 recovery=10 
	 prevanim=7


	if hitBack=0
	{sentflying=4*-image_xscale
	image_index+=0.2
	if image_index>=15 image_index=11
	}
	else
	{sentflying=4*image_xscale
	image_index-=0.2
	if image_index<11 image_index=15-0.2
	}

	animFrame+=0.1
	//Land on ground
	if animFrame>3 if ground{
	hp-=thrownDMG 

	{animFrame=7 anim=6}}
	}

	if anim=8 ///Electrified
	{atk=0 sprite_index=spr_viva_elec
	hurt=1 recovery=120
	image_index+=0.5
	if image_index>2 image_index=0
	animFrame+=0.1 
	sentflying=0
	zSpeed=0
	//Land on ground
	if animFrame>3
	if ground
	{hp-=thrownDMG 

	{zSpeed=-2 animFrame=2 anim=42}}
	else
	{hp-=thrownDMG 

	{animFrame=2 anim=40}}
	}
	}

	if anim=9 ///Flattened
	{depth=99998
	atk=0 sprite_index=spr_viva_flat
	hurt=1 recovery=60
	image_index=0
	if hp<=0 if dead=0 {dead=1 alarm[2]=90}
	if dead=0
	animFrame+=0.01
	sentflying=0
	if animFrame>1
	{
	if dead=1 {specialDead=9 animFrame=0 anim=6 }
	else {ground=0 specialDead=0 animFrame=6.8 anim=6}}

	}

	if hurt=1
	{

	if anim=30 ///Grabbed
	{hurt=1
	//sprite_index=ThrownSpr
	//image_index=animFrame+targetHeightHit+GrabFrameExtra image_speed=0
	} else GrabFrameExtra=0
	}

	if anim=31 ///Special Thrown
	{hurt=1
	sprite_index=GrabbedSpr
	}

	if anim=40 ///Burned
	{spdZ=0 if z<0 z+=0.45 else z=0
	hurt=1 recovery=30
	image_index=animFrame image_speed=0
	sprite_index=spr_viva_burned
	if animFrame=clamp(animFrame,0,1.9) animFrame+=0.1
	if animFrame=clamp(animFrame,2,2.9) animFrame+=0.025
	if hp<=0 if dead=0 {dead=1 alarm[2]=90}
	if dead=0
	{if animFrame>2.9 {hurt=0 canmove=1}}
	else
	if animFrame=clamp(animFrame,2.9+0.025,7.5) animFrame+=0.5
	}


	if anim=41 ///Frozen
	{if z<0 z+=0.45 else z=0
	atk=0 sprite_index=spr_viva_frozen

	if dead=0
	if key_attack or key_jump or key_shield_pressed
	{animFrame+=0.1 shaketime=10}

	if dead=0
	if animFrame>0.5 {recovery=0 hurt=0}

	image_index=0
	if hp<=0 if dead=0 {dead=1 alarm[2]=90}
	if dead=0
	animFrame+=0.01
	sentflying=0
	if animFrame>2
	{
	if dead=1 {specialDead=9 animFrame=0 anim=6 }
	else {hurt=0 canmove=1 specialDead=0 animFrame=0 anim=0 recovery=60}}

	}

	if anim=42 ///Dizzy
	{spdZ=0 if z<0 z+=0.45 else z=0 
	hurt=0 dizzyHit=0
	image_index+=0.1 image_speed=0
	sprite_index=DizzySpr
	if animFrame>10 {hurt=0 canmove=1} else animFrame+=0.05
	}




}
