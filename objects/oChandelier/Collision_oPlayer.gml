if act=1
{
if atk=1 and z>=other.z-32 and other.recovery=0 and other.Throw=0 and other.hurt=0 and other.dead=0 and other.immune=0
{other.hp-=damage/(other.defense+other.extradefense)
with other
{
HitType=4 event_user(0)
}
}


if under=0
{under=1 shake=1 alarm[0]=60 PlaySound(snd_break2)}
}

