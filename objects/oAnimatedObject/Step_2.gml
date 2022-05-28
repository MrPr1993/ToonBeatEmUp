/// @description Insert description here
// You can write your code in this editor
enemy_endstep()
throw_step()

if sprite_index=StandSpr weaponanim(weaponspr,weaponIndex,lerp(weaponX,0,0.1),lerp(weaponY,0,0.1)+weaponExtraAngle,lerp(weaponangle,90,0.1),weaponcolor)
if sprite_index=MoveSpr weaponanim(weaponspr,weaponIndex,lerp(weaponX,22,0.1),lerp(weaponY,0,0.1)+weaponExtraAngle,lerp(weaponangle,90+45,0.1),weaponcolor)

overwriteAttack=1
overwriteAttack2=1
overwriteAttack3=1

if anim=10
{
if distance_to_point(targetEnemy.x,targetEnemy.y)>80
anim=12
else
anim=11
}
///Close Attack
if anim=11
{
animFrame+=0.1 if animFrame=2 PlaySound(WswingSound)

MoveType=weaponHitType damage=weaponDamage

if animFrame<2
weaponanim(weaponspr,weaponIndex,lerp(weaponX,0,0.1),lerp(weaponY,0,0.1),lerp(weaponangle,175,0.1),weaponcolor)
else
if animFrame<3
{atk=1 sentflying=2*image_xscale
weaponanim(weaponspr,weaponIndex,lerp(weaponX,0,0.1),lerp(weaponY,0,0.1),lerp(weaponangle,-35,0.1),weaponcolor)
}
else
{sentflying=0
atk=0
}
if animFrame>6 {canmove=1}
}

///Ranged Attack
if anim=12
{
animFrame+=0.1 if animFrame=2 PlaySound(WswingSound)

selfatk.isCut=1
MoveType=weaponHitType damage=weaponDamage

if animFrame<2
{special1=0 special2=0
weaponanim(weaponspr,weaponIndex,lerp(weaponX,0,0.1),lerp(weaponY,0,0.1),lerp(weaponangle,175,0.1),weaponcolor)
}
else
if animFrame<12-1
{atk=1 sentflying=4*image_xscale

selfatk.isCut=1
MoveType=weaponHitType damage=weaponDamage

special2-=45 if special2<-360+45 {PlaySound(WswingSound) special2=0}

special1+=0.25 if special1>3.75 special1=0

weaponanim(weaponspr,weaponIndex,lerp(weaponX,0,0.1),lerp(weaponY,0,0.1),special2,weaponcolor)
}
else
{special2=45
sentflying=0
atk=0
}
if animFrame>12 {canmove=1}
}


if anim=0 or anim=1 or anim=4 or anim=11 or anim=12 or anim=13
{
z=lerp(z,-24+hoverZ,0.1)
zSpeed=0

if anim=0 or anim=1
{
if targetEnemy.x>x image_xscale=1 else image_xscale=-1


if (key_left=0 and key_right=0 and key_up=0 and key_down=0)
{
sprite_index=StandSpr
}
else
{
sprite_index=MoveSpr
}
}

if hover=1
hoverZ=lerp(hoverZ,2,0.025) if hoverZ>1.8 hover=-1
if hover=-1
hoverZ=lerp(hoverZ,-2,0.025) if hoverZ<-1.8 hover=1

}

if sprite_index=ThrownSpr
{
if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,-12,-10,61,weaponcolor)
if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,-3,-11,110,weaponcolor)
if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,-1,-8,125,weaponcolor)
if image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,weaponIndex,8,-9,126,weaponcolor)
if image_index=clamp(image_index,4,4.9)
weaponanim(weaponspr,weaponIndex,18,-28,184,weaponcolor)
if image_index=clamp(image_index,5,5.9)
weaponanim(weaponspr,weaponIndex,15,-44,239,weaponcolor)
if image_index=clamp(image_index,6,6.9)
weaponanim(weaponspr,weaponIndex,20,-39,239,weaponcolor)
if image_index=clamp(image_index,7,7.9)
weaponanim(weaponspr,weaponIndex,16,-11,184,weaponcolor)
if image_index=clamp(image_index,8,8.9)
weaponanim(weaponspr,weaponIndex,19,0,180,weaponcolor) ///Landed
if image_index=clamp(image_index,9,9.9)
weaponanim(weaponspr,weaponIndex,18,-23,178,weaponcolor)
if image_index=clamp(image_index,10,10.9)
weaponanim(weaponspr,weaponIndex,-14,-14,57,weaponcolor)
if image_index=clamp(image_index,11,11.9)
weaponanim(weaponspr,weaponIndex,-25,-20,363,weaponcolor)
if image_index=clamp(image_index,12,12.9)
weaponanim(weaponspr,weaponIndex,-3,-1,463,weaponcolor)
if image_index=clamp(image_index,13,13.9)
weaponanim(weaponspr,weaponIndex,25,-16,563,weaponcolor)
if image_index=clamp(image_index,14,14.9)
weaponanim(weaponspr,weaponIndex,-1,-55,648,weaponcolor)
if image_index=clamp(image_index,15,15.9)
weaponanim(weaponspr,weaponIndex,-5,-9,784,weaponcolor)
if image_index=clamp(image_index,16,16.9)
weaponanim(weaponspr,weaponIndex,-14,-9,770,weaponcolor)
if image_index=clamp(image_index,17,17.9)
weaponanim(weaponspr,weaponIndex,-18,-8,757,weaponcolor)
if image_index=clamp(image_index,18,18.9)
weaponanim(weaponspr,weaponIndex,-18,-9,736,weaponcolor)
if image_index=clamp(image_index,19,19.9)
weaponanim(weaponspr,weaponIndex,-17,-6,736,weaponcolor)
if image_index=clamp(image_index,20,20.9)
weaponanim(weaponspr,weaponIndex,-17,-24,733,weaponcolor)
if image_index=clamp(image_index,21,21.9)
weaponanim(weaponspr,weaponIndex,-18,-3,749,weaponcolor)
if image_index=clamp(image_index,22,22.9)
weaponanim(weaponspr,weaponIndex,-21,-9,766,weaponcolor)
if image_index=clamp(image_index,23,23.9)
weaponanim(weaponspr,weaponIndex,-20,-18,782,weaponcolor)
if image_index=clamp(image_index,24,24.9)
weaponanim(weaponspr,weaponIndex,-14,-10,805,weaponcolor)
}

if sprite_index=FlatSpr
weaponanim(weaponspr,weaponIndex,19,0,180,weaponcolor)

if sprite_index=spr_viva_burned
{
	hurt=1
	ground=0
	zSpeed=0 
	if hitBack=0
	sentflying=0*-image_xscale
	else
	sentflying=0*image_xscale
	image_index=3 sprite_index=ThrownSpr
	animFrame=3
	anim=5
}