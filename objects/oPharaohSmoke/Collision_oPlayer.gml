/// @description Insert description here
// You can write your code in this editor
if (sprite_index=spr_psmoke and image_index>3 and (instance_exists(oPharaoh)) and isPharaoh=1)
or (isPharaoh=0 and image_index>3)
{
with (other) {
if (z-height)<(other.z) and (z)>(other.z-other.height)
with other
{
if other.immune=0 and other.hurt=0 and other.recovery=0 and other.Throw=0
{
other.HitType=MoveType other.dizzyHit=dizzyHit other.recovery=10 	

with other
{PlaySoundNoStack(snd_hit) 
event_user(0)
}
image_index=0 sprite_index=spr_smokeend
}
}

}
}