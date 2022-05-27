/// @description Insert description here
// You can write your code in this editor
if other.atk=1 and other.hitSource.isEnemy=0
if hit=0
if z<other.z+height
{
if x>other.hitSource.x face=1 else face=-1
	
if z>other.z-1
or z+height<other.z+other.height
{
flashFX(other.x,other.y+2,other.z-32,spr_hitflash,0,1,5,1,1,c_white,1)
PlaySoundNoStack(snd_hit)
event_user(0)
}
}

