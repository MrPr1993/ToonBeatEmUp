enemy_endstep()
throw_step()

if hp<1
{my_pal_sprite=spr_dastardlyskin
current_pal=round(20-20*(hp/1))
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
	anim=choose(12) else anim=choose(13,14,65,650,6500,65000)
}
	else
	anim=11
}


if anim=11
{
//if animFrame=0  PlaySound(snd_twoheads3)
MoveType=1 damage=0.2
sprite_index=spr_dastardly_attack1
image_index=animFrame
atkAddX=32 atkAddY=0 atkAddZ=0 selfatk.image_xscale=3.5*image_xscale selfatk.image_yscale=1
frame_set(0,0,0.1)
frame_set(1,1,0.25)
frame_set(2,2,0.25)
if animFrame=clamp(animFrame,2,2.99){atk=1
} else { atk=0 }
frame_set(3,3,0.05)
frame_set(4,0,0.5)
if animFrame>4.5 {atk=0 canmove=1}
}

if anim=12 ///Air Kick
{
if animFrame=0 {specialtimes[0]=0}
damage=0.2 MoveType=1
sprite_index=spr_duck_attack2
sentflying=lerp(sentflying,0,0.1)
frame_set(0,0,0.1) if animFrame=1
{ground=0 z-=4 spdZ=-8 sentflying=3*image_xscale
} if specialtimes[0]<6 specialtimes[0]+=0.25
frame_set(1,1+specialtimes[0]=0,0.1) if animFrame=clamp(animFrame,1,1.99) {atk=1 z-=16} else atk=0
frame_set(2,1+specialtimes[0]=0,0.2)
frame_set(3,1+specialtimes[0]=0,0.25)
frame_set(4,0,0.25) if animFrame>4 if ground canmove=1
frame_set(5,0,0.25)
}

if anim=13 ///Air Kick
{
//if animFrame=0  {PlaySound(choose(snd_twoheads10,snd_twoheads3,snd_twoheads11))}
damage=0.2 
atkcol_set(29,0,-9,1.75,1,64)
if animFrame<1 {atk=0 sprite_index=spr_dastardly_attack3 image_index=2 animFrame+=0.1}
else if !ground {sprite_index=spr_dastardly_attack3 animFrame+=0.1 if animFrame>3 {sprite_index=spr_dastardly_attack3
	if animFrame>3 {atk=1 image_index=1 sentflying=8*image_xscale zSpeed=8} else {atk=0 image_index=0 sentflying=0 zSpeed=0} }}
else {atk=0 sprite_index=spr_dastardly_attack3 image_index=2 sentflying=lerp(sentflying,0,0.1)
	animFrame+=0.1 if animFrame>8 canmove=1
	}

if animFrame=1 {ground=0 zSpeed=-16 sentflying=-4*image_xscale}

}

if anim=14 ///Rapid Fists
{
//if animFrame=0  PlaySound(snd_wolfita7)
if animFrame=0 {specialtimes[0]=0}
canbeGrabbed=0
MoveType=1 damage=0.2
sprite_index=spr_dastardly_attack4

//atkAddX=32 atkAddY=0 atkAddZ=0 selfatk.image_xscale=3.5*image_xscale selfatk.image_yscale=1
	atkcol_set(48,0,3,2.5,1,96)
	
frame_set(0,0,0.5)
frame_set(1,0,0.5)
frame_set(2,1,0.5)
frame_set(3,1,0.5) if animFrame=4 PlaySound(choose(snd_martianb4,snd_martianb5))
frame_set(4,2+specialtimes[0],0.01)

if animFrame=clamp(animFrame,4,4.99){
	if !audio_is_playing(snd_swing5) PlaySound(snd_swing5)
	atk=1 sentflying=2*image_xscale specialtimes[0]+=0.5 if specialtimes[0]=2 specialtimes[0]=0
} else { atk=0 sentflying=0}
frame_set(5,1,0.05)
frame_set(6,1,0.5)
frame_set(7,0,0.5)
if animFrame>6.5 canbeGrabbed=1

if animFrame>7.5 {atk=0 canmove=1}	
}

if anim=65 ///Spin Kick
{
//if animFrame=0  PlaySound(snd_wolfita7)
if animFrame=0 {specialtimes[0]=0}
canbeGrabbed=0
MoveType=1 damage=0.2
sprite_index=spr_dastardly_attack5

//atkAddX=32 atkAddY=0 atkAddZ=0 selfatk.image_xscale=3.5*image_xscale selfatk.image_yscale=1
	atkcol_set(48,0,3,2.5,1,96)
	
frame_set(0,0,1)
frame_set(1,0,1)
frame_set(2,0,1)
frame_set(3,0,1) if animFrame=4 PlaySound(choose(snd_martianb4,snd_martianb5))
frame_set(4,1+specialtimes[0],0.01)

if animFrame=clamp(animFrame,4,4.99){
	if !audio_is_playing(snd_swing5) PlaySound(snd_swing5)
	atk=1 sentflying=1*image_xscale specialtimes[0]+=0.5 if specialtimes[0]=6 specialtimes[0]=0
} else { atk=0 sentflying=0}
frame_set(5,0,0.1)
if animFrame>4 specialtimes[0]+=0.25 if specialtimes[0]=9 specialtimes[0]=0 
frame_set(6,0,1)
frame_set(7,0,1)
if animFrame>6.5 canbeGrabbed=1

if animFrame>7.5 {atk=0 canmove=1}	
}

