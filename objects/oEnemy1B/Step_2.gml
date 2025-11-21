/// @description Insert description here
// You can write your code in this editor
enemy_endstep()
throw_step()

if weaponspr!=-1
{
StandSpr=spr_burglarB_weaponstand
MoveSpr=spr_burglarB_weaponmove
RunSpr=spr_burglarB_weaponmove
}
else
{
StandSpr=spr_burglarB_stand
MoveSpr=spr_burglarB_move
RunSpr=spr_burglarB_run
}

if anim=0
{
if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,13,-40,90,weaponcolor)
if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,13,-40+3,90,weaponcolor)
if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,13,-40+1,90,weaponcolor)
}
if anim=1
{
if image_index=clamp(image_index,0,0.9) or image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,weaponIndex,13,-38,90,weaponcolor)
if image_index=clamp(image_index,1,1.9) or image_index=clamp(image_index,4,4.9)
weaponanim(weaponspr,weaponIndex,13,-38+4,90,weaponcolor)
if image_index=clamp(image_index,2,2.9) or image_index=clamp(image_index,5,5.9)
weaponanim(weaponspr,weaponIndex,13,-38-1,90,weaponcolor)
}

if anim=10
if weaponspr!=-1
{
anim=810
}

if anim=810
{
weaponBack=1 dizzyAtk=stunWeapon
damage=weaponDamage targetHeight=weapontargetHeight isCut=weaponCut
selfatk.recovery=10 
hit=0 MoveType=weaponHitType
atkcol_set(weaponColPosX,weaponColPosY,weaponColPosZ,weaponColScaleX,weaponColScaleY,weaponColScaleZ)
weaponAttack=1

selfatk.HitSound=HitSound
if weapontype!=-1 selfatk.HitSound=Whitsound
hitFXset(WspriteFX,WindexFX,WisDepth,WanimEnd,WspeedFX,WspriteTime,WxScaleFX,WyScaleFX,WblendFX,WalphaFX)

hit=0  
 sprite_index=spr_burglarB_weaponattack
	image_index=AnimFrame image_speed=0

frame_set(0,0,0.2)
frame_set(1,1,0.05) if AnimFrame=2 PlaySoundNoStack(WswingSound)
if AnimFrame=clamp(AnimFrame,2,3) atk=1 else atk=0
frame_set(2,2,0.5)
frame_set(3,3,0.05)

if AnimFrame>3.5 {hurt=0 atk=0 canmove=1 hit=0}

	if AnimFrame<1
	weaponanim(weaponspr,weaponIndex,16,-30,90,weaponcolor)
	else if AnimFrame<2
	weaponanim(weaponspr,weaponIndex,-18,-69,212*image_xscale,weaponcolor)
		else if AnimFrame<3
	weaponanim(weaponspr,weaponIndex,24,-21,0*image_xscale,weaponcolor)
	else
	weaponanim(weaponspr,weaponIndex,23,-20,0*image_xscale,weaponcolor)
}

if sprite_index=ThrownSpr
{
if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,11,-23,90,weaponcolor)
if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,8,-28,90,weaponcolor)
if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,13,-28,90,weaponcolor)
if image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,weaponIndex,11,-46,101,weaponcolor)
if image_index=clamp(image_index,4,4.9)
weaponanim(weaponspr,weaponIndex,2,-36,170,weaponcolor)
if image_index=clamp(image_index,5,5.9)
weaponanim(weaponspr,weaponIndex,-2,-36,227,weaponcolor)
if image_index=clamp(image_index,6,6.9)
weaponanim(weaponspr,weaponIndex,23,0,379,weaponcolor)
if image_index=clamp(image_index,7,7.9)
weaponanim(weaponspr,weaponIndex,3,-20,532,weaponcolor)
if image_index=clamp(image_index,8,8.9)
weaponanim(weaponspr,weaponIndex,6,-3,539,weaponcolor)
if image_index=clamp(image_index,9,9.9)
weaponanim(weaponspr,weaponIndex,3,-3,492,weaponcolor)
if image_index=clamp(image_index,10,10.9)
weaponanim(weaponspr,weaponIndex,9,-28,429,weaponcolor)
if image_index=clamp(image_index,11,11.9)
weaponanim(weaponspr,weaponIndex,-8,4,429,weaponcolor)
if image_index=clamp(image_index,12,12.9)
weaponanim(weaponspr,weaponIndex,-8,4,429,weaponcolor)
if image_index=clamp(image_index,13,13.9)
weaponanim(weaponspr,weaponIndex,-8,4,429,weaponcolor)
if image_index=clamp(image_index,14,14.9)
weaponanim(weaponspr,weaponIndex,-8,4,429,weaponcolor)
if image_index=clamp(image_index,15,15.9)
weaponanim(weaponspr,weaponIndex,-28,-37,495,weaponcolor)
if image_index=clamp(image_index,16,16.9)
weaponanim(weaponspr,weaponIndex,-18,-41,495,weaponcolor)
if image_index=clamp(image_index,17,17.9)
weaponanim(weaponspr,weaponIndex,-23,-23,495,weaponcolor)
if image_index=clamp(image_index,18,18.9)
weaponanim(weaponspr,weaponIndex,-11,0,495,weaponcolor)
if image_index=clamp(image_index,19,19.9)
weaponanim(weaponspr,weaponIndex,-11,0,483,weaponcolor)
if image_index=clamp(image_index,20,20.9)
weaponanim(weaponspr,weaponIndex,-11,-10,475,weaponcolor)
if image_index=clamp(image_index,21,21.9)
weaponanim(weaponspr,weaponIndex,-14,-1,526,weaponcolor)
if image_index=clamp(image_index,22,22.9)
weaponanim(weaponspr,weaponIndex,16,-8,499,weaponcolor)
if image_index=clamp(image_index,23,23.9)
weaponanim(weaponspr,weaponIndex,8,-26,429,weaponcolor)
if image_index=clamp(image_index,24,24.9)
weaponanim(weaponspr,weaponIndex,9,-26,429,weaponcolor)
}

if sprite_index=spr_burglarB_dizzy
{
if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,12,-19,0,weaponcolor)
if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,10,-19,0,weaponcolor)
if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,12,-18,0,weaponcolor)
if image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,weaponIndex,13,-19,0,weaponcolor)
}