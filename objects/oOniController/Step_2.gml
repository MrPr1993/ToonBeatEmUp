/// @description Insert description here
// You can write your code in this editor
if animLock=0
{
if mode=0
{
if modetime=0 mode=1 else modetime-=1
}
if mode=1
{
curtain1.hspeed=-2
curtain2.hspeed=-2
curtain3.hspeed=-2
}
if mode=4
{
hp=(oniID1.hp+oniID2.hp)/2

if dead=0
{
if oniID1.hp=0 and oniID2.hp=0 {hp=0 dead=1
	if instance_exists(oEnemy1) with oEnemy1 if dead=0 {hp=0 DeathCryOnce=1 HitType=1 event_user(0)}
	room_speed=10 
	oControl.alarm[9]=30	
	}
}

}

}
