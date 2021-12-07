enemy_endstep()

if bombRecharge!=0 bombRecharge-=1

if weaponspr!=-1
{
StandSpr=spr_sneak_gunstand
MoveSpr=spr_sneak_gunmove
RunSpr=spr_sneak_gunmove
}
else
{
StandSpr=spr_sneak_stand
MoveSpr=spr_sneak_move
RunSpr=spr_sneak_move
}

if anim=0
{
if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,-3,-39,0*image_xscale,weaponcolor)
if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,-3,-39+2,0*image_xscale,weaponcolor)
if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,-3,-39+1,0*image_xscale,weaponcolor)
}
if anim=1
{
if image_index=clamp(image_index,0,0.9) or image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,weaponIndex,-3,-39+7,0*image_xscale,weaponcolor)
if image_index=clamp(image_index,1,1.9) or image_index=clamp(image_index,4,4.9)
weaponanim(weaponspr,weaponIndex,-3,-39+1,0*image_xscale,weaponcolor)
if image_index=clamp(image_index,2,2.9) or image_index=clamp(image_index,5,5.9)
weaponanim(weaponspr,weaponIndex,-3,-39+3,0*image_xscale,weaponcolor)
}

special1-=1
if special1<0 {special0=0 rangeAtk=320}

if anim=10 ///Check Moves
{
	
if weaponspr!=-1
{
anim=810
}
else
{
if (y=clamp(y,targetY-8,targetY+8) and distance_to_point(targetX,targetY)<120)
{
if distance_to_point(targetX,targetY)<60
anim=11 
else
{
if current_pal=1///Explosive
anim=14
else
anim=12///Slide
}
}
else
{rangeAtk=160
animFrame=0
if special0=0 and bombRecharge=0 and instance_number(oBomb)<3 {bombRecharge=choose(320,400,480,560) special0=1 anim=14 special1=320} else anim=12
}
}
}

if anim=11 ///Attack Stand
{ hit=0  
atkcol_set(35,0,42,1.85,1,22)
sprite_index=AtkSpr MoveType=1 damage=0.2
image_index=animFrame image_speed=0 if animFrame=2 {PlaySoundNoStack(snd_swing) PlaySoundNoStack(snd_enemy1)}
 if animFrame=clamp(animFrame,2,2.2) atk=1 else atk=0 if animFrame==clamp(animFrame,2,2.2) sentflying=4*image_xscale else sentflying=0
if animFrame=clamp(animFrame,0,1.5)
animFrame+=0.1 else animFrame+=0.1 if animFrame>3.5 {hurt=0 atk=0 canmove=1 hit=0
}}

if anim=12 ///Attack Slide
{hit=0  if animFrame=2 {PlaySoundNoStack(snd_swing2) PlaySoundNoStack(snd_enemy1)}
sprite_index=AtkSpr2 MoveType=1 damage=0.15
image_index=animFrame image_speed=0

selfatk.height=4

frame_set(0,0,0.25)
frame_set(1,1,0.1)
frame_set(2,2,0.1)
frame_set(3,3,0.1)
frame_set(4,3,0.1)
frame_set(5,3,0.1)
frame_set(6,2,0.1)

if animFrame=clamp(animFrame,3,6) 
{atk=1 canbeGrabbed=0

if animFrame=clamp(animFrame,3,4) 
if place_free(x+4*image_xscale,y) x+=4*image_xscale
if animFrame=clamp(animFrame,4.1,5) 
if place_free(x+2*image_xscale,y) x+=4*image_xscale
if animFrame=clamp(animFrame,5.1,6) 
if place_free(x+1*image_xscale,y) x+=2*image_xscale

} else atk=0

if animFrame>6.8 {canmove=1 anim=0 animFrame=0 alarm[1]=120}
}
else
{canbeGrabbed=1 selfatk.height=64}


