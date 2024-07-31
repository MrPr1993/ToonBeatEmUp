enemy_endstep()
throw_step()

overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1
overwriteAttack3=1
overwriteAttack4=1
overwriteAttack5=1


if bombRecharge!=0 bombRecharge-=1


if anim=10
{specialcheck0=0
if distance_to_point(targetX,targetY)<60
{anim=11} else anim=14

if anim=14 if current_pal=2 anim=12

if anim=12 if current_pal=6 if bombRecharge=0 anim=14 else {anim=0 canmove=1}

if anim=12 if current_pal=10 {if bombRecharge=0 anim=14
	else anim=12
	}

bombRecharge=choose(320,340,360,380,400)
}

if anim=11 ///Attack Stand
{ hit=0  
if AnimFrame=0 specialcheck0=1
atkcol_set(32,0,36,1.15,1,40)
sprite_index=spr_nurse_attack MoveType=0 damage=0.05
selfatk.HitForce=-2
frame_set(0,0,0.1) if AnimFrame=clamp(AnimFrame,1,2) {sentflying=8*image_xscale atk=1} else atk=0
frame_set(1,1,0.5)
frame_set(2,2,0.05)
frame_set(3,0,0.1)
if AnimFrame>3.5 {if specialcheck0=0 canmove=1 else {AnimFrame=0 anim=14
	
	if anim=14 
	{
		if current_pal=2 anim=12
		if current_pal=6 {anim=0 canmove=1}
		if current_pal=10 anim=12
	}
	}}
}

///Needle
if anim=12
{sprite_index=spr_nurse_throwneedle
frame_set(0,0,0.25)
frame_set(1,1,0.25)
frame_set(2,2,0.25)
frame_set(3,3,0.25)
frame_set(4,4,0.1) if AnimFrame=5
{PlaySoundNoStack(snd_swing5)
projectile_create(x+10*image_xscale,y+2,z-50,32,spr_nurse_needle,6*image_xscale,mask_small,spr_blood4,0.15,1,1,-1,-1)
}
frame_set(5,5,0.5)
frame_set(6,5,0.25)
if AnimFrame>6.5 canmove=1
}


if anim=14 ///Item Throw Attack
{ hit=0  
sprite_index=spr_nurse_throwitem MoveType=0 damage=0.1
image_index=AnimFrame image_speed=0

if AnimFrame=3
{bomb=instance_create_depth(x+30*image_xscale,y,depth,oChemicalBomb) bomb.z=z-70 PlaySoundNoStack(snd_swing)
bomb.spdX=(1*(point_distance(x,0,targetX,0)/48)/2)*image_xscale
if image_xscale=1 
bomb.spdX=clamp(bomb.spdX,1.5,9999)
else
bomb.spdX=clamp(bomb.spdX,-9999,-1.5)
bomb.ground=0 
bomb.weapon_pal=current_pal bomb.my_pal_sprite=my_pal_sprite
bomb.spdZ=-1*(point_distance(x,0,targetX,0)/32)
bomb.harmEnemy=0
bomb.trigger=1

if current_pal=10 {bombRecharge=300+choose(320,340,360,380,400)
	with bomb
{
destroyscript=function()
{
ex=instance_create_depth(x,y,depth,oAcidPuddle) ex.z=z ex.depth=depth

PlaySound(snd_break)

instance_destroy()

}}

if current_pal=6 {bombRecharge=300+choose(320,340,360,380,400)
	with bomb
{
destroyscript=function()
{
	flashFX(x,y,z,spr_smokemid,0,0.25,20,1,1,c_white,1)
sm=instance_create_depth(x+32*image_xscale,y+1,0,oPharaohSmoke) sm.hspeed=1*image_xscale
		sm.z=z-16 sm.dizzyHit=1 sm.MoveType=0 sm.isPharaoh=0
		sm.sprite_index=spr_bigsmoke sm.mainSmoke=spr_bigsmoke
	
	
PlaySound(snd_break)

instance_destroy()

}}
}


}

}

atk=0
if AnimFrame=clamp(AnimFrame,0,1.5)
AnimFrame+=0.2 else AnimFrame+=0.1 if AnimFrame>4.5 {hurt=0 atk=0 canmove=1 hit=0


}}