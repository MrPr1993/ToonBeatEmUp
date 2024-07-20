enemy_endstep()
throw_step()

if hp=0 if !ground {x=clamp(x,oControl.camX+32,oControl.camX+320-32)}

if hp<1
{my_pal_sprite=spr_dastardlyskin
current_pal=round(20-20*(hp/1))
current_pal=clamp(current_pal,0,20)
}

overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1
overwriteAttack3=1
overwriteAttack4=1
overwriteAttack5=1

if anim=10
{
if distance_to_point(targetEnemy.x,targetEnemy.y)>80
{
if distance_to_point(targetEnemy.x,targetEnemy.y)<120
	anim=choose(13,14,65) else anim=choose(650,6500,65000)
}
	else
	anim=choose(11,12,650)
}


if anim=11
{atkcol_set(79,0,37,4.05,1,59)
if AnimFrame=0  PlaySound(choose(snd_dastardly20,snd_dastardly22))
MoveType=1 damage=0.2
sprite_index=spr_dastardly_attack1
image_index=AnimFrame
atkAddX=32 atkAddY=0 atkAddZ=0 selfatk.image_xscale=3.5*image_xscale selfatk.image_yscale=1
frame_set(0,0,0.1)
frame_set(1,1,0.25)
frame_set(2,2,0.25)
frame_set(3,3,0.25)
if AnimFrame=clamp(AnimFrame,3,3.99){atk=1 sentflying=8*image_xscale
} else { atk=0 sentflying=0}
frame_set(4,4,0.25)
frame_set(5,5,0.25)
frame_set(6,6,0.25)
if AnimFrame>6.5 {atk=0 canmove=1}
}

if anim=12 ///Air Kick
{atkcol_set(53,0,12,3.35,1,173)

if AnimFrame=0 {specialtimes[0]=0 PlaySound(choose(snd_dastardly20,snd_dastardly22))}
damage=0.2 MoveType=1
sprite_index=spr_dastardly_attack2
sentflying=lerp(sentflying,0,0.1)
frame_set(0,specialtimes[0],0.1)
frame_set(1,specialtimes[0],0.1) 
frame_set(2,specialtimes[0],0.2) if AnimFrame=3
{ground=0 z-=4 spdZ=-8 sentflying=-3*image_xscale specialtimes[0]=0 image_index=3
} if specialtimes[0]<6 specialtimes[0]+=0.2
if image_index=clamp(image_index,3,3.99) {atk=1 z-=16} else atk=0
frame_set(3,specialtimes[0],0.25)
frame_set(4,8,0.25) if AnimFrame>4 if ground canmove=1
frame_set(5,9,0.25)
}

if anim=13 ///Air Kick Drop
{sprite_index=spr_dastardly_attack3
if AnimFrame=0  {PlaySound(choose(snd_dastardly20,snd_dastardly22))}
damage=0.2 
atkcol_set(3,0,6,2.55,1,144)

frame_set(0,0,0.25)
frame_set(1,1,0.25) if AnimFrame=2
{ground=0 z-=4 spdZ=-8}
frame_set(2,2,0.1)
frame_set(3,3,0.1)
frame_set(4,4,0.5)
frame_set(5,5,0.5) if AnimFrame=6
{
sentflying=8*image_xscale
} if AnimFrame=clamp(AnimFrame,2,6) z-=16
frame_set(6,6,0.25)
frame_set(7,7,0.25)
frame_set(8,8,0.25) if AnimFrame=9 AnimFrame=7
if AnimFrame>=6 if ground {if AnimFrame<=9.5 {oControl.quakeFXTime=10 PlaySound(snd_hitgroundmetal) atk=0 z=0 sentflying=0 AnimFrame=10}} else {z+=16 atk=1}
frame_set(10,9,0.25)
frame_set(11,10,0.25)

if AnimFrame>=11.5 {atk=0 canmove=1}

}

