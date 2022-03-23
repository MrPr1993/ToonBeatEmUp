if act=1
{
if atk=1 and z>=other.z-32 and other.recovery=0 and other.Throw=0 and other.hurt=0 and other.dead=0
and other.act=1
{other.hp-=damage/(other.defense+other.extradefense)
with other
{
HitType=4 event_user(0) hud_show()
}
}
}

