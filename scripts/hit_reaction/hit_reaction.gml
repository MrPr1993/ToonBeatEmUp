/// @description Hurt
function hit_reaction() {
	if act=1
	{
if targetID!=-1
{
character_release(0,-4,2*image_xscale,0,3,5)
targetID=-1;
}

if anim=591000
flashFX(x,y,z,spr_smokesmall,0,1,0,1,1,c_white,1)

///Reaction when hit while in inflated state
if HitType!=45 and anim=45
{
AnimFrame=1 wobbleX=1.1 wobbleY=0.9 
sentflying=HitForceReact
	zSpeed=HitForceReactZ
exit;
event_user(12)
}

////Reaction to baseball bat. If 0, the character will be sent flying. It won't apply to bosses.
if HitType=19935
{
if hp<=0
{
if isBoss=0
{
	canmove=0
	hurt=1
	shaketime=30
	throwing=0 dead=1;
	visible=0 disappearTime=0 alarm[2]=90
	
	///use fake body to fly off-screen
flashFX(x,y,z,ThrownSpr,0,0,90,image_xscale,1,c_white,1) fx.z=z
fx.zSpeed=-4 fx.my_pal_sprite=my_pal_sprite fx.current_pal=current_pal
fx.hasShadow=1 fx.shadow=shadowSpr fx.haspal=1

	if hitBack=0
	fx.hspeed=8*-image_xscale
	else
	{fx.image_index=15 fx.hspeed=8*image_xscale}
	
	exit;///

} else HitType=2
} else HitType=2
}

///Reaction while frozen
if HitType!=6 and anim=41 
{
frozen_fx()
if hp<=0
{
	canmove=0
	hurt=1
	shaketime=30
	throwing=0 dead=1;
	visible=0 disappearTime=0 alarm[2]=90 exit;}///Instantly kill and shatter character while frozen
}

	event_user(11)
	///Hurt Responses
	///You can use this to determine what animation the character will use
	///Depending on the HitType. Pretty useful if you, for example wants to have
	///your character become frozen if hit by an ice attack, or burned if hit by a fire attack.
	////The two are on the coding.

	canmove=0
	hurt=1
	shaketime=30
	throwing=0



	if HitType=1
	{
	/////Cut Death
	event_user(1) canBounce=1
	hurt=1
	ground=0
	zSpeed=-6
	if hitBack=0
	sentflying=4*-image_xscale
	else
	sentflying=4*image_xscale
	image_index=3 sprite_index=ThrownSpr
	AnimFrame=3
	anim=5
	}
	else
	if HitType=0
	{

	if damageFall>=0
	{///Hit Ground
	if HitType=1 ground=0
	if ground or noHitFall=1
	{canBounce=0
	thrownDMG=0
	if hitBack=0
	image_index=0+targetHeightHit
	else if hashitBack=1 image_index=15 else image_index=0 
	sprite_index=ThrownSpr
	AnimFrame=0
	anim=4
	}
	}
	else
///Hit Air
	{event_user(1) canBounce=1
		ground=0
	zSpeed=-4
	if hitBack=0
	sentflying=4*-image_xscale
	else
	sentflying=4*image_xscale
	image_index=3 sprite_index=ThrownSpr
	AnimFrame=3
	anim=5
	exit;
	}

	if !ground and noHitFall=0 ///Hit Air
	{event_user(1) canBounce=1
	zSpeed=-4
	if hitBack=0
	sentflying=4*-image_xscale
	else
	sentflying=4*image_xscale
	image_index=3 sprite_index=ThrownSpr
	AnimFrame=3
	anim=5
	}
	}

	if HitType=2///Roll Back
	{event_user(1)
	hurt=1 canBounce=0
	ground=0
	sentflying=2*-image_xscale
	image_index=11 sprite_index=ThrownSpr
	AnimFrame=0
	anim=7 
	}

	if HitType=3///Shocked
	{event_user(1)
	hurt=1 canBounce=0
	ground=0

	sentflying=HitForceReact
	zSpeed=HitForceReactZ

	image_index=9
	AnimFrame=0
	anim=8
	}

	if HitType=4///Flattened
	{hitBack=0 canBounce=0
	event_user(1)
	shaketime=10
	hurt=1
	sentflying=0
	image_index=0 sprite_index=FlatSpr
	AnimFrame=0
	anim=9
	specialDead=9
	}

	if HitType=5///Burned
	{canBounce=0
	recovery=30
	event_user(1)
	shaketime=10
	hurt=1
	sentflying=HitForceReact
	zSpeed=HitForceReactZ
	image_index=0
	AnimFrame=0
	anim=40
	}

	if HitType=6///Frozen
	{canBounce=0
	specialFX=1 alarm[3]=5


	recovery=30
	event_user(1)
	shaketime=10
	hurt=1

	sentflying=HitForceReact
	zSpeed=HitForceReactZ

	image_index=0 sprite_index=ThrownSpr
	AnimFrame=0
	anim=41

	}

	if anim=4 if hp<=0 
	{HitType=1 event_user(0)}


	if isEnemy=1
	{
	if hp<=0 and hplayer!=0
	{hp=maxhp+hplayertake hplayer-=1 if oControl.enemyID=1 hud_show()}

	hpscan()
	}

	if HitType=7///Hit Screen
	{image_index=0
	sentflying=0 AnimFrame=0 anim=43
	}

	////Banana Peel
	if HitType=8
	{
	ThrowDamage=0.1
	hurt=1
	ground=0
	zSpeed=-6
	hitBack=0
	sentflying=0

	image_index=3 sprite_index=ThrownSpr
	AnimFrame=3
	anim=5
	}
	

	
	////Spinning
	if HitType=590068
	{
	hurt=1
	sprite_index=SpinningSpr image_index=0
	AnimFrame=0
	anim=590068
	}	
	
	
	////Frog Curse
	if HitType=591000
	{hurt=1
	sprite_index=ThrownSpr image_index=0
	AnimFrame=0
	anim=591000
	sentflying=-2*image_xscale
	ground=0 zSpeed=-6
	}
	
	////Wrapped Mummy
	if HitType=591001
	{hurt=1
	sprite_index=ThrownSpr image_index=0
	AnimFrame=0
	anim=591001
	sentflying=-2*image_xscale
	ground=0 zSpeed=-6
	}
	
	////Piggy Curse of Circe
	if HitType=591002
	{hurt=1
	sprite_index=ThrownSpr image_index=0
	AnimFrame=0
	anim=591002
	sentflying=-2*image_xscale
	ground=0 zSpeed=-6
	}
	
	///Bubbled
	if HitType=591003
	{hurt=1
	sprite_index=ThrownSpr image_index=0
	AnimFrame=0
	anim=591003 z-=2
	sentflying=-2*image_xscale
	ground=0 zSpeed=-6
	}	
	
	
	if HitType=44///Melt
	{event_user(1)
	hurt=1 canBounce=0 sprite_index=meltSpr
	ground=0

	sentflying=HitForceReact
	zSpeed=HitForceReactZ

	image_index=0
	AnimFrame=0
	anim=44
	}
	
	if HitType=45///Inflate
	{event_user(1)
	hurt=1 canBounce=0 image_index=0 if sprite_index=inflateSpr image_index=2 sprite_index=inflateSpr
	ground=0

	wobbleX=1.1
wobbleY=0.9

	sentflying=HitForceReact
	zSpeed=HitForceReactZ
	
	AnimFrame=0
	anim=45
	}	

	event_user(12)
	///Special State for certain enemies after
	

	
	
	}



}
