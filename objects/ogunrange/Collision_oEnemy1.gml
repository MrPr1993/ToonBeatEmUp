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

/// @description Hurt
	
if targetID!=-1
character_release(0,-4,2*image_xscale,0,3,5)
if dead=0 and ((hp>=0 and hplayer=0) or hplayer!=0)
if hp!=0
{
PlaySoundNoStack(choose(DamageVoice1,DamageVoice2,DamageVoice3))
}
	///Hurt Responses
	///You can use this to determine what animation the character will use
	///Depending on the HitType. Pretty useful if you, for example wants to have
	///your character become frozen if hit by an ice attack, or burned if hit by a fire attack.
	////The two are on the coding.

	canmove=0
	hurt=1
	shaketime=30
	throwing=0


	/////Cut Death
	canmove=0
	event_user(1) canBounce=1
	hurt=1
	ground=0
	zSpeed=-6
	if hitBack=0
	sentflying=4*-image_xscale
	else
	sentflying=4*image_xscale
	image_index=3 sprite_index=ThrownSpr
	AnimFrame=3
	anim=5
	


	event_user(12)
	///Special State for certain enemies after
	

	
	
	



}

	


}