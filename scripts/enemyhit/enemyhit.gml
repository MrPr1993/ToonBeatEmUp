function enemyhit() {


	if canBlock=0
	{if other.HitQuake!=0 oControl.quakeFXTime=other.HitQuake
		atk=0 selfatk.atk=0
	hp-=other.damage/(defense+extradefense)

	other.hitID=id

	if !(x>other.SourceX and image_xscale=-1)
	and !(x<other.SourceX and image_xscale=1)
	hitBack=1 else hitBack=0

	targetEnemy=other.hitSource.id

dizzyPercentage=random_range(0,100)
	if !dizzyPercentage=clamp(dizzyPercentage,dizzyPercentageMin,dizzyPercentageMax)
	dizzyHit=1;
	else
	dizzyHit=other.dizzyAtk

cutDMG=other.isCut



	PlaySoundNoStack(other.HitSound)


	if hp<=0
	other.PlayerScore=points
	else other.PlayerScore=pointshit
	with other {hitSource.PlayerScore+=PlayerScore}
	}
	else
	{
	hp-=0.01

	if hp<=0
	other.PlayerScore=points
	else other.PlayerScore=1
	with other {hitSource.PlayerScore+=PlayerScore}
	}

	if other.object_index!=oProjectile and other.hitSource.weaponIsGun=0
	with other.hitSource
	if weaponAttack=1
	weaponLife-=1

	with other.hitSource
	{
	super+=0.25*canSuper



	event_user(14)
	if HitReactionScript!=-1
	script_execute(HitReactionScript)
	}

	shaketime=30

	targetHeightHit=other.targetHeight

	other.comboHit=90

	if other.NoKnock=0 {damageFall-=1 damageFallTime=60}


	recovery=other.recovery

	hud_show()

	//if x>other.SourceX image_xscale=-1 else image_xscale=1 

	if canBlock=0
	{if other.HitQuake!=0 oControl.quakeFXTime=other.HitQuake
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



}
