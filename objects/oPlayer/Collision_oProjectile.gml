/// @description Insert description here
// You can write your code in this editor
if ContinueMode=0
{
if act=1
if immune=0
//and (x>__view_get( e__VW.XView, 0 )-sprite_get_width(mask_index)/2 and x<__view_get( e__VW.XView, 0 )+320+sprite_get_width(mask_index)/2)
and x=clamp(x,camera_get_view_x(view_camera[0])-sprite_get_width(mask_index)/2,camera_get_view_x(view_camera[0])+320+sprite_get_width(mask_index)/2)
{
if other.isPlayer!=isPlayer and other.atk=1 and Throw=0 and dead=0 and superThrown=0
and anim!=6 and recovery=0

if (z-height)<(other.z) and (z)>(other.z-other.height)
{
	if canBlock=0
	{
	hp-=other.damage/(defense+extradefense)

	other.hitID=id

	if !(x>other.SourceX and image_xscale=-1)
	and !(x<other.SourceX and image_xscale=1)
	hitBack=1 else hitBack=0

	targetEnemy=other.hitSource.id

	dizzyHit=other.dizzyAtk

	PlaySoundNoStack(other.HitSound)


	if hp<=0
	{}
	else {}
	with other {}
	}
	else
	{
	hp-=0.01

	}

	shaketime=30

	targetHeightHit=other.targetHeight

	other.comboHit=90

	if other.NoKnock=0 {damageFall-=1 damageFallTime=60}

	recovery=other.recovery

	//if x>other.SourceX image_xscale=-1 else image_xscale=1 

	if canBlock=0
	{
	if other.object_index!=oProjectile
	flashFX(x-other.flashX*image_xscale,y+other.flashY,z-other.flashZ,other.spriteFX,other.indexFX,other.speedFX,other.spriteTime,other.xScaleFX,other.yScaleFX,other.blendFX,other.alphaFX)
	else
	flashFX(other.x,other.y,other.z,other.spriteFX,other.indexFX,other.speedFX,other.spriteTime,other.xScaleFX,other.yScaleFX,other.blendFX,other.alphaFX)

	fx.isDepth=other.isDepth fx.speedFX=other.speedFX

	HitType=other.MoveType

	if hitBack=0
	HitForceReact=other.HitForce*image_xscale
	else
	HitForceReact=-other.HitForce*image_xscale
	HitForceReactZ=other.HitForceZ

	event_user(0)
	}
	else
	{

	flashFX(x-other.flashX*image_xscale,y+other.flashY,z-other.flashZ,spr_hitflash,0,1,5,1,1,c_white,1)


	PlaySoundNoStack(other.HitSound)
	animFrame=0
	anim=61 recovery=10
	shaketime=30

	if hp<=0 {HitType=1  event_user(0)}
	}


with other if canDestroy instance_destroy()
}
}

}