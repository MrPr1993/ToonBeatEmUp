if act=1
{
if other.z=clamp(other.z,z,z+128) and other.immune=0 and other.hurt=0 and other.recovery=0 and other.Throw=0 and atk=1
and other.act=1 and harmEnemy=1
{other.hp-=damage/(other.defense+other.extradefense)
with other
{
HitType=5 event_user(0) hud_show() 
}
}
}

