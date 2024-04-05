function character_hitanims() {
	//if hurt=1
	{
		
if anim=4 
{if animFrame=0 {wobbleX=1 wobbleY=1}
if targetHeightHit=0 {if wobbleX<1.2 {wobbleX+=0.01 wobbleY+=0.01} else {wobbleX=1 wobbleY=1}}
if targetHeightHit=1 {if wobbleY<1.2 {wobbleY+=0.01 wobbleX-=0.01} else {wobbleX=1 wobbleY=1}}
if targetHeightHit=2 {if wobbleX<1.2 {wobbleX+=0.01 wobbleY-=0.01} else {wobbleX=1 wobbleY=1}}
}
if anim=5
{
if animFrame<=3 {wobbleX=0.8 wobbleY=1.2}

if ground 
{wobbleX=1.2 wobbleY=0.8}
}
if anim=9
if animFrame=0 {wobbleX=1.4 wobbleY=0.4}

wobbleX=lerp(wobbleX,1,0.1)
wobbleY=lerp(wobbleY,1,0.1)

	if anim=4 ///Hit Stand
	if overwriteHitStand=0
	{
	hurt=1
	sentflying=HitForceReact
	if hitBack=0
	image_index=animFrame+targetHeightHit
	else
	if hashitBack=1 image_index=15 else image_index=animFrame+targetHeightHit

	 image_speed=0
	animFrame+=0.05 if animFrame>1-0.05 {hurt=0

	if dizzyHit=0
	{canmove=1}
	else {
	if hasDizzy=0
	{image_index=GrabFrame image_speed=0}

	animFrame=0 anim=42 }

	}
	}
	


	if anim=5 ///Hit Air
	if overwriteHitAir=0
	{
	//////If dead get cut
//	if cutDMG=1 and hasCut=0
	if hp<=0 and hasCut=1 and cutDMG!=0
	{animFrame=0 anim=1337 exit;}
		
	atk=0 sprite_index=ThrownSpr
	hurt=1
	recovery=30

if hashitBack=0 or hashitBack=1
{
	if hitBack=0
	{image_index=animFrame }
	else
	{if hashitBack=1
	image_index=animFrame+13 else image_index=animFrame}




	image_speed=0 animFrame=clamp(animFrame,3,5)
	animFrame+=0.1
}
if hashitBack=2 or hashitBack=3
{
if hashitBack=2
{
frame_set(0,18,0.25)
frame_set(1,17,0.25)
frame_set(2,16,0.25) 
frame_set(3,5,0.25)
frame_set(4,4,0.25)
frame_set(5,3,0.25)
if animFrame>5.75 animFrame=0
}
else
{
frame_set(0,3,0.25)
frame_set(1,4,0.25)
frame_set(2,5,0.25)
frame_set(3,16,0.25)
frame_set(4,17,0.25)
frame_set(5,18,0.25) if animFrame>5.75 animFrame=0
}
}

	//Land on ground
	if ground and fallHole=0
	{if hashitBack=2 or hashitBack=3 hashitBack-=2
	if (key_jump_hold and dead=0 and hp!=0 and prevanim!=8 and prevanim!=9)
	{animFrame=0 anim=25 exit;}///Break out of fall

	
		hp-=thrownDMG //The character will take damage if it's a throw attack

	hground=instance_create_depth(x,y,0,oFlashFX)
	hground.sprite_index=spr_hitground hground.depth=99996
	hground.isDepth=0 hground.z=z

	{if HitGround!=-1 PlaySoundNoStack(HitGround)
	if isHeavy=1 oControl.quakeFXTime=10


	if ThrowDamage!=0 
	if isEnemy=1
	{event_user(10) hp-=ThrowDamage hpscan() hud_show() ThrowDamage=0} //If land take damage
	else {hp-=ThrowDamage ThrowDamage=0}
 
	 recovery=10 
 
	 animFrame=6.8 anim=6
 
	///if hitBackFaceDown=1 and hashitBackFaceDown=1
	///{sentflying=-sentflying hitBack=1 hasBounce=1}

	 if hasGroundRoll=1 and groundRoll=1
	 {groundRoll=0 HitType=2 event_user(0)}

 
	 }}
	}

	if anim=6 ///Hit Getup / Get Up
	if overwriteHitGetup=0
	{charThrown=0 recovery=30 
	hurt=1 sprite_index=ThrownSpr
	if hitBack=0
	image_index=animFrame 
	else
	if hashitBack=1 image_index=animFrame+13 else image_index=animFrame

	Throw=0

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

	if animFrame>1 and canBounce=1 and hasBounce=1
	{canBounce=0
	animFrame=4
	if hitBack=0
	sentflying=-2*image_xscale
	else
	sentflying=2*image_xscale

	ground=0
	zSpeed=-4

	anim=5
	}

	if animFrame>10.8 {
	if dizzyHit=0 {hurt=0 canmove=1 recoveryThrow=10}
	else {animFrame=0 anim=42

	if hasDizzy=0
	{image_index=GrabFrame image_speed=0}

	}
	if prevanim=7 {prevanim=0 recovery=90}
	if prevanim=8 or prevanim=9 prevanim=0
	}
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
	
		if (key_jump_hold and dead=0 and hp!=0 and prevanim!=8 and prevanim!=9)
	{animFrame=0 anim=25 exit;}///Break out of fall
	{animFrame=7 anim=6}}
	}



	}
	
	if anim=1337 ///Cut in half death animation
	{
			
			if !ground
			{
			if animFrame=0
			{if cutDMG=1 sprite_index=cutSpr1 if cutDMG=2 sprite_index=cutSpr1B
if cutSpawn<0.9 {cutSpawn+=0.1 sprite_index=ThrownSpr image_index=3}
else
{
if 	cutSpawn!=1
{image_index=0
cutSelf=instance_create(x,y,oCutHalfFX) cutSelf.hitBack=hitBack cutSelf.z=z cutSelf.image_xscale=image_xscale 
if cutDMG=1
cutSelf.sprite_index=cutSpr2
if cutDMG=2
{cutSelf.sprite_index=cutSpr2B cutSelf.shadowXAdd=-32}
cutSelf.my_pal_sprite=my_pal_sprite  cutSelf.current_pal=current_pal
cutSelf.HitGround=HitGround
with cutSelf
	{
	ground=0
	zSpeed=-8
	if hitBack=0
	sentflying=3*-image_xscale
	else
	sentflying=3*image_xscale
	image_index=3
	}
	cutSpawn=1
	}
	 animFrame=1
}
	}	
		}
	else
	{
		frame_set(1,1,0.5) if animFrame=2
 { ////Start disappearing
	if image_index!=2.75 animFrame=3
	{image_index=2.75
	dead=1 alarm[2]=30
	hground=instance_create_depth(x,y,0,oFlashFX)
	hground.sprite_index=spr_hitground hground.depth=99996
	hground.isDepth=0 hground.z=z
	if HitGround!=-1 PlaySoundNoStack(HitGround)
	}		
	}
	
	}
	
	}

	if anim=8 ///Electrified
	if overwriteShock=0
	{atk=0 sprite_index=ShockSpr
	hurt=1 recovery=120 prevanim=8
	image_index+=0.5
	if image_index>2 image_index=0
	animFrame+=0.1 
	if !ground
	sentflying=HitForceReact
	else sentflying=0
	//Land on ground
	if animFrame>3
	if ground
	{hp-=thrownDMG {animFrame=3 anim=5}}
	else
	{hp-=thrownDMG {animFrame=3 anim=5}}
	}

	if anim=9 ///Flattened
	if overwriteFlat=0
	{depth=99998
	atk=0 sprite_index=FlatSpr prevanim=9
	hurt=1 recovery=60

	if image_index<1.5
	image_index+=0.25

	if hp<=0 if isEnemy=1 {if hplayer=0 {if dead=0 {hplayertake=hp dead=1 alarm[2]=90}} else {hplayertake=hp hp=maxhp+hplayertake hplayer-=1 if oControl.enemyID=1 hud_show() }}
	else
	if dead=0 {dead=1 alarm[2]=30}

	if dead=0
	animFrame+=0.01
	sentflying=0
	zSpeed=0
	if animFrame>1
	{
	if dead=1 {specialDead=9 animFrame=0 anim=6 zSpeed=-2}
	else {specialDead=0 animFrame=6.8 anim=6 zSpeed=-2}}

	}

	if anim=40 ///Burned
	if overwriteBurn=0
	{
	hurt=1 recovery=30
	image_index=animFrame image_speed=0
	if image_index<4
	sprite_index=BurnSpr
	else
	{if image_index=4 burnedash_fx()
		if sprite_index!=spr_viva_burned
	sprite_index=spr_burglar_burned
	}

	if !ground
	sentflying=HitForceReact
	else sentflying=0

	if animFrame=clamp(animFrame,0,1.9) animFrame+=0.1
	if animFrame=clamp(animFrame,2,2.9) animFrame+=0.025

	if hp<=0 if isEnemy=1 {if hplayer=0 {if dead=0 {hplayertake=hp dead=1 alarm[2]=90
		
		}} else {hplayertake=hp hp=maxhp+hplayertake hplayer-=1 if oControl.enemyID=1 hud_show() }}
	else
	if dead=0 {dead=1 alarm[2]=90 
		
		}

	if dead=0
	{if animFrame>2.9 {hurt=0 canmove=1}}
	else
	if animFrame=clamp(animFrame,2.9+0.025,7.5) animFrame+=0.5


	}

	if anim=41 ///Frozen
	if overwriteFrozen=0
	{
	atk=0 sprite_index=FrozenSpr

	if !ground
	sentflying=HitForceReact
	else sentflying=0

	if dead=0
	if key_attack or key_jump
	{animFrame+=0.1 shaketime=10}

	if dead=0
	if animFrame>0.5 {recovery=0 hurt=0}

	image_index=0

	if hp<=0 if isEnemy=1 {if hplayer=0 {if dead=0 {hplayertake=hp dead=1 alarm[2]=90}} else {hplayertake=hp hp=maxhp+hplayertake hplayer-=1 if oControl.enemyID=1 hud_show() }}
	else
	if dead=0 {dead=1 alarm[2]=30}

	if dead=0
	animFrame+=0.01
	if animFrame>2
	{
	if dead=1 {specialDead=9 animFrame=0 anim=6 }
	else {frozen_fx() hurt=0 canmove=1 specialDead=0 animFrame=0 anim=0 recovery=60}}

	}



	if hurt=1
	{
	if anim=30 ///Thrown
	{
	if overwriteThrown=0
	{hurt=1 sprite_index=ThrownSpr recovery=30
	image_index=targetHeightHit image_speed=0
	}} else SpritePos=0
	}else SpritePos=0

	if anim=31 ///Special Thrown
	if overwriteThrown=0
	{hurt=1 recovery=30}

	if anim=42 ///Dizzy
	if overwriteDizzy=0
	{spdZ=0 if z<0 z+=0.45 else z=0
		
	if animFrame=0 {if x!=clamp(x,oControl.camX-4,oControl.camX+320+4) {canmove=1 hurt=0}}	
		
	hurt=0 dizzyHit=0
	if hasDizzy=1
	image_index+=0.1
	else
	image_index=GrabFrame
	image_speed=0
	if hasDizzy=0
	sprite_index=ThrownSpr
	else
	sprite_index=DizzySpr
	if animFrame>10 {hurt=0 canmove=1} else animFrame+=0.05
	
	
	}

	if anim=43 ///Screen Hit
	{
	sprite_index=ScreenHitSpr

	if y<__view_get( e__VW.YView, 0)+240-8 {if image_index<1.5 image_index+=0.5 y+=8 zSpeed=0 z-=4 animFrame=0}
	else
	{
	if image_index<1.8 {image_index=2 oControl.quakeFXTime=10 PlaySound(snd_hitground)
		wobbleX=1.25 wobbleY=1.25
		}

	zSpeed=0 if animFrame<3.7 image_index=2 else image_index=3
	animFrame+=0.1 if !ground z+=0.1
	if animFrame>4 {HitType=1 event_user(0) sentflying=0 zSpeed=4}
	}
	}
	
	if anim=44 ///Melt
	{
	sprite_index=meltSpr	
if hp<=0
{
frame_set(0,0,0.025)
}
else
{
frame_set(0,0,0.025)
if animFrame<0.5 shaketime=2
if animFrame>0.9
{
hurt=0
canmove=1 animFrame=0}
}
frame_set(1,1,0.2)
frame_set(2,2,0.2)
frame_set(3,3,0.2)
frame_set(4,4,0.2)
frame_set(5,5,0.2) if animFrame=5.8
{dead=1 alarm[2]=30}
	
	}
	
	if anim=45 ///Inflate
	{mask_index=mask_mid
if animFrame=0 {sprite_index=inflateSpr specialtimes[4]=0 animFrame=1}

if dead=0
{
if ground {ground=0 zSpeed=-4 wobbleX=1.2 wobbleY=0.9
	
	} else z+=-2
var formspd=1
	if key_right 
	{
	
	if place_free(x+formspd,y) and x<__view_get( e__VW.XView, 0 )+320-28 x+=formspd}
	

	if -key_left {if place_free(x-formspd,y)
	and x>__view_get( e__VW.XView, 0 )+42
	  x-=formspd}
	if key_up 
	{if place_free(x,y-formspd) y-=formspd
	}
	if key_down 
	{if place_free(x,y+formspd)
	and y<__view_get( e__VW.YView, 0 )+240-2
	  y+=formspd
	}
}

if image_index<6.5
{if dead=0
{if image_index<2.5 image_index+=0.25} else image_index+=0.25
}
else {image_index=6.5 sprite_index=mask_none}


	if hp<=0 if isEnemy=1 {if hplayer=0 {if dead=0 {hplayertake=hp dead=1 alarm[2]=90}} else {hplayertake=hp hp=maxhp+hplayertake hplayer-=1 if oControl.enemyID=1 hud_show() }}
	else
	if dead=0 {dead=1 alarm[2]=90}
	
	specialtimes[4]+=1
	
	if dead=0
if specialtimes[4]>160 {animFrame=0 anim=4 targetHeightHit=0 animFrame=0.9}
	}
	
