if act=1
if canHarm=1
{
if other.z=clamp(other.z,z,z+128) and other.immune=0 and other.hurt=0 and other.recovery=0 and other.Throw=0 and atk=1
{
with other hpregister=hp
other.hp-=damage/(other.defense+other.extradefense)
with other
{if hpregister!=hp {global.PerfectRun=0; combo_stop();}
HitType=5 event_user(0)
}
}
}

