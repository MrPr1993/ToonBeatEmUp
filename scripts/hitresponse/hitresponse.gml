function hitresponse() {
	hp-=other.damage/(defense+extradefense)
	roll=other.roll

	other.hitID=id

	recovery=other.recovery

	if !(x>other.SourceX and image_xscale=-1)
	and !(x<other.SourceX and image_xscale=1)
	hitBack=1 else hitBack=0
	
dizzyPercentage=random_range(0,100)
	if !dizzyPercentage=clamp(dizzyPercentage,dizzyPercentageMin,dizzyPercentageMax)
	dizzyHit=1;
	else
	dizzyHit=other.dizzyAtk
	
	cutDMG=other.isCut
	

	



	PlaySound(other.HitSound)

	//if x>other.SourceX image_xscale=-1 else image_xscale=1 
	//flashFX(x-8*image_xscale,y+2,z+other.flashZ,other.spriteFX,other.indexFX,other.speedFX,other.spriteTime,other.xScaleFX,other.yScaleFX,other.blendFX,other.alphaFX)
	if other.object_index!=oProjectile
	flashFX(x-other.flashX*image_xscale,y+other.flashY,z-other.flashZ,other.spriteFX,other.indexFX,other.speedFX,other.spriteTime,other.xScaleFX,other.yScaleFX,other.blendFX,other.alphaFX)
	else
	flashFX(other.x,other.y,other.z,other.spriteFX,other.indexFX,other.speedFX,other.spriteTime,other.xScaleFX,other.yScaleFX,other.blendFX,other.alphaFX)
	
	
	fx.isDepth=other.isDepth fx.speedFX=other.speedFX



	HitType=other.MoveType

	targetHeightHit=other.targetHeight


	if hitBack=0
	HitForceReact=other.HitForce*image_xscale
	else
	HitForceReact=-other.HitForce*image_xscale
	HitForceReactZ=other.HitForceZ

	event_user(0)







}
