/// @description Attack Setup
function enemy_endstep() {
	selfatk.flashZ=-32
	
	if act=1
	{
	///Attack Setup
	selfatk.isPlayer=isPlayer
	selfatk.x=x+(atkAddX)*image_xscale selfatk.y=y+atkAddY
	selfatk.type=hit selfatk.z=z-atkAddZ selfatk.SourceX=x
	selfatk.damage=damage+extradamage
	selfatk.isThrow=isThrow
	selfatk.MoveType=MoveType
	selfatk.dizzyAtk=dizzyAtk
	selfatk.HitForce=HitForce
	selfatk.HitForceZ=HitForceZ
	selfatk.targetHeight=targetHeight

	aff.x=x aff.y=y aff.z=z
	aff.dead=dead aff.canmove=canmove
	aff.hp=hp aff.atk=atk aff.hurt=hurt aff.ground=ground
	aff.immune=immune aff.act=act aff.recoveryThrow=recoveryThrow
	aff.anim=anim
	}
	else
	selfatk.atk=0

	height=height*image_yscale

	///Animation Setup
	if act=1
	{
	script_execute(enemyscript)
	}
	else image_speed=0

	if noMask=1
	mask_index=mask_none






}
