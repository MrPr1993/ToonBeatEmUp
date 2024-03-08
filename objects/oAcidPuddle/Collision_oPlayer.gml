/// @description Insert description here
// You can write your code in this editor
if act=1
{
if other.ground=1 and other.immune=0 and other.hurt=0 and other.recovery=0 and other.Throw=0 and atk=1
{other.hp-=damage
	if other.hp<=0
{
other.HitType=MoveType with other event_user(0)
}
}
}

