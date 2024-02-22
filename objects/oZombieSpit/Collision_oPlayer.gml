/// @description Insert description here
// You can write your code in this editor
if hit=0
{
with (other) {
if (z-height)<(other.z) and (z)>(other.z-other.height)
with other
{
if other.immune=0 and other.hurt=0 and other.recovery=0 and other.Throw=0
{flashFX(x,y,z,spr_zombiespithit,0,1,10,1,1,c_white,1)
if other.x>xstart {other.HitForceReact=2}
else {other.HitForceReact=-2}
with other
{PlaySoundNoStack(snd_melthit) 
	HitForceReactZ=-4
HitType=44 event_user(0) recovery=10 dizzyHit=0  hp-=0.1
}
instance_destroy()
}
}
}



}