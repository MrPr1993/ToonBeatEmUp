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
hp=0//(oniID1.hp+oniID2.hp)/2

if dead=0
{
var nooni1=0;
var nooni2=0;

if oniID1=-1 nooni1=1;
else
{
if !instance_exists(oniID1)  oniID1=-1;
else
{
hp+=oniID1.hp/2;
if oniID1.hp<=0 or oniID1.dead {nooni1=1; oniID1=-1;}
}
}

if oniID2=-1 nooni2=1;
else
{
if !instance_exists(oniID2)  oniID2=-1;
else
{
hp+=oniID2.hp/2;
if oniID2.hp<=0 or oniID2.dead {nooni2=1; oniID2=-1;}
}
}
	
//if (oniID1.hp=0 and oniID2.hp=0)
//or (oniID1.hp<=0 and oniID2.hp<=0)
//or (oniID1.dead=1 and oniID2.dead=1)
if nooni1=1 and nooni2=1
{hp=0 dead=1 PlaySoundNoStack(snd_oni2)
	if instance_exists(oEnemy1) with oEnemy1 if dead=0 {hp=0 DeathCryOnce=1 HitType=1 event_user(0)}
	if isBoss=1
	{
	room_speed=10 
	oControl.alarm[9]=30
	}
	}
}

}

}