if anim=590067 { sprite_index=SpookyMonthSpr
if animFrame>3.9 animFrame=0
frame_set(0,0,0.2)
frame_set(1,1,0.2)
frame_set(2,2,0.2)
frame_set(3,1,0.2)
}

if anim=590068 { sprite_index=SpinningSpr animFrame+=0.25 image_index+=0.5
if animFrame>12 {HitType=1 event_user(0) sentflying=0 zSpeed=4}
}


/////Transformation Frog
if anim=591000
{sprite_index=spr_frog sentflying=0
	
if hp=0 {flashFX(x,y+2,z-16,spr_smokemid,0,0.25,100,1,1,c_white,1) canmove=0 sentflying=-2*image_xscale zSpeed=-4 sprite_index=ThrownSpr animFrame=0 anim=5}
	
if animFrame=0 {flashFX(x,y+2,z-16,spr_smokemid,0,0.25,100,1,1,c_white,1) specialtimes[4]=0; animFrame=1}


if ground
{
frame_set(1,0,0.25)
frame_set(2,1,0.25)
frame_set(3,2,0.25)
frame_set(4,3,0.25)
frame_set(5,2,0.25) if animFrame>6 animFrame=1
}
else
{
frame_set(1,4,0.25)
frame_set(2,5,0.25)
frame_set(3,6,0.25)
}

specialtimes[4]+=1



var formspd=2;

if !ground
{
	if key_right 
	{
	
	if place_free(x+formspd,y) and x<__view_get( e__VW.XView, 0 )+320-28 x+=formspd}
	

	if -key_left {if place_free(x-formspd,y)
	and x>__view_get( e__VW.XView, 0 )+42
	  x-=formspd}
	if key_up 
	{if place_free(x,y-formspd) y-=formspd
	}
	if key_down 
	{if place_free(x,y+formspd)
	and y<__view_get( e__VW.YView, 0 )+240-2
	  y+=formspd
	}
}

if key_right or -key_left or key_up or key_down
if ground=1
{if key_right image_xscale=1
	if -key_left image_xscale=-1
	
	zSpeed=-4 ground=0 animFrame=1
}

	if key_jump and ground
	{animFrame=1
	ground=0 zSpeed=-8 PlaySound(snd_jump)
	}



if specialtimes[4]>160 {flashFX(x,y+2,z-16,spr_smokemid,0,0.25,100,1,1,c_white,1) animFrame=0 anim=4 targetHeightHit=0 animFrame=0.9}
}