if instance_exists(targetEnemy)
{
if 
(
(image_xscale=-1 and targetEnemy.image_xscale=-1 and targetEnemy.x<x and targetEnemy.ground)
or (image_xscale=1 and targetEnemy.image_xscale=1 and targetEnemy.x>x and targetEnemy.ground)
)
{
///Attempt to grab player
if distance_to_object(targetEnemy)<80 and grabTest=1
{canGrab=1 targetX=targetEnemy.x targetY=targetEnemy.y
if hurt=0 and canmove=1 and targetEnemy.ignore=0 and targetEnemy.dead=0
{
{if image_xscale=-1 {anim=1 key_left=-1 key_right=0} else {anim=1 key_right=1 key_left=0}}
anim=1
if y!=clamp(y,targetY-rangeY,targetY+rangeY)
if y!=clamp(y,targetY,targetY)
{if y>targetY {key_up=0 key_down=0} else {key_down=0 key_up=0}}
else {key_up=0 key_down=0}

///Grab Enemy
if (image_xscale=1 and key_right and dashing=0 and place_meeting(x+16,y,targetEnemy))
or (image_xscale=-1 and -key_left and dashing=0 and place_meeting(x-16,y,targetEnemy))
or (image_xscale=-1 and key_down and dashing=0 and place_meeting(x-16,y,targetEnemy))
or (image_xscale=-1 and key_up and dashing=0 and place_meeting(x-16,y,targetEnemy))
or (image_xscale=1 and key_down and dashing=0 and place_meeting(x+16,y,targetEnemy))
or (image_xscale=1 and key_up and dashing=0 and place_meeting(x+16,y,targetEnemy))
{if ground and canmove=1
{
throw_command(targetEnemy,24*image_xscale,0,0,GrabFrame,30,1)
}
}
}
}
else
{if alarm[1]=0 alarm[1]=2 canGrab=0 enemy_ai() image_blend=c_white }
}
else
{if alarm[1]=0 alarm[1]=2 canGrab=0 enemy_ai() image_blend=c_white }

if anim=14 ///Item Throw Attack
{ hit=0  
sprite_index=spr_sneak_throwitem MoveType=0 damage=0.1
image_index=animFrame image_speed=0

if animFrame=3
{bomb=instance_create_depth(x+30*image_xscale,y,depth,oBomb) bomb.z=z-70 PlaySoundNoStack(snd_swing)
bomb.spdX=1.5*image_xscale bomb.ground=0 bomb.spdZ=-8 bomb.trigger=1

}

atk=0
if animFrame=clamp(animFrame,0,1.5)
animFrame+=0.2 else animFrame+=0.1 if animFrame>4.5 {hurt=0 atk=0 canmove=1 hit=0


}}

if anim=35 ///Grab Enemy
{
isThrow=1 hud_show()
throwing=1
selfatk.image_xscale=0
comboBreak=0
selfatk.recovery=90
if animFrame>0.1
Throw=0 else {Throw=1 grabMax=0}
sprite_index=spr_sneak_grab
image_index+=0.25 hspeed=0 canmove=0
if targetID!=-1 
{
targetID.GrabFrameExtra+=0.2
if targetID.GrabFrameExtra=3.8
targetID.GrabFrameExtra=0
sentFlying=0 
targetID.anim=31
targetID.hit=2
targetID.hitSource=id
targetID.ground=0 
targetID.atk=0
targetID.hurt=1
targetID.image_index+=0.1

targetID.recovery=0

if targetID.key_up_pressed
or targetID.key_down_pressed
or targetID.key_left_pressed
or targetID.key_right_pressed
{grabMax+=1 image_index=0 targetID.image_index=0

if grabMax>4
{
HitType=1 event_user(0) sentflying=-2*image_xscale zSpeed=-2
}
}

}
if targetID.anim!=30 and targetID.anim!=31
{
targetID.ground=0 
targetID=-1

throwing=0 animFrame=0 anim=0 canmove=1 throwcombo=2
alarm[1]=2
}



{
///Drag Enemy
if targetID!=-1
{
targetID.targetHeightHit=1 targetID.isGrabbed=1
with targetID {sprite_index=GrabbedSpr event_user(1)}
}
grabX=16*image_xscale grabY=0 grabZ=0 targetID.image_xscale=image_xscale
targetID.depth=depth+1
atk=0 
animFrame+=0.02 if animFrame>4 {///Let go of enemy to attack
grabX=0 grabY=0 grabZ=0 //targetID.hp-=0.05+extradamage
if targetID!=-1
with targetID
{recovery=10 isGrabbed=0
hurt=1 Throw=0
atk=0 canmove=0 animFrame=0 image_index=GrabFrame anim=4 shaketime=10
}throwing=0 animFrame=0 anim=10 canmove=0 throwcombo=2
targetID=-1 }
}

////Forcibly Break Out With Special Attacks
if animFrame>0.1 and targetID!=-1
{
if targetID.key_right_pressed
or targetID.key_right_pressed
or targetID.key_jump
or targetID.key_attack
animFrame+=0.25

////Instantly use Special
if (targetID.key_shield_pressed or targetID.key_super)
if targetID.pow>4
or targetID.hp>=powhp
{grabZ=0 targetID.z=z
with targetID {anim=0 hurt=0 ground=0 isGrabbed=0

powlock=1 pow=0 
if pow>4 powcheck=1 else if hp>=powhp powcheck=0
canmove=0 targetID=-1 animFrame=0
anim=17 throwATK=0
   recovery=60}
targetID=-1 event_user(0)
}
}
////Instantly use Super

}
}

