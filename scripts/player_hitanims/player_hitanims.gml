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
	image_index=AnimFrame+targetHeightHit
	else
	image_index=15

	 image_speed=0
	AnimFrame+=0.05 if AnimFrame>1-0.05 {hurt=0 

	if dizzyHit=0
	{canmove=1}
	else {AnimFrame=0 anim=42}

	}

	///Check to force out of enemy combo
	if key_shield_pressed and AnimFrame>0.5 and dizzyHit=0 {AnimFrame=1 recovery=30 if hp>=0.2 {hurt=0 event_user(4)}}
	}

	if anim=5 ///Hit Air
	{atk=0 sprite_index=ThrownSpr
	hurt=1 recovery=120

	recovery=30

	if hitBack=0
	{image_index=AnimFrame }
	else
	{image_index=AnimFrame+13 }

	image_speed=0 AnimFrame=clamp(AnimFrame,3,5)
	AnimFrame+=0.1
	//Land on ground
	if ground {hp-=thrownDMG PlaySound(HitGround)
	{AnimFrame=6.2 anim=6}}
	}

	if anim=6 ///Hit Getup
	{
	weaponanim(weaponspr,weaponIndex,2,-9,45*image_xscale,weaponcolor)

	hurt=1 
	recovery=30
	if specialDead=0
	{sprite_index=ThrownSpr 

	if hitBack=0
	image_index=AnimFrame 
	else
	image_index=AnimFrame+13

	image_speed=0}

	if specialDead=9 ///Flattened Dead
	{if dead=1 
	sprite_index=spr_viva_flat
	image_index=0 image_speed=0
	}

 
	if hp<=0 if dead=0 {dead=1 alarm[2]=30}

	if dead=0
	AnimFrame=clamp(AnimFrame,6,12)
	else
	AnimFrame=clamp(AnimFrame,6,8)

	if AnimFrame<9
	{
	if AnimFrame<7 AnimFrame+=0.2 else
	{
	if AnimFrame<8
	AnimFrame+=0.4
	else AnimFrame+=0.02}
	}else AnimFrame+=0.4

	if AnimFrame>10.8 {
	if dizzyHit=0 {hurt=0 canmove=1}
	else {AnimFrame=0 anim=42}
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

	AnimFrame+=0.1
	//Land on ground
	if AnimFrame>3 if ground{
	hp-=thrownDMG 

	{AnimFrame=7 anim=6}}
	}

	if anim=8 ///Electrified
	{atk=0 sprite_index=spr_viva_elec
	hurt=1 recovery=120
	image_index+=0.5
	if image_index>2 image_index=0
	AnimFrame+=0.1 
	sentflying=0
	zSpeed=0
	//Land on ground
	if AnimFrame>3
	if ground
	{hp-=thrownDMG 

	{zSpeed=-2 AnimFrame=2 anim=42}}
	else
	{hp-=thrownDMG 

	{AnimFrame=2 anim=40}}
	}
	}

	if anim=9 ///Flattened
	{depth=99998
	atk=0 sprite_index=spr_viva_flat
	hurt=1 recovery=60
	image_index=0
	if hp<=0 if dead=0 {dead=1 alarm[2]=90}
	if dead=0
	AnimFrame+=0.01
	sentflying=0
	if AnimFrame>1
	{
	if dead=1 {specialDead=9 AnimFrame=0 anim=6 }
	else {ground=0 specialDead=0 AnimFrame=6.8 anim=6}}

	}

	if hurt=1
	{

	if anim=30 ///Grabbed
	{hurt=1
	//sprite_index=ThrownSpr
	//image_index=AnimFrame+targetHeightHit+GrabFrameExtra image_speed=0
	} else GrabFrameExtra=0
	}

	if anim=31 ///Special Thrown
	{hurt=1
	sprite_index=GrabbedSpr
	}

	if anim=40 ///Burned
	{spdZ=0 if z<0 z+=0.45 else z=0
	hurt=1 recovery=30
	image_index=AnimFrame image_speed=0
	sprite_index=spr_viva_burned
	if AnimFrame=clamp(AnimFrame,0,1.9) AnimFrame+=0.1
	if AnimFrame=clamp(AnimFrame,2,2.9) AnimFrame+=0.025
	if hp<=0 if dead=0 {dead=1 alarm[2]=90}
	if dead=0
	{if AnimFrame>2.9 {hurt=0 canmove=1}}
	else
	if AnimFrame=clamp(AnimFrame,2.9+0.025,7.5) AnimFrame+=0.5
	}


	if anim=41 ///Frozen
	{if z<0 z+=0.45 else z=0
	atk=0 sprite_index=spr_viva_frozen

	if dead=0
	if key_attack or key_jump or key_shield_pressed
	{AnimFrame+=0.1 shaketime=10}

	if dead=0
	if AnimFrame>0.5 {recovery=0 hurt=0}

	image_index=0
	if hp<=0 if dead=0 {dead=1 alarm[2]=90}
	if dead=0
	AnimFrame+=0.01
	sentflying=0
	if AnimFrame>2
	{
	if dead=1 {specialDead=9 AnimFrame=0 anim=6 }
	else {hurt=0 canmove=1 specialDead=0 AnimFrame=0 anim=0 recovery=60}}

	}

	if anim=42 ///Dizzy
	{spdZ=0 if z<0 z+=0.45 else z=0 
	hurt=0 dizzyHit=0
	image_index+=0.1 image_speed=0
	sprite_index=DizzySpr
	if AnimFrame>10 {hurt=0 canmove=1} else AnimFrame+=0.05
	}




}
