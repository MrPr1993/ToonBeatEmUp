// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function hitreaction_armor(){
if act=1
{

//		if superarmor=1
//	{
//	if superarmortime>600 superarmorhp=5
//	else superarmortime=60
//	}
if (superarmor=0) or superarmorhp=0 or (superarmor=1 and hp<=0 and hplayer=0)
{hit_reaction() exit;}
else
{recovery=8 superarmorhp-=1 superarmortime=0}

if dead=1 ///Die even with super armor
{ground=0 canmove=0
event_user(1) canBounce=1
	zSpeed=-4

	if hitBack=0
	sentflying=2*-image_xscale
	else
	sentflying=2*image_xscale

	image_index=3 sprite_index=ThrownSpr
	AnimFrame=3
	anim=5
} else
{
superarmorFX=1
	if isEnemy=1
	{
	if hp<=0 and hplayer!=0
	{hp=maxhp+hplayertake hplayer-=1 if oControl.enemyID=1 hud_show()}

	hpscan()
	}
}

	}





}