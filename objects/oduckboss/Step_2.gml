enemy_endstep()
throw_step()

if hp=0 if !ground {x=clamp(x,oControl.camX+32,oControl.camX+320-32)}

if fakeduckbuffer!=0 fakeduckbuffer-=1;

if runCharge!=0 runCharge-=1

if anim=10
{offScreen=0 AnimFrame=0
if distance_to_point(targetEnemy.x,targetEnemy.y)<70
anim=choose(11)
else
{
if distance_to_point(targetEnemy.x,targetEnemy.y)<100
anim=choose(12,13,14,6501) else anim=choose(13,14,6501)

if anim=6501 if fakeduckbuffer=0
{fakeduckbuffer=360
anim=6500 {}
} else anim=choose(13,14)

if anim=12 or anim=13 if runCharge!=0 {anim=14 runCharge=choose(320,340,360)}
}
}

///Fake Ducks
if anim=6500
{recoveryThrow=2
//160
if AnimFrame=0
{sprite_index=spr_duck_attack4 image_index=0
}
AnimFrame+=0.1
if AnimFrame=1
{PlaySound(snd_duck4) var choosepos=choose(1,2,3,4) AnimFrame=2
duck1=instance_create_depth(0,0,-1,oFakeDuck)
duck2=instance_create_depth(0,0,-1,oFakeDuck)
duck3=instance_create_depth(0,0,-1,oFakeDuck)

switch(choosepos)
{
case 1:
x=oControl.camX+64 y=oControl.wallY+16
duck1.x=oControl.camX+320-64 duck1.y=oControl.wallY+16
duck2.x=oControl.camX+64 duck2.y=oControl.wallY+64
duck3.x=oControl.camX+320-64 duck3.y=oControl.wallY+64
break;	
case 2:
x=oControl.camX+320-64 y=oControl.wallY+16
duck1.x=oControl.camX+64 duck1.y=oControl.wallY+16
duck2.x=oControl.camX+64 duck2.y=oControl.wallY+64
duck3.x=oControl.camX+320-64 duck3.y=oControl.wallY+64
break;
case 3:
x=oControl.camX+64 y=oControl.wallY+64
duck1.x=oControl.camX+320-64 duck1.y=oControl.wallY+16
duck2.x=oControl.camX+64 duck2.y=oControl.wallY+16
duck3.x=oControl.camX+320-64 duck3.y=oControl.wallY+64
break;
case 4:
x=oControl.camX+320-64 y=oControl.wallY+64
duck1.x=oControl.camX+320-64 duck1.y=oControl.wallY+16
duck2.x=oControl.camX+64 duck2.y=oControl.wallY+64
duck3.x=oControl.camX+64 duck3.y=oControl.wallY+16
break;
}

///pose pick
var choosepos2=choose(1,2,3,4,5,6)
switch(choosepos2)
{
case 0: sprite_index=spr_duck_attack1 image_index=0 break;
case 1: sprite_index=spr_duck_attack3 image_index=0 break;
case 2: sprite_index=spr_duck_attack1 image_index=2 break;
case 3: sprite_index=spr_duck_charge image_index=0 break;
case 4: sprite_index=spr_duck_inflate image_index=0 break;
case 5: sprite_index=spr_duck_intro image_index=9 break;
case 6: sprite_index=spr_duck_move image_index=2 break;
}



with oFakeDuck {if x>oControl.camX+160 image_xscale=-1 else image_xscale=1 flashFX(x,y+1,z-64,spr_confetti,0,0.25,30,1,1,c_white,1)}
if x>oControl.camX+160 image_xscale=-1 else image_xscale=1
flashFX(x,y+1,z-64,spr_confetti,0,0.25,30,1,1,c_white,1)
}

if AnimFrame>=1
if instance_number(oFakeDuck)<3 {AnimFrame=0 anim=6502}
}

////Got You!
if anim=6502
{
sprite_index=spr_duck_attack3
frame_set(0,0,0.25)
frame_set(1,1,0.05)
if AnimFrame>=0.7 {canmove=1 anim=0 atk=0}
}

///Shoryuken
if anim=11
{damage=0.2 MoveType=1 
sprite_index=spr_duck_attack2
sentflying=lerp(sentflying,0,0.1)
frame_set(0,0,0.1) if AnimFrame=1
{ground=0 z-=4 spdZ=-8 sentflying=3*image_xscale
	PlaySound(snd_duck10)
}
frame_set(1,1,0.1) if AnimFrame=clamp(AnimFrame,1,1.99) {atk=1 z-=16} else atk=0
frame_set(2,2,0.2)
frame_set(3,3,0.25)
frame_set(4,4,0.25) if AnimFrame>4 if ground canmove=1
frame_set(5,5,0.25)
}

///Charge!
if anim=12 
{if AnimFrame=0 { specialtimes[4]=0} damage=0.25 MoveType=4
sprite_index=spr_duck_charge
frame_set(0,0,0.25) if AnimFrame=1 PlaySound(snd_duck3)
frame_set(1,1,0.05) 
frame_set(2,2,0.25)
frame_set(3,3,0.25)
frame_set(4,4,0.25) specialtimes[4]+=1
if AnimFrame=5 if specialtimes[4]<160 {PlaySoundNoStack(snd_heavystep) AnimFrame=2}

if AnimFrame=clamp(AnimFrame,2,4.9) {atk=1
	sentflying=8*image_xscale oControl.quakeFXTime=10
	dust_make(x,y+1,z,-2*image_xscale,0,0)

if x!=clamp(x,oControl.camX-48-sprite_get_width(mask_index)/2,oControl.camX+48+320+sprite_get_width(mask_index)/2)
{y=targetY
image_xscale=-image_xscale x+=16*image_xscale
}

	} else {atk=0 sentflying=lerp(sentflying,0,0.1)}
frame_set(5,0,0.1)
if AnimFrame>5 canmove=1
} else specialtimes[4]=0

