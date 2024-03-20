enemy_endstep()
throw_step()


overwriteAttack=1
overwriteAttack2=1
overwriteAttack3=1
overwriteAttack4=1
overwriteJump=1

if bombRecharge!=0 bombRecharge-=1

if anim=10 ///Detect Attack
{
//if x>__view_get( e__VW.XView, 0 ) and x<__view_get( e__VW.XView, 0 )+320
{offScreen=0
if distance_to_object(targetEnemy)<70
{if distance_to_object(targetEnemy)<50
anim=11 else anim=12
}
else {
if distance_to_object(targetEnemy)<100
anim=choose(13,14) else anim=choose(1100,12,14)}
}

if anim=13 or anim=14 if bombRecharge!=0 anim=12

//else
//{offScreen=1 anim=2}
}

if anim=11 ///Slash Attack
{if animFrame=0 {PlaySound(choose(snd_seaweed7,snd_seaweed8))}
//if animFrame=0  PlaySound(snd_wolfita7)
atkcol_set(37,0,39,2.15,1,46)
canbeGrabbed=0 isCut=1
MoveType=1 damage=0.15
sprite_index=spr_seaweed_attack5
image_index=animFrame

//atkAddX=32 atkAddY=0 atkAddZ=0 selfatk.image_xscale=3.5*image_xscale selfatk.image_yscale=1

frame_set(0,0,0.1)
frame_set(1,1,0.25)

frame_set(2,2,0.25)
if animFrame=clamp(animFrame,2,2.99){atk=1 sentflying=4*image_xscale
} else {sentflying=0 atk=0}

frame_set(3,3,0.05)
frame_set(4,1,0.5)
if animFrame>3.5 canbeGrabbed=1

if animFrame>4.5 {atk=0 canmove=1}
}

if anim=1100 ////64,60
{if animFrame=0 {specialcheck4=0 PlaySound(snd_seaweed3)} sprite_index=spr_seaweed_attack1
frame_set(0,0,0.25) damage=0.1 MoveType=1
frame_set(1,1,0.25) if animFrame=2 {PlaySoundNoStack(snd_explosion2) projectile_create(x+64*image_xscale,y,-60,24,spr_seaweed_flame,4*image_xscale,mask_small,spr_explosion3,0.15,5,5,-4,-4)}
frame_set(2,2,0.2)
frame_set(3,3,0.1)
frame_set(4,4,0.2) if animFrame=5 {PlaySoundNoStack(snd_explosion2) projectile_create(x+64*image_xscale,y,-60,24,spr_seaweed_flame,4*image_xscale,mask_small,spr_explosion3,0.15,5,5,-4,-4)}
frame_set(5,5,0.2)
frame_set(6,6,0.1) if animFrame=clamp(animFrame,2,3) or animFrame=clamp(animFrame,5,6) {atk=1} else {sentflying=0 atk=0}
frame_set(7,4,0.1) if animFrame>7-0.2 {if specialcheck4!=2 {animFrame=2 specialcheck4+=1}}
frame_set(8,1,0.1)
frame_set(9,0,0.1)
if animFrame>9.5 canmove=1
}

if anim=12 
{sprite_index=spr_seaweed_attack2 damage=0.2
	if animFrame=0 {specialtimes[0]=0 PlaySound(snd_seaweed7)}
frame_set(0,0,0.1) damage=0.15 MoveType=1
frame_set(1,1,0.1) specialtimes[0]+=0.25 if specialtimes[0]=2 specialtimes[0]=0
frame_set(2,2+specialtimes[0],0.05)
frame_set(3,0,0.1) if animFrame=clamp(animFrame,2,3) {sentflying=8*image_xscale atk=1} else {sentflying=0 atk=0}
if animFrame>3.5 canmove=1
}

