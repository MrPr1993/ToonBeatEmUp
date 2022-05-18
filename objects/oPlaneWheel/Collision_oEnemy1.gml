/// @description Insert description here
// You can write your code in this editor
if danger=2
{
with other
{
if immune=0
{
if isGrabbed=0
{
if invincible=0 and recovery=0 and superThrown=0 and anim!=6
{hp-=0.2 flashFX(x,y,z-32,spr_hitflash,0,0.5,10,1,1,c_white,1) PlaySound(snd_hit)
HitType=4 event_user(0)
}
}
}
}
}
