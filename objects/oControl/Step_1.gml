/// @description Insert description here
// You can write your code in this editor


if charstatsetup=0
{
if instance_exists(oPlayer)
{with oPlayer
{
if controlNO=1 {PlayerLife=global.P1Life PlayerScore=global.P1Score character=global.P1Char;
	
	}
if controlNO=2 {PlayerLife=global.P2Life PlayerScore=global.P2Score character=global.P2Char;
	//lifescore_check(1,playerNO,global.P2ScoreLife,0,1)
	}
if controlNO=3 {PlayerLife=global.P3Life PlayerScore=global.P3Score character=global.P3Char;
	//lifescore_check(1,playerNO,global.P3ScoreLife,0,1)	
	}
if controlNO=4 {PlayerLife=global.P4Life PlayerScore=global.P4Score character=global.P4Char;
	//lifescore_check(1,playerNO,global.P4ScoreLife,0,1)
	}

if global.FriendlyFire {isPlayer=playerNO selfatk.isPlayer=isPlayer}

if room=rm_stagesnow
oPlayer.Cweather=1;
}



if p1.x>camX+160 and p2.x>camX+160 and p3.x>camX+160 and p4.x>camX+160
allPlayersMid=1 else allPlayersMid=0

if p1.x>camX+300 and p2.x>camX+300 and p3.x>camX+300 and p4.x>camX+300
allPlayersEdge=1 else allPlayersEdge=0

if (p1.canmove and p1.ground)
and (p2.canmove and p2.ground)
and (p3.canmove and p3.ground)
and (p4.canmove and p4.ground)
allPlayersMove=1 else allPlayersMove=0

if instance_exists(oPlayerNoControl) 
{
oPlayerNoControl.x=camX+320
oPlayerNoControl.ground=instance_nearest(camX+320,0,oPlayer).ground
oPlayerNoControl.canmove=instance_nearest(camX+320,0,oPlayer).canmove
}
}
charstatsetup=1

if global.StageSelect=1
{
prevstagecheck1=0
prevstagecheck2=0
prevstagecheck3=0
}
}