/////Mummy Wrap
if anim=591001
{sprite_index=wrapSpr sentflying=0
	
if hp=0 {canmove=0 sentflying=-2*image_xscale zSpeed=-4 sprite_index=ThrownSpr animFrame=0 anim=5}
	
if animFrame=0 {specialtimes[4]=0; animFrame=1}


if ground
{
frame_set(1,1,0.25)
frame_set(2,0,0.25)
}
else
{
frame_set(1,2,0.25)
frame_set(2,1,0.25)
}

specialtimes[4]+=1



var formspd=2;

if !ground
{
	if key_right 
	{
	
	if place_free(x+formspd,y) and x<__view_get( e__VW.XView, 0 )+320-28 x+=formspd}
	

	if -key_left {if place_free(x-formspd,y)
	and x>__view_get( e__VW.XView, 0 )+42
	  x-=formspd}
	if key_up 
	{if place_free(x,y-formspd) y-=formspd
	}
	if key_down 
	{if place_free(x,y+formspd)
	and y<__view_get( e__VW.YView, 0 )+240-2
	  y+=formspd
	}
}

if key_right or -key_left or key_up or key_down
if ground=1
{if key_right image_xscale=1
	if -key_left image_xscale=-1
	
	zSpeed=-3 ground=0 animFrame=1
}

	if key_jump and ground
	{animFrame=1
	ground=0 zSpeed=-3 PlaySound(snd_jump)
	}



if specialtimes[4]>160 {animFrame=0 anim=4 targetHeightHit=0 animFrame=0.9}
}

