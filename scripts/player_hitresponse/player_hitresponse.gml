function player_hitresponse() {
	hp-=other.damage/(defense+extradefense)
	roll=other.roll



	if !(x>other.SourceX and image_xscale=-1)
	and !(x<other.SourceX and image_xscale=1)
	hitBack=1 else hitBack=0

	dizzyHit=other.dizzyAtk

	PlaySoundNoStack(other.HitSound)

	//if x>other.SourceX image_xscale=-1 else image_xscale=1 
	flashFX(x,y+2,z-32,spr_hitflash,0,1,10,1,1,c_white,1)

	super+=0.25*canSuper

	HitType=other.MoveType

	targetHeightHit=other.targetHeight

	event_user(0)


	with other {with selfsource {hitCheck=1 hud_show()}}




}
