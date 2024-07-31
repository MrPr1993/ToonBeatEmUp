/// @description Insert description here
// You can write your code in this editor
if hit=0
{
with (other) {
if (z-height)<(other.z) and (z)>(other.z-other.height)
with other
{


if other.immune=0 and other.hurt=0 and other.recovery=0 and other.Throw=0
{

	
other.HitType=HitType	
other.hp-=damage
PlaySoundNoStack(HitSound)
with other
{
	if !(x>other.SourceX and image_xscale=-1)
	and !(x<other.SourceX and image_xscale=1)
	hitBack=1 else hitBack=0
	
	flashFX(x-8*image_xscale,y+2,other.z,other.HitSpark,0,1,10,1,1,c_white,1)
	
event_user(0) recovery=10 dizzyHit=0 
}
if HitQuake!=-1 oControl.quakeFXTime=HitQuake;
if disappearHit=1
instance_destroy()
}
}
}



}