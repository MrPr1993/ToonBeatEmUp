if instance_exists(oPharaoh)
if oPharaoh.hp!=0 and oPharaoh.dead=0
if act=1
{
if atk=1 and z>=other.z-32 and other.recovery=0 and other.Throw=0 and other.hurt=0 and other.dead=0
{other.hp-=damage/(other.defense+other.extradefense)
with other
{PlaySound(snd_hit)
HitType=4 event_user(0)
}
}
}