///Ranged Attack
if anim=13
{sprite_index=spr_duck_attack1
	
	//if AnimFrame=0 PlaySoundNoStack(snd_fzombie3)
frame_set(0,0,0.1) if AnimFrame=1 {PlaySound(choose(snd_duck5,snd_duck9,snd_duck8))}
if AnimFrame=11111
{
	bub=instance_create_depth(x+32*image_xscale,y,depth,oFlashFX)
	bub.z=z-64
	bub.sprite_index=spr_siren_proj1
	bub.image_index=0.1 bub.animEnd=0
	bub.image_speed=0.25
	bub.alarm[0]=9999999
	bub.image_xscale=1
	bub.image_yscale=1
}
frame_set(1,1,0.2)
frame_set(2,2,0.5)
frame_set(3,2,0.5)
frame_set(4,2,0.5)
frame_set(5,2,0.5)
frame_set(6,2,0.5)
frame_set(7,2,0.5)
frame_set(8,2,0.5)
frame_set(9,2,0.5)
frame_set(10,1,0.25) if AnimFrame=11
{//with bub instance_destroy() bub=-1
PlaySound(snd_gun)
card=instance_create_depth(x+64*image_xscale,y+1,depth,oNinjaBunCard) card.hspeed=4*image_xscale
card.sprite_index=spr_duck_quack card.mask_index=spr_shadow2
card.z=z-48 card.image_xscale=1 card.disappearHit=0 card.damage=0.1

flashFX(x+27*image_xscale,y+1,z-50,spr_confetti2,0,0.25,20,1,1,c_white,1)
}
frame_set(11,3,0.25)
frame_set(12,4,0.25)
frame_set(13,4,0.25)
frame_set(14,4,0.05)
frame_set(15,0,0.25)

if AnimFrame>15.75 {canmove=1 atk=0}
}

if anim=14 ///Charged Punch
{atkcol_set(46,0,38,2.85,1,39)
		if AnimFrame=0 {specialtimes[0]=0 specialtimes[1]=0  
			specialtimes[2]=0
			

			
			}
sprite_index=spr_duck_attack4 selfatk.dizzyAtk=1 MoveType=1 damage=0.2 
frame_set(0,0,0.1)
frame_set(1,1,0.25)
if AnimFrame=0.9 {PlaySoundNoStack(snd_carengine2)
		if targetEnemy.y!=clamp(targetEnemy.y,y-8,y+8)
		{if targetEnemy.y>y specialtimes[2]=1 else specialtimes[2]=-1}
	}
if AnimFrame<3 {
	if image_xscale=1 and targetEnemy.x>x+specialtimes[1] specialtimes[1]+=8
	if image_xscale=-1 and targetEnemy.x<x-specialtimes[1] specialtimes[1]+=8	
	}
frame_set(2,2,0.25) if AnimFrame=2.75 if specialtimes[0]!=4 {specialtimes[0]+=1 AnimFrame=1
	dust_make(x,y+1,z-4,-0.5*image_xscale,0,0)
	}if AnimFrame=3 {PlaySoundNoStack(snd_carengine3)

		
		}
frame_set(3,4,0.1) if AnimFrame=clamp(AnimFrame,3,3.9) {
		dust_make(x,y+1,z-4,-1*image_xscale,0,0)
	sentflying=8*image_xscale atk=1
	
	if specialtimes[2]!=0
	{
	if specialtimes[2]=-1 {if place_free(x,y-4) y-=4} else y+=4*specialtimes[2]
	y=clamp(y,0,oControl.camY+240)
	}
	
	
	specialtimes[1]-=8 if specialtimes[1]>0 AnimFrame=3.1 else AnimFrame=4
	} else {atk=0 sentflying=0}
frame_set(4,4,0.05)
frame_set(5,3,0.1)
if AnimFrame>5.5 canmove=1
}

///Intro
if anim=100
{sprite_index=spr_duck_intro
if AnimFrame=0 {specialtimes[0]=0}	

if AnimFrame<1.1
if z!=0 AnimFrame=0.5 else if AnimFrame=0.5 and ground {AnimFrame=1}

specialtimes[0]+=0.25 if specialtimes[0]>=1.9 specialtimes[0]=0
frame_set(0,0,0.25) if AnimFrame=1 {AnimFrame=1 PlaySound(snd_hitgroundmetal) oControl.quakeFXTime=10}
frame_set(1,1,0.25)
frame_set(2,2,0.01)
frame_set(3,3,0.1)
frame_set(4,4,0.5) if AnimFrame=5
{ground=0 zSpeed=-4 PlaySound(snd_duck5) PlaySound(snd_explosion)
	flashFX(x,y+1,z-75,spr_confetti,0,0.25,20,1,1,c_white,1)
	}
frame_set(5,5+specialtimes[0],0.01)
frame_set(6,7,0.25)
frame_set(7,8,0.25) if AnimFrame=8 PlaySound(snd_duck2)
frame_set(8,9,0.01)
frame_set(9,7,0.25)
if AnimFrame>9.70 {canmove=1 anim=0}
}