if anim=14 ///Rapid Fists
{
//if AnimFrame=0  PlaySound(snd_wolfita7)
if AnimFrame=0 {sprite_index=spr_dastardly_attack4 specialtimes[0]=0 PlaySound(snd_dastardly14) }
canbeGrabbed=0
MoveType=0 damage=0.1 selfatk.NoKnock=1


//atkAddX=32 atkAddY=0 atkAddZ=0 selfatk.image_xscale=3.5*image_xscale selfatk.image_yscale=1
atkcol_set(90,0,4,5.75,1,144)
	
frame_set(0,0,0.25)
frame_set(1,1,0.25)
frame_set(2,2,0.25) if AnimFrame<=2 specialtimes[0]=0
frame_set(3,3,0.5) if AnimFrame=4 sprite_index=spr_dastardly_attack4b
frame_set(4,specialtimes[0],0.01)

if AnimFrame=clamp(AnimFrame,4,4.99){
	if !audio_is_playing(snd_swing5) PlaySound(snd_swing5)
	
	if AnimFrame>=4.5 selfatk.NoKnock=0
	
	atk=1 sentflying=1*image_xscale specialtimes[0]+=0.5 if specialtimes[0]>=8 specialtimes[0]=0
} else { atk=0 sentflying=0} if AnimFrame=5 sprite_index=spr_dastardly_attack4
frame_set(5,12,0.25)
frame_set(6,13,0.25)
frame_set(7,14,0.25)
frame_set(8,15,0.25)
if AnimFrame>6.5 canbeGrabbed=1

if AnimFrame>8.5 {atk=0 canmove=1}	
}

if anim=65 ///Spin Kick
{
//if AnimFrame=0  PlaySound(snd_wolfita7)
if AnimFrame=0 {specialtimes[0]=4 specialtimes[1]=3}
canbeGrabbed=0
MoveType=1 damage=0.2
sprite_index=spr_dastardly_attack5

//atkAddX=32 atkAddY=0 atkAddZ=0 selfatk.image_xscale=3.5*image_xscale selfatk.image_yscale=1
atkcol_set(38,0,4,3.55,1,117)

frame_set(0,0,0.25)
frame_set(1,1,0.25)
frame_set(2,2,0.25)
frame_set(3,3,0.25) if AnimFrame=4 PlaySound(snd_dastardly16)
if AnimFrame>4 specialtimes[0]+=0.25 if specialtimes[0]=12 specialtimes[0]=4 
frame_set(4,specialtimes[1],0.01)
if AnimFrame=clamp(AnimFrame,4,4.99){specialtimes[1]+=0.5 if specialtimes[1]=11 {PlaySound(snd_swing5) specialtimes[1]=3}
	
	atk=1 sentflying=2*image_xscale
} else { atk=0 sentflying=0}
frame_set(5,0,0.25)

frame_set(6,11,0.25)
frame_set(7,12,0.25)
if AnimFrame>6.5 canbeGrabbed=1

if AnimFrame>7.5 {atk=0 canmove=1}	
}

if anim=650 ///Cape Swing
{
if AnimFrame=0  PlaySound(choose(snd_dastardly20,snd_dastardly22))
atkcol_set(54,0,4,3.25,1,139)
//if AnimFrame=0  PlaySound(snd_twoheads3)
MoveType=1 damage=0.2
sprite_index=spr_dastardly_attack6
image_index=AnimFrame
atkAddX=32 atkAddY=0 atkAddZ=0 selfatk.image_xscale=3.5*image_xscale selfatk.image_yscale=1
frame_set(0,0,0.1)
frame_set(1,1,0.25)
frame_set(2,2,0.25)
frame_set(3,3,0.25)
frame_set(4,4,0.25) if AnimFrame=5
{
var bombV=-4;
repeat(3)
{
bomb=instance_create_depth(x+16*image_xscale,y,-1,oBomb) with bomb
{canHarm=1 harmEnemy=0 trigger=1 triggerTime=1 mask_index=mask_none} 
if bombV!=-4 bomb.BoomSnd=-1
bomb.spdX=6*image_xscale 
if bombV!=0 bomb.spdX=5*image_xscale 
bomb.ground=0 bomb.spdZ=-6 bomb.trigger=1 bomb.spdY=bombV/4;
bombV+=4;
}
}
frame_set(5,5,0.25)
if AnimFrame=clamp(AnimFrame,5,5.99){atk=1
} else { atk=0 }
frame_set(6,6,0.25)
frame_set(7,7,0.25)
frame_set(8,8,0.25)
frame_set(9,9,0.25)
frame_set(10,10,0.25)
frame_set(11,11,0.25)
if AnimFrame>11.5 {atk=0 canmove=1}
}

