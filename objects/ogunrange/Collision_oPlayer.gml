/// @description Insert description here
// You can write your code in this editor
if shootbuffer<2 and fire=2
with other
{
if Throw=0 and dead=0 and superThrown=0
and anim!=6 and recovery=0 and immune=0

if (z-height)<(other.z) and (z)>(other.z-other.height)
{

	hp-=0.2

	if !(x>other.x and image_xscale=-1)
	and !(x<other.x and image_xscale=1)
	hitBack=1 else hitBack=0

	shaketime=30

	targetHeightHit=choose(0,1,2)

	recovery=30

	//if x>other.SourceX image_xscale=-1 else image_xscale=1 


		flashFX(other.x,other.y,-64,spr_blood,0,0.25,10,1,1,c_white,1)

	fx.isDepth=1

	HitType=1

	event_user(0)
	


}
}