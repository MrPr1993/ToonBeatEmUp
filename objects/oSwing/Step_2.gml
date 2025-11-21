enemy_endstep()
throw_step()

///Get her to rush back if off-screen to fix an AI problem
//if canmove and hurt=0 and dead=0 and leaveMode=0
//{
//if x<oControl.camX-64 {x=oControl.camX-64 image_xscale=1 canAttack=3}
//if x>oControl.camX+320+64{x=oControl.camX+320+64 image_xscale=-1 canAttack=3}
//}

weaponExtraAngle=0

if weapontype=4 weaponExtraAngle=270

overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1
overwriteAttack3=1
overwriteAttack4=1
overwriteAttack5=1

if weapontype=1 or weapontype=3 or weapontype=4 rangeAtk=160
else rangeAtk=90

if overwriteAttack=1
if anim=10 ///Attack Stand
{
if weaponRecharge=0
{
  hit=1
if weaponspr!=-1
{
weaponBack=1 dizzyAtk=stunWeapon
damage=weaponDamage targetHeight=weapontargetHeight selfatk.isCut=weaponCut
selfatk.recovery=10 
hit=0 MoveType=weaponHitType
atkcol_set(weaponColPosX,weaponColPosY,weaponColPosZ,weaponColScaleX,weaponColScaleY,weaponColScaleZ)
weaponAttack=1

selfatk.HitSound=HitSound
if weapontype!=-1 selfatk.HitSound=Whitsound
hitFXset(WspriteFX,WindexFX,WisDepth,WanimEnd,WspeedFX,WspriteTime,WxScaleFX,WyScaleFX,WblendFX,WalphaFX)


if weapontype=0
{if AnimFrame=0 PlaySoundNoStack(snd_msswing2)
////Hammer Swing 

if AnimFrame=clamp(AnimFrame,0,0.9)
{weaponanim(weaponspr,weaponIndex,16,-75,90,weaponcolor)}
if AnimFrame=clamp(AnimFrame,1,1.9)
{weaponanim(weaponspr,weaponIndex,-14,-85,135,weaponcolor)}
if AnimFrame=clamp(AnimFrame,2,2.9)
{weaponanim(weaponspr,weaponIndex,-33,-70,224,weaponcolor)}
if AnimFrame=clamp(AnimFrame,3,3.9)
{weaponanim(weaponspr,weaponIndex,-21,-87,135,weaponcolor)}
if AnimFrame=clamp(AnimFrame,4,4.9)
{weaponanim(weaponspr,weaponIndex,5,-86,59,weaponcolor)}
if AnimFrame=clamp(AnimFrame,5,5.9)
{weaponanim(weaponspr,weaponIndex,21,-35,0,weaponcolor)}
if AnimFrame=clamp(AnimFrame,6,6.9)
{weaponanim(weaponspr,weaponIndex,12,-69,78,weaponcolor)}
sprite_index=AtkSpr
image_index=AnimFrame image_speed=0
if AnimFrame=clamp(AnimFrame,5,5.2) atk=1 else atk=0


if AnimFrame=clamp(AnimFrame,5,6.9)
AnimFrame+=0.1 

if AnimFrame=clamp(AnimFrame,0,2)
AnimFrame+=0.25

if AnimFrame=clamp(AnimFrame,2,3)
AnimFrame+=0.05

if AnimFrame=3 PlaySoundNoStack(WswingSound)

if AnimFrame=clamp(AnimFrame,3,5)
AnimFrame+=0.5



if AnimFrame>6.5 {hurt=0 atk=0 canmove=1 hit=0
}
}
if weapontype=1
{
///Knife Weapon
if distance_to_point(targetEnemy.x,targetEnemy.y)>50
anim=132 else anim = 133
}
if weapontype=3
{
if distance_to_point(targetEnemy.x,targetEnemy.y)>50
anim=132 else anim=135
}

if weapontype=4
{
if distance_to_point(targetEnemy.x,targetEnemy.y)>50
anim=1340 else anim=135
}

if weapontype=5 {AnimFrame=0 anim=134}

}
else
{
anim=135
}

if sprite_index=AtkSpr2 {MoveType=0 damage=0.02
image_index=AnimFrame image_speed=0
 if AnimFrame=clamp(AnimFrame,2,2.2) atk=1 else atk=0
if AnimFrame=clamp(AnimFrame,0,1.5)
AnimFrame+=0.2 else AnimFrame+=0.1 if AnimFrame>3.5 {hurt=0 atk=0 canmove=1 hit=0
}

}
}
else
{
if distance_to_point(targetEnemy.x,targetEnemy.y)>50
anim=131 
else anim=135

}

}

if anim=130 ///Taunt
if overwriteAttack=1
{AnimFrame+=0.1  sprite_index=spr_swing_taunt canmove=0

if image_index<1
weaponanim(weaponspr,weaponIndex,14,-67,180*image_xscale,weaponcolor)
else
weaponanim(weaponspr,weaponIndex,14,-64,180*image_xscale,weaponcolor)

if image_index<1.9 image_index+=0.1 else image_index=0

if AnimFrame>10 {hurt=0 atk=0 canmove=1 hit=0}
}