if anim=6500 ///Fist Rocket
{if AnimFrame=0 {PlaySound(choose(snd_dastardly17,snd_dastardly18)) specialtimes[0]=0}
//if AnimFrame=0  PlaySound(snd_twoheads3)
MoveType=1 damage=0.2
sprite_index=spr_dastardly_attack7
image_index=AnimFrame if specialtimes[0]<=9.5 specialtimes[0]+=0.25
atkAddX=32 atkAddY=0 atkAddZ=0 selfatk.image_xscale=3.5*image_xscale selfatk.image_yscale=1
frame_set(0,specialtimes[0],0.25)
frame_set(1,specialtimes[0],0.25)
frame_set(2,specialtimes[0],0.25)
if AnimFrame=3	///Fire
	{projectile_create(x+80*image_xscale,y,z-40,32,spr_dastardly_attack7p,4*image_xscale,mask_small,spr_hitflash,0.25,1,1,4,-4)
oControl.quakeFX=10 PlaySound(snd_shocked) specialtimes[0]=0
}
frame_set(3,10+specialtimes[0],0.05)
frame_set(4,10+specialtimes[0],0.5)
if AnimFrame>4.5 {atk=0 canmove=1}
}

if anim=65000 ///Laser Beam
{MoveType=3 damage=0.4 	HitForce=-4
	HitForceZ=-4
atkcol_set(193,0,34,9.85,1,22)
if AnimFrame=0 {specialtimes[0]=0 specialtimes[1]=0
	PlaySound(snd_dastardly19,snd_dastardly21)
	} if specialtimes[0]<=15.5 specialtimes[0]+=0.25
selfatk.spriteFX=spr_elecflash
selfatk.HitSound=snd_shocked
sprite_index=spr_dastardly_attack8
image_index=AnimFrame 
frame_set(0,specialtimes[0],0.1)
frame_set(1,specialtimes[0],0.1) if AnimFrame=2 {oControl.quakeFXTime=10 PlaySoundNoStack(snd_laserbeam)}
frame_set(2,10+specialtimes[1],0.02)
if AnimFrame=clamp(AnimFrame,2,3) {atk=1 specialtimes[1]+=0.25 if specialtimes[1]=2 specialtimes[1]=0} else atk=0
frame_set(3,12,0.25)
frame_set(4,13,0.25)
frame_set(5,14,0.25)
frame_set(6,15,0.25)
frame_set(7,0,0.25)
if AnimFrame>7.5 {atk=0 canmove=1}
}