///Throw Setup
if recovery!=0 recovery-=1 else {recovery=0}
if recoveryThrow!=0 recoveryThrow-=1 else recoveryThrow=0

if !instance_exists(targetID)
{targetID=-1}
else
if targetID!=-1
{
if hurt=1
with targetID
{
isGrabbed=1
canmove=1
hurt=0
hit=0
ground=0
zSpeed=-2
sentflying=0
animFrame=0
anim=2
}

if targetID.canDrag=1
{
targetID.x=x+grabX
targetID.y=y+grabY
targetID.z=z+grabZ
}
targetID.vspeed=0
targetID.hspeed=0

if targetID.anim!=30 and targetID.anim!=31
targetID=-1
}

if anim=810 ///Gun Fire
{specialcheck3=4
	

	
sprite_index=spr_sneak_gunfire
frame_set(0,0,0.1)
frame_set(1,1,0.025)
frame_set(2,2,0.25) //1

if animFrame=clamp(animFrame,2,2.25)
or animFrame=clamp(animFrame,4,4.25)
or animFrame=clamp(animFrame,6,6.25)
or animFrame=clamp(animFrame,8,8.25)
or animFrame=clamp(animFrame,10,10.25)
{
PlaySoundNoStack(snd_gun)
flashFX(x+34*image_xscale,y,z-42,spr_gunflash,0,1,0,1,1,c_white,1)
projectile_create(x+34*image_xscale,y,z-42,-8,spr_bullet,4*image_xscale,mask_small,spr_blood,weaponDamage,weaponHitType,weapontargetHeight,0,0)
}
frame_set(3,1,0.25)
frame_set(4,2,0.25) //2 
frame_set(5,1,0.25)
frame_set(6,2,0.25) //3
frame_set(7,1,0.25) 
frame_set(8,2,0.25) //4
frame_set(9,1,0.25)
frame_set(10,2,0.25) //5
frame_set(11,1,0.25)
frame_set(12,1,0.025)
frame_set(13,0,0.25)
if animFrame>13.75 {atk=0 canmove=1}


if image_index=clamp(image_index,0,0.9)
{armX=-3 armY=1
	weaponanim(weaponspr,weaponIndex,-6,1-39,0*image_xscale,weaponcolor)
	}
if image_index=clamp(image_index,1,1.9)
{armX=1 armY=3
weaponanim(weaponspr,weaponIndex,-2,3-39,0*image_xscale,weaponcolor)
	}
if image_index=clamp(image_index,2,2.9)
{armX=0 armY=3
	weaponanim(weaponspr,weaponIndex,-3,3-39,0*image_xscale,weaponcolor)
	}

}



