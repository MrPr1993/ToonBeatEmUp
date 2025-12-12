if act=1
if immune=0
if other.isEnemy=1
{
{
if other.attack=1 and Throw=0 and dead=0 and anim!=6
if other.z>z-height and other.z<z+2
if recovery=0
{

if other.canHit=1
{
hp-=other.damage/(defense+extradefense)
cutDMG=other.isCut
shaketime=30
recovery=90
if !(x>other.x and image_xscale=-1)
and !(x<other.x and image_xscale=1)
hitBack=1 else hitBack=0

flashFX(x,y+2,z-32,other.WspriteFX,other.WindexFX,other.WisDepth,other.WspriteTime,other.WxScaleFX,other.WyScaleFX,other.WblendFX,other.WalphaFX)

HitType=1//other.HitType
event_user(0)
if other.weaponIsGun=0
other.weaponLife-=1-1*global.Cheat[11]*global.NoCheat

}

with other
{
if canHit=1
{
if isweapon=1
{spdX=2*-image_xscale
canGrav=1 gravLandHalt=1 spdZ=-8 attack=0 spinBack=1
}
else
{if itemHP!=1 itemHP-=1 else
instance_destroy()}
if isweapon=0
event_user(0)

PlaySound(HitSound)

if WhitDisappear=1 instance_destroy()
}}



}
}
}

