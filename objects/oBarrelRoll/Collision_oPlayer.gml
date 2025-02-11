with (other) {
if (z-height+24)<(other.z) and (z)>(other.z-other.height)
with other
{
if act=1
{
if other.immune=0 and other.hurt=0 and other.recovery=0 and other.Throw=0 and roll=1
{
with other hpregister=hp
other.hp-=damage/(other.defense+other.extradefense)
with other
{PlaySoundNoStack(snd_hit) if hpregister!=hp {oControl.perfecthp=0}
HitType=4 event_user(0) recovery=60
flashFX(x-8*image_xscale,y+2,z-32,spr_hitflash,0,1,10,1,1,c_white,1)
}
event_user(0)
}
}
}

}