///Hits
if sprite_index=ThrownSpr
{
if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,-21,-35,-8*image_xscale,weaponcolor)
if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,-6,-45,22*image_xscale,weaponcolor)
if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,0,-41,9*image_xscale,weaponcolor)
if image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,weaponIndex,18,-35,38*image_xscale,weaponcolor)
if image_index=clamp(image_index,4,4.9)
weaponanim(weaponspr,weaponIndex,17,-43,28*image_xscale,weaponcolor)
if image_index=clamp(image_index,5,5.9)
weaponanim(weaponspr,weaponIndex,-7,-56,79*image_xscale,weaponcolor)
if image_index=clamp(image_index,6,6.9)
weaponanim(weaponspr,weaponIndex,-31,3,-14*image_xscale,weaponcolor)
if image_index=clamp(image_index,7,7.9)
weaponanim(weaponspr,weaponIndex,2,-33,2*image_xscale,weaponcolor)
if image_index=clamp(image_index,8,8.9)
weaponanim(weaponspr,weaponIndex,1,0,0*image_xscale,weaponcolor)
if image_index=clamp(image_index,9,9.9)
weaponanim(weaponspr,weaponIndex,1,2,0*image_xscale,weaponcolor)
if image_index=clamp(image_index,10,10.9)
weaponanim(weaponspr,weaponIndex,0,-32,21*image_xscale,weaponcolor)
if image_index=clamp(image_index,11,11.9) 
 weaponanim(weaponspr,weaponIndex,-4,-12,45*image_xscale,weaponcolor)
if image_index=clamp(image_index,12,12.9)
 weaponanim(weaponspr,weaponIndex,-4,-12,135*image_xscale,weaponcolor)
if image_index=clamp(image_index,13,13.9)
 weaponanim(weaponspr,weaponIndex,-4,-12,225*image_xscale,weaponcolor)
if image_index=clamp(image_index,14,14.9)
 weaponanim(weaponspr,weaponIndex,-4,-12,315*image_xscale,weaponcolor)
if image_index=clamp(image_index,15,15.9)
weaponanim(weaponspr,weaponIndex,-21,-53,-32*image_xscale,weaponcolor)
if image_index=clamp(image_index,16,16.9)
weaponanim(weaponspr,weaponIndex,-15,-48,-52*image_xscale,weaponcolor)
if image_index=clamp(image_index,17,17.9)
weaponanim(weaponspr,weaponIndex,-8,-9,-52*image_xscale,weaponcolor)
if image_index=clamp(image_index,18,18.9)
weaponanim(weaponspr,weaponIndex,-14,-4,-65*image_xscale,weaponcolor)
if image_index=clamp(image_index,19,19.9)
weaponanim(weaponspr,weaponIndex,0,2,0*image_xscale,weaponcolor)
if image_index=clamp(image_index,20,20.9)
weaponanim(weaponspr,weaponIndex,0,-3,0*image_xscale,weaponcolor)
if image_index=clamp(image_index,21,21.9)
weaponanim(weaponspr,weaponIndex,1,1,0*image_xscale,weaponcolor)
if image_index=clamp(image_index,22,22.9)
weaponanim(weaponspr,weaponIndex,8,3,-9*image_xscale,weaponcolor)
if image_index=clamp(image_index,23,23.9)
weaponanim(weaponspr,weaponIndex,-6,-30,17*image_xscale,weaponcolor)
if image_index=clamp(image_index,24,24.9)
weaponanim(weaponspr,weaponIndex,-2,-39,12*image_xscale,weaponcolor)
}
