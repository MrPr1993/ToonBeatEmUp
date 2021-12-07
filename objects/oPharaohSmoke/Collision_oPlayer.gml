/// @description Insert description here
// You can write your code in this editor
if sprite_index=spr_psmoke and image_index>3 and (instance_exists(oPharaoh))
{
with (other) {
if (z-height)<(other.z) and (z)>(other.z-other.height)
with other
{
if other.immune=0 and other.hurt=0 and other.recovery=0 and other.Throw=0
{
with other
{PlaySoundNoStack(snd_hit) 
HitType=0 event_user(0) dizzyHit=1 recovery=10
}
image_index=0 sprite_index=spr_smokeend
}
}

}
}