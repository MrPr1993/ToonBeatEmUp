function enemy_hitanims() {
	if hurt=1
	{

	if anim=4 ///Hit Stand
	if overwriteHitStand=0
	{
	hurt=1

	if hitBack=0
	image_index=AnimFrame+targetHeightHit
	else
	if hashitBack=1 image_index=15 else image_index=AnimFrame+targetHeightHit

	 image_speed=0
	AnimFrame+=0.05 if AnimFrame>1-0.05 {hurt=0

	if dizzyHit=0
	{canmove=1}
	else {AnimFrame=0 anim=42}

	}
	}

	if anim=5 ///Hit Air
	if overwriteHitAir=0
	{
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
	if ground {hp-=thrownDMG
	{
	if isHeavy=1 oControl.quakeFXTime=10

	if ThrowDamage!=0 {event_user(10) hp-=ThrowDamage hpscan() hud_show() ThrowDamage=0} //If land take damage
	PlaySoundNoStack(HitGround) AnimFrame=6.8 anim=6}}
	}

	if anim=6 ///Hit Getup
	if overwriteHitGetup=0
	{charThrown=0
	hurt=1 sprite_index=ThrownSpr
	if hitBack=0
	image_index=AnimFrame 
	else
	if hashitBack=1 image_index=AnimFrame+13 else image_index=AnimFrame

	  image_speed=0
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

	if hitBack=0
	{sentflying=4*-image_xscale
	image_index+=0.2
	if image_index>=15 image_index=11}
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
	if overwriteShock=0
	{atk=0 sprite_index=ShockSpr
	hurt=1 recovery=120
	image_index+=0.5
	if image_index>2 image_index=0
	AnimFrame+=0.1 
	sentflying=0
	zSpeed=0
	//Land on ground
	if AnimFrame>3
	if ground
	{hp-=thrownDMG {zSpeed=-2 AnimFrame=2 anim=6}}
	else
	{hp-=thrownDMG {AnimFrame=3 anim=5}}
	}
	}

	if anim=9 ///Flattened
	if overwriteFlat=0
	{depth=99998
	atk=0 sprite_index=FlatSpr
	hurt=1 recovery=60
	image_index=0
	if hp<=0 {if hplayer=0 {if dead=0 {hplayertake=hp dead=1 alarm[2]=90}} else {hplayertake=hp hp=maxhp+hplayertake hplayer-=1 if oControl.enemyID=1 hud_show() }}
	if dead=0
	AnimFrame+=0.01
	sentflying=0
	zSpeed=0
	if AnimFrame>1
	{
	if dead=1 {specialDead=9 AnimFrame=0 anim=6 }
	else {specialDead=0 AnimFrame=6.8 anim=6 }}

	}

	if anim=40 ///Burned
	if overwriteBurn=0
	{spdZ=0 if z<0 z+=0.45 else z=0
	hurt=1 recovery=30
	image_index=AnimFrame image_speed=0
	sprite_index=BurnSpr
	if AnimFrame=clamp(AnimFrame,0,1.9) AnimFrame+=0.1
	if AnimFrame=clamp(AnimFrame,2,2.9) AnimFrame+=0.025
	if hp<=0 {if hplayer=0 {if dead=0 {hplayertake=hp dead=1 alarm[2]=90}} else {hplayertake=hp hp=maxhp+hplayertake hplayer-=1 if oControl.enemyID=1 hud_show() }}
	if dead=0
	{if AnimFrame>2.9 {hurt=0 canmove=1}}
	else
	if AnimFrame=clamp(AnimFrame,2.9+0.025,7.5) AnimFrame+=0.5
	}

	if anim=41 ///Frozen
	if overwriteFrozen=0
	{spdZ=0 if z<0 z+=0.45 else z=0
	atk=0 sprite_index=FrozenSpr

	if dead=0
	if key_attack or key_jump
	{AnimFrame+=0.1 shaketime=10}

	if dead=0
	if AnimFrame>0.5 {recovery=0 hurt=0}

	image_index=0
	if hp<=0 {if hplayer=0 {if dead=0 {hplayertake=hp dead=1 alarm[2]=90}} else {hplayertake=hp hp=maxhp+hplayertake hplayer-=1 if oControl.enemyID=1 hud_show() }}
	if dead=0
	AnimFrame+=0.01
	sentflying=0
	if AnimFrame>2
	{
	if dead=1 {specialDead=9 AnimFrame=0 anim=6 }
	else {hurt=0 canmove=1 specialDead=0 AnimFrame=0 anim=0 recovery=60}}

	}

	if hurt=1
	{

	if anim=30 ///Thrown
	if overwriteThrown=0
	{hurt=1 sprite_index=ThrownSpr recovery=30
	image_index=AnimFrame+targetHeightHit image_speed=0
	}
	}

	if anim=31 ///Special Thrown
	if overwriteThrown=0
	{hurt=1 recovery=30}

	if anim=42 ///Dizzy
	if overwriteDizzy=0
	{spdZ=0 if z<0 z+=0.45 else z=0 
	hurt=0 dizzyHit=0
	image_index+=0.1 image_speed=0
	sprite_index=DizzySpr
	if AnimFrame>10 {hurt=0 canmove=1} else AnimFrame+=0.05
	}



}
