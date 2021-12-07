function enemy_hitanims() {
	if hurt=1
	{

	if anim=4 ///Hit Stand
	if overwriteHitStand=0
	{
	hurt=1

	if hitBack=0
	image_index=animFrame+targetHeightHit
	else
	if hashitBack=1 image_index=15 else image_index=animFrame+targetHeightHit

	 image_speed=0
	animFrame+=0.05 if animFrame>1-0.05 {hurt=0

	if dizzyHit=0
	{canmove=1}
	else {animFrame=0 anim=42}

	}
	}

	if anim=5 ///Hit Air
	if overwriteHitAir=0
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
	if ground {hp-=thrownDMG
	{
	if isHeavy=1 oControl.quakeFXTime=10

	if ThrowDamage!=0 {event_user(10) hp-=ThrowDamage hpscan() hud_show() ThrowDamage=0} //If land take damage
	PlaySoundNoStack(HitGround) animFrame=6.8 anim=6}}
	}

	if anim=6 ///Hit Getup
	if overwriteHitGetup=0
	{charThrown=0
	hurt=1 sprite_index=ThrownSpr
	if hitBack=0
	image_index=animFrame 
	else
	if hashitBack=1 image_index=animFrame+13 else image_index=animFrame

	  image_speed=0
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

	if hitBack=0
	{sentflying=4*-image_xscale
	image_index+=0.2
	if image_index>=15 image_index=11}
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
	if overwriteShock=0
	{atk=0 sprite_index=ShockSpr
	hurt=1 recovery=120
	image_index+=0.5
	if image_index>2 image_index=0
	animFrame+=0.1 
	sentflying=0
	zSpeed=0
	//Land on ground
	if animFrame>3
	if ground
	{hp-=thrownDMG {zSpeed=-2 animFrame=2 anim=6}}
	else
	{hp-=thrownDMG {animFrame=3 anim=5}}
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
	animFrame+=0.01
	sentflying=0
	zSpeed=0
	if animFrame>1
	{
	if dead=1 {specialDead=9 animFrame=0 anim=6 }
	else {specialDead=0 animFrame=6.8 anim=6 }}

	}

	if anim=40 ///Burned
	if overwriteBurn=0
	{spdZ=0 if z<0 z+=0.45 else z=0
	hurt=1 recovery=30
	image_index=animFrame image_speed=0
	sprite_index=BurnSpr
	if animFrame=clamp(animFrame,0,1.9) animFrame+=0.1
	if animFrame=clamp(animFrame,2,2.9) animFrame+=0.025
	if hp<=0 {if hplayer=0 {if dead=0 {hplayertake=hp dead=1 alarm[2]=90}} else {hplayertake=hp hp=maxhp+hplayertake hplayer-=1 if oControl.enemyID=1 hud_show() }}
	if dead=0
	{if animFrame>2.9 {hurt=0 canmove=1}}
	else
	if animFrame=clamp(animFrame,2.9+0.025,7.5) animFrame+=0.5
	}

	if anim=41 ///Frozen
	if overwriteFrozen=0
	{spdZ=0 if z<0 z+=0.45 else z=0
	atk=0 sprite_index=FrozenSpr

	if dead=0
	if key_attack or key_jump
	{animFrame+=0.1 shaketime=10}

	if dead=0
	if animFrame>0.5 {recovery=0 hurt=0}

	image_index=0
	if hp<=0 {if hplayer=0 {if dead=0 {hplayertake=hp dead=1 alarm[2]=90}} else {hplayertake=hp hp=maxhp+hplayertake hplayer-=1 if oControl.enemyID=1 hud_show() }}
	if dead=0
	animFrame+=0.01
	sentflying=0
	if animFrame>2
	{
	if dead=1 {specialDead=9 animFrame=0 anim=6 }
	else {hurt=0 canmove=1 specialDead=0 animFrame=0 anim=0 recovery=60}}

	}

	if hurt=1
	{

	if anim=30 ///Thrown
	if overwriteThrown=0
	{hurt=1 sprite_index=ThrownSpr recovery=30
	image_index=animFrame+targetHeightHit image_speed=0
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
	if animFrame>10 {hurt=0 canmove=1} else animFrame+=0.05
	}



}
