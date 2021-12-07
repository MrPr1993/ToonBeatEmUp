with (other) {
if (z-height)<(other.z) and (z)>(other.z-other.height)
with other
{
if act=1
{
if other.immune=0 and other.hurt=0 and other.recovery=0 and other.Throw=0 and roll=0 and ground=1 and other.ground=1
{ roll=1
with other
{PlaySoundNoStack(snd_swing) cutDMG=0
HitType=8 event_user(0) recovery=120 
//flashFX(x-8*image_xscale,y+2,z-32,spr_hitflash,0,1,10,1,1,c_white,1)
}if other.x>x image_xscale=1 else image_xscale=-1 event_user(0)
}
}
}

}