/////Transformation Pig
if anim=591002
{sprite_index=pigSpr sentflying=0
	
if hp=0 {flashFX(x,y+2,z-16,spr_smokemid,0,0.25,100,1,1,c_white,1) canmove=0 sentflying=-2*image_xscale zSpeed=-4 sprite_index=ThrownSpr animFrame=0 anim=5}
	
if animFrame=0 {flashFX(x,y+2,z-16,spr_smokemid,0,0.25,100,1,1,c_white,1) specialtimes[4]=0; specialtimes[3]=0 animFrame=1 specialtimes[5]=0;}

specialtimes[5]=0
if key_right or -key_left or key_up or key_down
if ground=1
{if key_right image_xscale=1
	if -key_left image_xscale=-1
	
	specialtimes[5]=1
}


if ground
{
if specialtimes[5]=0
{
frame_set(1,2,0.25)
frame_set(2,2,0.25)
frame_set(3,0,0.25)
frame_set(4,0,0.25)
frame_set(5,2,0.25) if animFrame>6 animFrame=1
}
else
{
frame_set(1,1,0.25)
frame_set(2,2,0.25)
frame_set(3,3,0.25)
frame_set(4,2,0.25)
frame_set(5,2,0.25) if animFrame>4 animFrame=1
}

}
else
{
frame_set(1,4,0.25)
frame_set(2,5,0.25)
frame_set(3,5,0.25)
}

specialtimes[4]+=1

var formspd=2;

//if !ground
{
	if key_right 
	{	
	if place_free(x+formspd,y) and x<__view_get( e__VW.XView, 0 )+320-28 x+=formspd}
	
	if -key_left {if place_free(x-formspd,y)
	and x>__view_get( e__VW.XView, 0 )+42
	  x-=formspd}
	if key_up 
	{if place_free(x,y-formspd) y-=formspd
	}
	if key_down 
	{if place_free(x,y+formspd)
	and y<__view_get( e__VW.YView, 0 )+240-2
	  y+=formspd
	}
}

	if key_jump and ground
	{animFrame=1
	ground=0 zSpeed=-6 PlaySound(snd_jump)
	}


if specialtimes[4]>160 {animFrame=0 anim=4 targetHeightHit=0 animFrame=0.9}
}