if anim=131 //?RespawnWeapon
{
sprite_index=spr_swing_weapon
frame_set(0,0,0.25)
frame_set(1,1,0.25)
frame_set(2,2,0.25)
frame_set(3,1,0.25)
frame_set(4,2,0.25)
frame_set(5,1,0.25)
frame_set(6,2,0.25)
frame_set(7,1,0.25)
frame_set(8,2,0.25)
frame_set(9,1,0.25) if AnimFrame>10 {weaponRecharge=0 weapon_add(weaponRechargeT)}
frame_set(10,3,0.25)
frame_set(11,4,0.1)
frame_set(12,4,0.1) if AnimFrame>12 canmove=1
}


if anim=132 //Throw Weapon
{sprite_index=spr_swing_throwitem

frame_set(0,0,0.1)
frame_set(1,1,0.05)
frame_set(2,2,0.25) if AnimFrame=3
{
item_thrown()	
	
}
frame_set(3,3,0.05)
frame_set(4,0,0.25) if AnimFrame>5.5 canmove=1
frame_set(5,0,0.25)
}

if anim=133 ///Knife Attack
{
///Knife Stab 
if AnimFrame=0 PlaySoundNoStack(WswingSound)
if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,7,-49,0*image_xscale,weaponcolor)
else
weaponanim(weaponspr,weaponIndex,32,-51,0*image_xscale,weaponcolor)

sprite_index=AtkSpr3
image_index=AnimFrame image_speed=0
if AnimFrame=clamp(AnimFrame,1,1.9) atk=1 else atk=0
AnimFrame+=0.2 if AnimFrame>2.6 {hurt=0 atk=0 canmove=1 hit=0
}
}

if anim=1340 ///Gunfire
{var imgskp=0;
sprite_index=spr_swing_handgun
if AnimFrame<1
{
if AnimFrame<0.25 {weaponanim(weaponspr,weaponIndex,17,-69,135,weaponcolor) imgskp=1 }
else {weaponanim(weaponspr,weaponIndex,23,-44,90,weaponcolor)}}

frame_set(0,imgskp,0.025)
	if AnimFrame=1 {		PlaySoundNoStack(snd_gun)		
	flashFX(x+38*image_xscale,y,z-50,weaponProjFlashSpr,0,1,0,1,1,c_white,1)
	projectile_create(x+38*image_xscale,y,z-50,-8,weaponProjSpr,weaponProjSpd*image_xscale,weaponProjMask,weaponProjHitSpr,weaponDamage,weaponHitType,weapontargetHeight,0,0)
	projectile.HitSound=weaponProjHitSnd
	}
	
	frame_set(1,1,0.25)
	frame_set(2,2,0.1)
	frame_set(3,2,0.25) if AnimFrame>3.5 {hurt=0 atk=0 canmove=1 hit=0}
	
	if AnimFrame>1 {if AnimFrame<2 weaponanim(weaponspr,weaponIndex,17,-69,135,weaponcolor) 
	else {weaponanim(weaponspr,weaponIndex,22,-70,135,weaponcolor)
	}}


}

if anim=135 ///Shove
{weaponanim(weaponspr,weaponIndex,29992,-70,135*image_xscale,weaponcolor)
hitFXreset() selfatk.HitSound=snd_hit AnimFrame+=0.1
sprite_index=AtkSpr2 weaponAttack=0 image_index=AnimFrame if AnimFrame=clamp(AnimFrame,2,2.2) atk=1 else atk=0
atkAddX=16 atkAddY=0 atkAddZ=0 selfatk.targetHeight=0
selfatk.image_xscale=2*image_xscale selfatk.height=96
if AnimFrame>2.5 canmove=1
}