///Intro
if anim=100
{
if AnimFrame=0 {sprite_index=spr_dastardly_seat
	PlaySound(snd_dastardly4)
	}

if specialanim=0
{image_xscale=1 shadowSpr=mask_none
AnimFrame+=0.01

if AnimFrame=2 image_index=1

if AnimFrame=2 PlaySound(snd_dastardly5)

if AnimFrame>=2 {image_index+=0.25 if image_index=4 image_index=2}

if AnimFrame>4 {PlaySound(snd_jump) AnimFrame=0 specialanim+=1 ground=0 zSpeed=-4 z=-3}
}
if specialanim=1 ///Hop
{sprite_index=spr_dastardly_move AnimFrame+=0.1 shadowSpr=spr_midshadow

y+=2 x+=3 if AnimFrame>0.5
if ground {oControl.quakeFXTime=10 PlaySound(snd_heavystep) sprite_index=spr_dastardly_attack5 image_index=12 AnimFrame=0 specialanim+=1}
}
if specialanim=2 ///part for powerup from the treasures
{image_xscale=-1 
AnimFrame+=0.01 if AnimFrame=0.05 PlaySound(snd_dastardly6)



if AnimFrame=5 {PlaySound(snd_dastardly7)}///Laugh
if AnimFrame<5 {
	
if AnimFrame<=2.5 {
	if sprite_index=spr_dastardly_intro1
image_index+=0.25 else
	image_index=0} else {if sprite_index!=spr_dastardly_attack4 {image_index=2 oControl.quakeFXTime=25 PlaySound(snd_shocked) PlaySound(snd_bigpowerup)} sprite_index=spr_dastardly_attack4 }
if sprite_index=spr_dastardly_attack4 {image_index+=0.25 if image_index>=4 image_index=2}	
		
	} else 
{sprite_index=spr_dastardly_laugh if AnimFrame<7.5 image_index+=0.25}
if AnimFrame>8 {canmove=1 AnimFrame=0 anim=0
	alarm[0]=2
	}
if AnimFrame<=0.05 {sprite_index=spr_dastardly_attack5 image_index=12}
if AnimFrame=0.05 sprite_index=spr_dastardly_intro1


}

}


///The Big Reveal
if anim=101
{
if specialanim=0
{
AnimFrame+=0.1 if AnimFrame>8 {AnimFrame=0 specialanim=1
	
	{specialtimes[6]=0 image_index=0 audio_stop_all() sentflying=0 hspeed=0 vspeed=0
	sprite_index=spr_dastardly_explode PlaySound(snd_explosion) oControl.quakeFXTime=10
	flashFX(x,y+1,0,spr_explosion,0,0.1,10,1,1,c_white,1) zSpeed=-2 ground=0 z=-2
	
	
	
	}
	}
}

if specialanim=1
{hspeed=0 vspeed=0
image_index=0
if ground {AnimFrame=0 specialtimes[6]=0 specialanim=2}
}
if specialanim=2
{ 
if AnimFrame=1 {
	PlaySound(snd_dastardly30)
	sprite_index=spr_dastardly_die hspeed=choose(-4,4) vspeed=choose(-1,1)}
AnimFrame+=0.01
if specialtimes[6]=0 {specialtimes[6]=10 
repeat(4){dust_make(x+choose(-random(64),random(64)),y+1,z-random(150),0,0,0) dustmk.sprite_index=spr_explosion3}} specialtimes[6]-=1

if AnimFrame>1 image_index+=0.25

if x>oControl.camX+320 {x-=4 hspeed=-4}
if x<oControl.camX {x+=4 hspeed=4}
if !place_free(x,y-3) {vspeed=2 y+=2}
if y>240 {y-=2 vspeed=-2}

if AnimFrame>4 {AnimFrame=0 specialanim=3
	PlaySound(snd_dastardly31)
	}
}
if specialanim=3
{sprite_index=spr_dastardly_explode hspeed=0 vspeed=0
	x=lerp(x,oControl.camX+160,0.1)
	y=lerp(y,200,0.1)
if specialtimes[6]=0 {specialtimes[6]=4
repeat(4){dust_make(x+choose(-random(64),random(64)),y+1,z-random(150),0,0,0) dustmk.sprite_index=spr_explosion3}} specialtimes[6]-=1

frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,2,0.1)
frame_set(3,3,0.1)
frame_set(4,4,0.1)
frame_set(5,5,0.1)
frame_set(6,6,0.01)
if AnimFrame>6.8
{
bigboom=instance_create_depth(0,0,-1,oCameoChar) with bigboom
{anim=9999
	
	y=6500
image_alpha=1.5
specialdraw=function()
{
if image_alpha>0 image_alpha-=0.025 else instance_destroy()

draw_set_alpha(image_alpha) draw_set_color(c_white)
draw_rectangle(__view_get( e__VW.XView, 0)-4,-666,__view_get( e__VW.XView, 0)+444,777,false)
draw_set_alpha(1)
}

}
instance_destroy()
}
}



}