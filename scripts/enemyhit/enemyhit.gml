function enemyhit() {

if counterBuffer=0
{
if counterMove!=-1 if counterNum=0
{counterBuffer=320;
AnimFrame=0 anim=counterMove 
counterNum=3; recovery=2;
exit;
}
}


	if canBlock=0
	{if other.HitQuake!=0 oControl.quakeFXTime=other.HitQuake
		atk=0 selfatk.atk=0
		
if (other.hitSource.weaponAttack=1 and isBoss=1)
or (other.object_index=oProjectile and isBoss=1)
hp-=(other.damage/(defense+extradefense))/2
else
hp-=other.damage/(defense+extradefense)

thrownPlayer=-1 

	other.hitID=id

	if !(x>other.SourceX and image_xscale=-1)
	and !(x<other.SourceX and image_xscale=1)
	hitBack=1 else hitBack=0

	targetEnemy=other.hitSource.id
if other.hitSource.object_index=oPlayer
{playerFrom=other.hitSource.playerNO
with oPlayer playerGet=0 if BossTag!=0 targetEnemy.playerGet=1
}
	
////Chance their low HP increases their stun
var _hpstun=(hp/maxhp)*100 
dizzyPercentage=random_range(0,100)

if hp>0.1
{
	if !dizzyPercentage=clamp(dizzyPercentage,dizzyPercentageMin,dizzyPercentageMax)
	dizzyHit=1;
	else
	dizzyHit=other.dizzyAtk
}
else
{dizzyPercentage=choose(0,1);
	if !dizzyPercentage=0//clamp(dizzyPercentage,0,50)
	dizzyHit=1;
	else
	dizzyHit=other.dizzyAtk
}

cutDMG=other.isCut



	PlaySoundNoStack(other.HitSound)


	if hp<=0
	other.PlayerScore=points
	else other.PlayerScore=pointshit
	with other {hitSource.PlayerScore+=PlayerScore with hitSource combo_points()}
	}
	else
	{
	
	hp-=0.01

	if hp<=0
	other.PlayerScore=points
	else other.PlayerScore=1
	with other {hitSource.PlayerScore+=PlayerScore with hitSource combo_points()}
	}
	


	if other.object_index!=oProjectile and other.hitSource.weaponIsGun=0
	with other.hitSource
	if weaponAttack=1
	weaponLife-=1-1*global.Cheat[10]*global.NoCheat

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

if isNoBlood=1 ///Check if enemy doesn't have blood, which will replace the blood with something else
{
if fx.sprite_index=spr_blood fx.sprite_index=spr_hitflash2
if fx.sprite_index=spr_blood2 fx.sprite_index=spr_hitflash
if fx.sprite_index=spr_blood3 fx.sprite_index=spr_hitflash
if fx.sprite_index=spr_blood4 fx.sprite_index=spr_hitflash5
}
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
	AnimFrame=0
	anim=61 recovery=10
	shaketime=30

	if hp<=0 {HitType=1  event_user(0)}
	}



}