///Hits
if sprite_index=ThrownSpr
{
if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,11,-52,190,weaponcolor)
if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,10,-68,190,weaponcolor)
if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,7,-71,176,weaponcolor)
if image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,weaponIndex,9,-73,186,weaponcolor)
if image_index=clamp(image_index,4,4.9)
weaponanim(weaponspr,weaponIndex,4,-46,90,weaponcolor)
if image_index=clamp(image_index,5,5.9)
weaponanim(weaponspr,weaponIndex,-16,-45,196,weaponcolor)
if image_index=clamp(image_index,6,6.9)
weaponanim(weaponspr,weaponIndex,26,-6,196,weaponcolor)
if image_index=clamp(image_index,7,7.9)
weaponanim(weaponspr,weaponIndex,2,-11,196,weaponcolor)
if image_index=clamp(image_index,8,8.9)
weaponanim(weaponspr,weaponIndex,2,-4,16,weaponcolor)
if image_index=clamp(image_index,9,9.9)
weaponanim(weaponspr,weaponIndex,2,-4,16,weaponcolor)
if image_index=clamp(image_index,10,10.9)
weaponanim(weaponspr,weaponIndex,0,-42,16,weaponcolor)
if image_index=clamp(image_index,11,11.9)
weaponanim(weaponspr,weaponIndex,-10,-18,45,weaponcolor)
if image_index=clamp(image_index,12,12.9)
weaponanim(weaponspr,weaponIndex,-10,-18,135,weaponcolor)
if image_index=clamp(image_index,13,13.9)
weaponanim(weaponspr,weaponIndex,-10,-18,225,weaponcolor)
if image_index=clamp(image_index,14,14.9)
weaponanim(weaponspr,weaponIndex,-10,-18,315,weaponcolor)
if image_index=clamp(image_index,15,15.9)
weaponanim(weaponspr,weaponIndex,-15,-48,16,weaponcolor)
if image_index=clamp(image_index,16,16.9)
weaponanim(weaponspr,weaponIndex,-13,-61,16,weaponcolor)
if image_index=clamp(image_index,17,17.9)
weaponanim(weaponspr,weaponIndex,-13,-33,16,weaponcolor)
if image_index=clamp(image_index,18,18.9)
weaponanim(weaponspr,weaponIndex,-11,-10,16,weaponcolor)
if image_index=clamp(image_index,19,19.9)
weaponanim(weaponspr,weaponIndex,2,-4,16,weaponcolor)
if image_index=clamp(image_index,20,20.9)
weaponanim(weaponspr,weaponIndex,0,-6,16,weaponcolor)
if image_index=clamp(image_index,21,21.9)
weaponanim(weaponspr,weaponIndex,-4,-16,16,weaponcolor)
if image_index=clamp(image_index,22,22.9)
weaponanim(weaponspr,weaponIndex,2,-20,16,weaponcolor)
if image_index=clamp(image_index,23,23.9)
weaponanim(weaponspr,weaponIndex,-7,-37,16,weaponcolor)
if image_index=clamp(image_index,24,24.9)
weaponanim(weaponspr,weaponIndex,-10,-45,16,weaponcolor)
}

if sprite_index=spr_swing_front
{
if image_index=clamp(image_index,0,0.9) or image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,weaponIndex,14,-65,180*image_xscale,weaponcolor)
if image_index=clamp(image_index,1,1.9) or image_index=clamp(image_index,4,4.9)
weaponanim(weaponspr,weaponIndex,14+1,-65+2,180*image_xscale,weaponcolor)
if image_index=clamp(image_index,2,2.9) or image_index=clamp(image_index,5,5.9)
weaponanim(weaponspr,weaponIndex,14+1,-65+1,180*image_xscale,weaponcolor)
}

if sprite_index=spr_swing_frozen
weaponanim(weaponspr,weaponIndex,10,-63,131,weaponcolor)

if sprite_index=spr_swing_throwitem
{weaponanim(weaponspr,weaponIndex,22,-62,90,weaponcolor)
}

if sprite_index=spr_swing_throwitem
{
if image_index=clamp(image_index,0,.9)
weaponanim(weaponspr,0,7,-60,90,weaponcolor)
if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,1,-30,-54,90,weaponcolor)
if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,1,-14,-91,190,weaponcolor)
if image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,2,30,-47,90,weaponcolor)
}
else
if anim=134 //WHIP
{sprite_index=spr_swing_whip
if AnimFrame=clamp(AnimFrame,0,0.9)
weaponanim(weaponspr,image_index+1,9,-68,0,weaponcolor)
if AnimFrame=clamp(AnimFrame,1,1.9)
weaponanim(weaponspr,image_index+1,14,-52,0,weaponcolor)
if AnimFrame=clamp(AnimFrame,2,2.9)
weaponanim(weaponspr,image_index+1,11,-52,0,weaponcolor)
if AnimFrame=clamp(AnimFrame,3,3.9)
weaponanim(weaponspr,image_index+1,13,-52,0,weaponcolor)
if AnimFrame=clamp(AnimFrame,4,4.9)
weaponanim(weaponspr,image_index+1,13,-52,0,weaponcolor)
if AnimFrame=clamp(AnimFrame,5,5.9)
weaponanim(weaponspr,image_index+1,13,-52,0,weaponcolor)
if AnimFrame=clamp(AnimFrame,6,6.9)
weaponanim(weaponspr,image_index+1,13,-52,0,weaponcolor)
	
frame_set(0,0,0.25)
frame_set(1,1,0.1) 
frame_set(2,2,0.25)
frame_set(3,3,0.25) if AnimFrame=4 PlaySound(WswingSound)
frame_set(4,4,0.25)
frame_set(5,5,0.25)
frame_set(6,6,0.25)
atkcol_set(93,0,27,5.25,1,38)
if AnimFrame=clamp(AnimFrame,4,4.5) atk=1 else atk=0
if AnimFrame>6.7 {canmove=1 anim=0}
} else weaponIndex=0

if sprite_index=DizzySpr
{
if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,12,-41,0,weaponcolor)
if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,10,-42,0,weaponcolor)
if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,12,-41,0,weaponcolor)
if image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,weaponIndex,14,-40,0,weaponcolor)
}