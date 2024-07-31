/// @description Overwrite AI

enemy_step()


if canTrack=1
{
if spawnID!=-1
enemy_ai()
else if instance_exists(oHammer)
{
if distance_to_object(oHammer)>60
enemy_ai()
else
{ ///Try reach for nearest weapon
if hurt=0 and canmove=1
{alarm[1]=0
targetX=instance_nearest(x,y,oHammer).x
targetY=instance_nearest(x,y,oHammer).y
anim=1

item=instance_nearest(x,y,oHammer)

if x!=clamp(x,targetX,targetX)
{if x>targetX {anim=1 key_left=-1 key_right=0} else {anim=1 key_right=1 key_left=0}}

if y!=clamp(y,targetY,targetY)
{if y>targetY {anim=1 key_up=1 key_down=0} else {anim=1 key_down=1 key_up=0}}
else {key_up=0 key_down=0}
if distance_to_point(targetX,targetY)<4
{///Get Weapon
item=instance_nearest(x,y,oHammer)
if item.isBroken!=0 or item.ground!=1 or item.weapontype=2
{enemy_ai() exit;}

if item.isBroken=0 and item.ground=1 and item.weapontype!=2
{
spawnID=item.itemspawner
weaponspr=item.sprite_index
weaponIndex=item.image_index
weaponX=0 weaponHitType=item.HitType weaponExtraAngle=item.weaponExtraAngle
weaponY=-32 Whitsound=item.HitSound
weaponangle=45
weaponcolor=item.image_blend
weaponLife=item.weaponLife
stunWeapon=item.stunWeapon
weaponRange=item.weaponRange
weaponColPosX=item.weaponColPosX
weaponColPosY=item.weaponColPosY
weaponColPosZ=item.weaponColPosZ
weaponColScaleX=item.weaponColScaleX
weaponColScaleY=item.weaponColScaleY
weaponColScaleZ=item.weaponColScaleZ
weaponDamage=item.weaponDamage
weapontargetHeight=item.weapontargetHeight
weaponCut=item.weaponCut
weapontype=item.weapontype
weapon_pal=item.weapon_pal
weapon_pal_sprite=item.weapon_pal_sprite

WspriteFX=item.WspriteFX
WindexFX=item.WindexFX
WisDepth=item.WisDepth
WanimEnd=item.WanimEnd
WspeedFX=item.WspeedFX
WspriteTime=item.WspriteTime
WxScaleFX=item.WxScaleFX
WyScaleFX=item.WyScaleFX
WblendFX=item.WblendFX
WalphaFX=item.WalphaFX
HitSound=item.HitSound
WswingSound=item.WswingSound

with item instance_destroy()
AnimFrame=0 anim=25 canmove=0
}
else enemy_ai()

}
} else enemy_ai()
}
} else enemy_ai()

enemy_control()
}
else
{
enemy_ai()
}



if (hurt=1 and hp=0)
or hp=0
{
///Special State to drop weapon
if dead=1
or anim=6
or anim=7
or anim=8
or dead=1
or hp=0
{
if weaponspr!=-1
{
weapon=instance_create_depth(x,y,depth,spawnID)
weapon.z=z-96 weapon.spdZ=-4 weapon.ground=0 weapon.airSpin=1
weapon.image_blend=weaponcolor
weapon.weaponLife=weaponLife
weapon.weapon_pal_sprite=weapon_pal_sprite
weapon.weapon_pal=weapon_pal
weapon.image_index=0
weaponspr=-1
weaponIndex=0
weaponX=0
weaponY=0
weaponangle=0
weaponcolor=c_white
weaponspawn=-1
spawnID=-1
}}
}

///Taunt after hitting enemy
{
if canTaunt=1
{if hurt=1 canTaunt=0
if canmove=1 and atk=0
{canTaunt=0 AnimFrame=0 PlaySoundNoStack(snd_msswing1)
canmove=0 key_left=0 key_right=0 key_up=0 key_down=0
anim=130
}}
}



///Overwrite Attacks
///Weapon Position Adaptation to Animations




if weaponspr!=-1
rangeAtk=weaponRange else {
if weaponcanRecharge=1
weaponRecharge=1 else weaponRecharge=0
	rangeAtk=140 }

