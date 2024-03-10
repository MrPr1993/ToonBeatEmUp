/// @description Insert description here
// You can write your code in this editor
if act=1
{
if other.ground=1 and other.immune=0 and other.hurt=0 and other.recovery=0 and other.Throw=0 and atk=1
and other.hp!=0
{other.hp-=damage
	if other.hp<=0
{
with other
{canmove=0
hp=0
HitType=44  	sentflying=0
	zSpeed=0 hit_reaction()
}
}
}
}

