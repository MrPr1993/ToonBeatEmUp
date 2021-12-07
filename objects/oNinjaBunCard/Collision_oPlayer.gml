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
with other
{PlaySoundNoStack(snd_cut) flashFX(x-8*image_xscale,y+2,z-32,spr_blood,0,1,10,1,1,c_white,1)
HitType=1 event_user(0) recovery=10 dizzyHit=0 hp-=0.1
}
instance_destroy()
}
}
}



}