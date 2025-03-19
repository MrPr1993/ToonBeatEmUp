if act=1
{

var sispitch=1.0;

if current_pal!=0 sispitch=1.2;

if dead=0 and ((hp>=0 and hplayer=0) or hplayer!=0)
if hp!=0
{
PlaySoundNoStackPitch(choose(DamageVoice1,DamageVoice2,DamageVoice3),sispitch+choose(-random(0.1),random(0.1)))

}


//if oControl.enemyID=-1
//{oControl.enemyhp=hp oControl.hpLerp=hp}

//oControl.enemyShowTime=30
//oControl.hpLerp=hp

//oControl.enemyID=1
}


