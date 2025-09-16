/// @description Insert description here
// You can write your code in this editor

if gameready=0
{
if gamesetting=0
{gamesetting=1



with oControl
{global.Continues=0; with oPlayer PlayerLife=0
if oArenaSurvival.playerFight
with oPlayer {isPlayer=playerNO selfatk.isPlayer=playerNO

	if oArenaSurvival.object_index=oArenaSurvival {PlayerLife=0;	
		
	}
	else
	{
	PlayerLife=global.MultiVSLife	
	maxhp=0.5*global.MultiVSHP;
	hp=maxhp
	}
	}
	

P1SpawnX=32
P1SpawnY=176

P2SpawnX=320-32
P2SpawnY=176

P3SpawnX=32
P3SpawnY=224

P4SpawnX=320-32
P4SpawnY=224
	
with p1 if object_index=oPlayer {alarm[0]=90 x=-96 y=176 key_right=1 } else {visible=0 x=-99999999999}
with p2 if object_index=oPlayer  {alarm[0]=90 x=320+96 y=176 key_right=0  key_left=-1 image_xscale=-1 } else {visible=0 x=-99999999999}
with p3 if object_index=oPlayer  {alarm[0]=90 x=-96 y=224 key_right=1 } else {visible=0 x=-99999999999}
with p4 if object_index=oPlayer  {alarm[0]=90 x=320+96 y=224 key_right=0 key_left=-1 image_xscale=-1 } else {visible=0 x=-99999999999}
}
}


if oPlayer.areaEntry=0
if gameready=0
{
gameready=1

alarm[0]=2
}
}

if gameready=1
{
if totalscore!=-1
{
totalscore=0;
with oPlayer
{
oArenaSurvival.totalscore+=PlayerScore
}	
if totalscore>=global.HiScoreSurvival {global.HiScoreSurvival=totalscore}
}
}

if extrastep!=-1 extrastep();