if anim=13
{bombRecharge=choose(200,220,240,260)
if animFrame=0 {specialcheck4=0 PlaySound(choose(snd_seaweed2,snd_seaweed8))} sprite_index=spr_seaweed_attack3
frame_set(0,0,0.1)
frame_set(1,1,0.1) if animFrame=2 
{//projectile_create(x+48*image_xscale,y+1,z-32,32,spr_seaweed_curse,4*image_xscale,mask_small,spr_hitflash,0.1,2,591000,0,0)

bone=instance_create_depth(x+48*image_xscale,y+1,-1,oBossHazard) bone.hitSource=self.id bone.height=30
bone.z=z-32 bone.hspeed=4*image_xscale with bone
{
selfscript = function()
{MoveType=591002 damage=0.1
sprite_index=spr_seaweed_curse image_index+=0.25
atk=1
}

hitscript = function() {instance_destroy()}
}


}
frame_set(2,2,0.25)
frame_set(3,3,0.25)  
frame_set(4,2,0.25) if animFrame>4-0.25 {if specialcheck4!=8 {animFrame=2.25 specialcheck4+=1}}
frame_set(5,1,0.1)
if animFrame>5.5 canmove=1
}

if anim=14
{sprite_index=spr_seaweed_attack4 bombRecharge=choose(200,220,240,260)
	if animFrame=0 PlaySound(choose(snd_seaweed7,snd_seaweed8,snd_seaweed5))
frame_set(0,0,0.1) damage=0.15 MoveType=1
frame_set(1,1,0.1)
frame_set(2,2,0.1) if animFrame=3
{
bone=instance_create_depth(targetEnemy.x,targetEnemy.y,-1,oBossHazard)
bone.hitSource=self.id 

with bone{
	sprite_index=spr_seaweed_column
	
selfscript = function()
{MoveType=1 damage=0.1
depth=6666
frame_set(0,0,0.2)
frame_set(1,1,0.2)
frame_set(2,2,0.1)
if animFrame>2.7 {oControl.quakeFXTime=10 PlaySound(snd_explosion)
	exx=instance_create_depth(x,y,-1,oExplosion)
	with exx {harmEnemy=0}
	
	instance_destroy()
	
	
}
}
}

}
frame_set(3,3,0.5) 
frame_set(4,4,0.1)
frame_set(5,5,0.1)
frame_set(6,6,0.1)
if animFrame>6.5 canmove=1
}

///Intro
if anim=100
{sprite_index=spr_seaweed_intro
	if animFrame=0 {specialtimes[0]=0 specialtimes[1]=0}
specialtimes[1]+=0.25 if specialtimes[1]=2 specialtimes[1]=0
if specialtimes[1]<1.5 specialtimes[0]=0 else specialtimes[0]=1

frame_set(0,0+specialtimes[0],0.01)
frame_set(1,2,0.1)
frame_set(2,3,0.1)
frame_set(3,4,0.1)
frame_set(4,5,0.1)
frame_set(5,6,0.1)
frame_set(6,7,0.1)
frame_set(7,8,0.05) if animFrame=8 {image_xscale=-1 PlaySound(snd_seaweed1)}
frame_set(8,9,0.1)
frame_set(9,10,0.01) if animFrame=10 {
squidgo=instance_create_depth(x-58*image_xscale,y+1,-1,oOctopus) with squidgo
{sprite_index=spr_octopus_tiny z=-59-8 lockPos=0 dead=1 hp=0 canmove=0 anim=9999 zSpeed-=4 animFrame=3 ground=0 PlaySound(snd_hop1)

}

}
frame_set(10,11,0.01)
if animFrame<10.8 {z=-16 shadowSpr=mask_none} else shadowSpr=spr_shadow
if animFrame=10.8
{
ground=0 z=-4 zSpeed=-8 animFrame=13 image_index=12
}
if animFrame>10.8 {if ground=0 {y+=1 image_index=12 animFrame=13 } else if animFrame=13
animFrame=14
}

frame_set(14,13,0.25)
frame_set(15,14,0.25)
if animFrame>15.5 canmove=1

}