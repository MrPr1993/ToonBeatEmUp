/// @description Overwrite AI

enemy_step()

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
if x!=clamp(x,targetX-rangeX,targetX+rangeX)
{if x>targetX {anim=1 key_left=-1 key_right=0} else {anim=1 key_right=1 key_left=0}}

if y!=clamp(y,targetY-rangeY/2,targetY+rangeY/2)
if y!=clamp(y,targetY,targetY)
{if y>targetY {anim=1 key_up=1 key_down=0} else {anim=1 key_down=1 key_up=0}}
else {key_up=0 key_down=0}
if distance_to_point(targetX,targetY)<4
{///Get Weapon
item=instance_nearest(x,y,oHammer)
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
animFrame=0 anim=25 canmove=0
}
else enemy_ai()

}
} else enemy_ai()
}
} else enemy_ai()

enemy_control()

if hurt=1
{
///Special State to drop weapon
if anim=5
or anim=6
or anim=7
or anim=8
or dead=1
{
if weaponspr!=-1
{
weapon=instance_create_depth(x,y,depth,spawnID)
weapon.z=z-96 weapon.spdZ=-4 weapon.ground=0 weapon.airSpin=1
weapon.image_blend=weaponcolor
weapon.weaponLife=weaponLife
weapon.weapon_pal_sprite=weapon_pal_sprite
weapon.weapon_pal=weapon_pal

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
{canTaunt=0 animFrame=0 PlaySoundNoStack(snd_msswing1)
canmove=0 key_left=0 key_right=0 key_up=0 key_down=0
anim=130
}}
}



///Overwrite Attacks
///Weapon Position Adaptation to Animations




if weaponspr!=-1
rangeAtk=weaponRange else rangeAtk=40

if anim=10 ///Attack Stand
if overwriteAttack=1
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
{if animFrame=0 PlaySoundNoStack(snd_msswing2)
////Hammer Swing 

if animFrame=clamp(animFrame,0,0.9)
{weaponanim(weaponspr,weaponIndex,16,-75,90,weaponcolor)}
if animFrame=clamp(animFrame,1,1.9)
{weaponanim(weaponspr,weaponIndex,-14,-85,135,weaponcolor)}
if animFrame=clamp(animFrame,2,2.9)
{weaponanim(weaponspr,weaponIndex,-33,-70,224,weaponcolor)}
if animFrame=clamp(animFrame,3,3.9)
{weaponanim(weaponspr,weaponIndex,-21,-87,135,weaponcolor)}
if animFrame=clamp(animFrame,4,4.9)
{weaponanim(weaponspr,weaponIndex,5,-86,59,weaponcolor)}
if animFrame=clamp(animFrame,5,5.9)
{weaponanim(weaponspr,weaponIndex,21,-35,0,weaponcolor)}
if animFrame=clamp(animFrame,6,6.9)
{weaponanim(weaponspr,weaponIndex,12,-69,78,weaponcolor)}
sprite_index=AtkSpr
image_index=animFrame image_speed=0
if animFrame=clamp(animFrame,5,5.2) atk=1 else atk=0


if animFrame=clamp(animFrame,5,6.9)
animFrame+=0.1 

if animFrame=clamp(animFrame,0,2)
animFrame+=0.25

if animFrame=clamp(animFrame,2,3)
animFrame+=0.05

if animFrame=3 PlaySoundNoStack(WswingSound)

if animFrame=clamp(animFrame,3,5)
animFrame+=0.5



if animFrame>6.5 {hurt=0 atk=0 canmove=1 hit=0
}
}
if weapontype=1
{
///Knife Stab 
if animFrame=0 PlaySoundNoStack(WswingSound)
if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,7,-49,0*image_xscale,weaponcolor)
else
weaponanim(weaponspr,weaponIndex,32,-51,0*image_xscale,weaponcolor)

sprite_index=AtkSpr3
image_index=animFrame image_speed=0
if animFrame=clamp(animFrame,1,1.9) atk=1 else atk=0
animFrame+=0.2 if animFrame>2.6 {hurt=0 atk=0 canmove=1 hit=0
}
}

}
else
{
hitFXreset() selfatk.HitSound=snd_hit
sprite_index=AtkSpr2 weaponAttack=0
atkAddX=16 atkAddY=0 atkAddZ=0 selfatk.targetHeight=0
selfatk.image_xscale=2*image_xscale selfatk.height=96
}

if sprite_index=AtkSpr2 {MoveType=0 damage=0.02
image_index=animFrame image_speed=0
 if animFrame=clamp(animFrame,2,2.2) atk=1 else atk=0
if animFrame=clamp(animFrame,0,1.5)
animFrame+=0.2 else animFrame+=0.1 if animFrame>3.5 {hurt=0 atk=0 canmove=1 hit=0
}

}
}

if anim=130 ///Taunt
if overwriteAttack=1
{animFrame+=0.1  sprite_index=spr_swing_taunt canmove=0

if image_index<1
weaponanim(weaponspr,weaponIndex,14,-67,180*image_xscale,weaponcolor)
else
weaponanim(weaponspr,weaponIndex,14,-64,180*image_xscale,weaponcolor)

if image_index<1.9 image_index+=0.1 else image_index=0

if animFrame>10 {hurt=0 atk=0 canmove=1 hit=0}
}

