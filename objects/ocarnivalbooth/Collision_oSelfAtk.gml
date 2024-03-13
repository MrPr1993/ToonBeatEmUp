if other.atk=1 and destroyed=0
if recovery=0
if z<other.z+height
{
if z>other.z-1
or z+height<other.z+other.height
{
if x>other.SourceX sourceCheckX=-1 else sourceCheckX=1 
if y>other.y-8 sourceCheckY=-1 else sourceCheckY=1 

hp-=other.damage*2


shakefrom=sourceCheckX

other.PlayerScore=10
with other {hitSource.PlayerScore+=PlayerScore}

other.comboHit=90

PlaySoundNoStack(snd_metalhit)
	PlaySound(other.HitSound)
	flashFX(other.x,other.y,other.z,other.spriteFX,other.indexFX,other.speedFX,other.spriteTime,other.xScaleFX,other.yScaleFX,other.blendFX,other.alphaFX)
	fx.isDepth=other.isDepth fx.speedFX=other.speedFX


with other.hitSource
{if object_index=oPlayer
if weaponAttack=1
weaponLife-=1-1*global.Cheat[10]
}
recovery=10
shaketime=10

oControl.enemyhp=hp oControl.hpLerp=0 oControl.enemymaxhp=maxhp
oControl.enemyPortraitSpr=spr_miscface
oControl.enemyPortraitIndex=0
oControl.enemyname=name
oControl.enemyShowTime=30
oControl.hpLerp=0
oControl.enemyhplayer=0
oControl.enemyID=0
with oControl
{current_pal=0;
my_pal_sprite=spr_enemypal
}

if hp<0 event_user(0)
}

}



