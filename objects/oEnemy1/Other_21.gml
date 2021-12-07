if act=1
{

if dead=0 and ((hp>=0 and hplayer=0) or hplayer!=0)
{
PlaySoundNoStack(choose(DamageVoice1,DamageVoice2,DamageVoice3))
}


if oControl.enemyID=-1
{oControl.enemyhp=hp oControl.hpLerp=hp}

oControl.enemyShowTime=30
oControl.hpLerp=hp

oControl.enemyID=1
}

