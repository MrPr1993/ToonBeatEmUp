/// @description Insert description here
// You can write your code in this editor
if hit=0
{
with (other) {
if (z-height)<(other.z) and (z)>(other.z-other.height)
with other
{
if other.immune=0 and other.hurt=0 and other.recovery=0 and other.Throw=0
{flashFX(x,y,z,hitflash,0,1,10,1,1,c_white,1)
if other.x>xstart {other.HitForceReact=2}
else {other.HitForceReact=-2}
other.cutDMG=isCut
other.HitType=MoveType other.hp-=damage
PlaySoundNoStack(hitSnd) 
with other
{
	HitForceReactZ=-4
 event_user(0) recovery=10 dizzyHit=0  
}
instance_destroy()
}
}
}



}