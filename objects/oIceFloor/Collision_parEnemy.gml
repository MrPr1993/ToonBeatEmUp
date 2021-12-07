if act=1
{
if other.ground=1 and other.hurt=0 and other.recovery=0 and other.Throw=0 and atk=1 and other.anim!=41
and other.act=1
{other.hp-=damage/(other.defense+other.extradefense)
with other
{
HitType=6 event_user(0) hud_show()
}
}
}