/////Bubbled
if anim=591003
{sprite_index=bubSpr sentflying=0
	
if hp=0 {canmove=0 sentflying=-2*image_xscale zSpeed=-4 sprite_index=ThrownSpr animFrame=0 anim=5}
	
if animFrame=0 {specialtimes[4]=0; animFrame=1}


if zSpeed>-3
zSpeed=lerp(zSpeed,0,0.5)

z+=0.01

image_index+=0.25

specialtimes[4]+=1



var formspd=2;

if !ground
{
	if key_right 
	{
	
	if place_free(x+formspd,y) and x<__view_get( e__VW.XView, 0 )+320-28 x+=formspd}
	

	if -key_left {if place_free(x-formspd,y)
	and x>__view_get( e__VW.XView, 0 )+42
	  x-=formspd}
	if key_up 
	{if place_free(x,y-formspd) y-=formspd
	}
	if key_down 
	{if place_free(x,y+formspd)
	and y<__view_get( e__VW.YView, 0 )+240-2
	  y+=formspd
	}
}

if key_right or -key_left or key_up or key_down
if ground=1
{//if key_right image_xscale=1
//	if -key_left image_xscale=-1
	
	//zSpeed=-3 ground=0 animFrame=1
}


if ground {
	flashFX(x,y,z,spr_bubblepop,0,0.25,10,image_xscale,1,c_white,1)
	zSpeed=-2 animFrame=0 anim=4 targetHeightHit=0 animFrame=0.9}
}


}


