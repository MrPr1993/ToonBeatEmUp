if act=1
if immune=0
{
{
if Throw=0 and dead=0 and other.thrownAtk=1 and anim!=6
if other.z>z-height and other.z<z+2 and other.thrownPlayer!=-1 and other.thrownPlayer!=isPlayer and other.anim=5
if recovery=0
{
playerFrom=1;	

hp-=other.thrownAtkDmg/(defense+extradefense)

if !instance_exists(hitSource) hitSource=-1

if hitSource!=-1
{
if isEnemy=1
{
if hp<=0
with other hitSource.PlayerScore+=points
else
with other hitSource.PlayerScore+=pointshit
}
}

if other.object_index=oPlayer playerFrom=other.playerNO

shaketime=30

recovery=90

PlaySoundNoStack(snd_hit)

hud_show()

cutDMG=0



if !(x>other.x and image_xscale=-1)
and !(x<other.x and image_xscale=1)
hitBack=1 else hitBack=0

flashFX(x,y+2,z-32,spr_hitflash,0,1,5,1,1,c_white,1)


HitType=1

event_user(0)

}
}
}