if anim=650 ///Cape Swing
{
//if animFrame=0  PlaySound(snd_twoheads3)
MoveType=1 damage=0.2
sprite_index=spr_dastardly_attack6
image_index=animFrame
atkAddX=32 atkAddY=0 atkAddZ=0 selfatk.image_xscale=3.5*image_xscale selfatk.image_yscale=1
frame_set(0,0,0.1)
frame_set(1,1,0.25)
frame_set(2,2,0.25)
if animFrame=clamp(animFrame,2,2.99){atk=1
} else { atk=0 }
frame_set(3,3,0.05)
frame_set(4,0,0.5)
if animFrame>4.5 {atk=0 canmove=1}
}

if anim=6500 ///Fist Rocket
{
//if animFrame=0  PlaySound(snd_twoheads3)
MoveType=1 damage=0.2
sprite_index=spr_dastardly_attack7
image_index=animFrame
atkAddX=32 atkAddY=0 atkAddZ=0 selfatk.image_xscale=3.5*image_xscale selfatk.image_yscale=1
frame_set(0,0,0.1)
frame_set(1,1,0.05)
frame_set(2,2,0.25)
if animFrame=clamp(animFrame,2,2.99){
	///Fire
	{projectile_create(x+66,y,z-61,32,spr_martianb_proj,4*image_xscale,mask_small,spr_hitflash,0.25,1,1,4,-4)
oControl.quakeFX=10 PlaySound(snd_explosion)
}
} else { atk=0 }
frame_set(3,3,0.05)
frame_set(4,0,0.5)
if animFrame>4.5 {atk=0 canmove=1}
}

if anim=65000 ///Laser Beam
{
if animFrame=0 {specialtimes[0]=0}
//if animFrame=0  PlaySound(snd_twoheads3)
MoveType=8 damage=0.4
sprite_index=spr_dastardly_attack8
image_index=animFrame
atkAddX=32 atkAddY=0 atkAddZ=0 selfatk.image_xscale=3.5*image_xscale selfatk.image_yscale=1
frame_set(0,0,0.1)
frame_set(1,1,0.25)
frame_set(2,2,0.25) specialtimes[0]+=0.25 if specialtimes[0]=1.75 specialtimes[0]=0
frame_set(3,3+specialtimes[0],0.005)
if animFrame=clamp(animFrame,3,3.99){atk=1
} else { atk=0 }
frame_set(4,4,0.05)
frame_set(5,0,0.5)
if animFrame>5.5 {atk=0 canmove=1}
}


///Intro
if anim=100
{
if animFrame=0 sprite_index=spr_dastardly_seat

if specialanim=0
{image_xscale=1 shadowSpr=mask_none
animFrame+=0.01

if animFrame>4 {animFrame=0 specialanim+=1 ground=0 zSpeed=-4 z=-3}
}
if specialanim=1 ///Hop
{sprite_index=spr_dastardly_move animFrame+=0.1 shadowSpr=spr_shadow

y+=2 x+=3 if animFrame>0.5
if ground {animFrame=0 specialanim+=1}
}
if specialanim=2 ///part for powerup from the treasures
{image_xscale=-1
sprite_index=spr_dastardly_stand
animFrame+=0.01
if animFrame=5 {}///Laugh
if animFrame<5 {image_index=0} else {sprite_index=spr_dastardly_laugh if animFrame<10 image_index+=0.25}
if animFrame>12 {canmove=1 animFrame=0}
}

}

///The Big Reveal
if anim=101
{
if specialanim=0
{
animFrame+=0.1 if animFrame>8 {animFrame=0 specialanim=1
	
	{specialtimes[6]=0 image_index=0
	sprite_index=spr_dastardly_explode PlaySound(snd_explosion) oControl.quakeFXTime=10
	flashFX(x,y+1,0,spr_explosion,0,0.1,10,1,1,c_white,1) zSpeed=-2 ground=0 z=-2
	}
	}
}

if specialanim=1
{
image_index=0
if ground {animFrame=0 specialtimes[6]=0 specialanim=2}
}
if specialanim=2
{ 
if animFrame=1 {sprite_index=spr_dastardly_die hspeed=choose(-4,4) vspeed=choose(-1,1)}
animFrame+=0.01
if specialtimes[6]=0 {specialtimes[6]=10 
repeat(4){dust_make(x+choose(-random(64),random(64)),y+1,z-random(150),0,0,0) dustmk.sprite_index=spr_explosion3}} specialtimes[6]-=1

if animFrame>1 image_index+=0.25

if x>oControl.camX+320 {x-=4 hspeed=-4}
if x<oControl.camX {x+=4 hspeed=4}
if !place_free(x,y-3) {vspeed=2 y+=2}
if y>240 {y-=2 vspeed=-2}

if animFrame>4 {animFrame=0 specialanim=3}
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
if animFrame>6.8
{
bigboom=instance_create_depth(0,0,-1,oCameoChar) with bigboom
{anim=9999
	
	y=6000
image_alpha=1.5
specialdraw=function()
{
if image_alpha>0 image_alpha-=0.01 else instance_destroy()

draw_set_alpha(image_alpha) draw_set_color(c_white)
draw_rectangle(__view_get( e__VW.XView, 0)-4,-666,__view_get( e__VW.XView, 0)+444,777,false)
draw_set_alpha(1)
}

}
instance_destroy()
}
}



}