/// @description Insert description here
//Feather disable all
autopause=0;
var i=0;
repeat(4)
{
if PenemyhpD[i]!=clamp(PenemyhpD[i],Penemyhp[i]-0.05,Penemyhp[i]+0.05)
{
if PenemyhpD[i]>Penemyhp[i] PenemyhpD[i]-=0.025 else PenemyhpD[i]+=0.025
}else PenemyhpD[i]=Penemyhp[i]
i+=1;
}

//Scan for new input from a new source, and assign it to an unconnected player
var _new_source = input_source_detect_new();
if (_new_source != undefined)
{
    var _i = 0;
    repeat(INPUT_MAX_PLAYERS)
    {
		

		
		if (!input_player_connected(_i))
		{
            input_source_set(_new_source, _i, true);

if _i=0
{
global.ConsoleType="PC"
if (input_source_using(INPUT_GAMEPAD, _i))
{global.ConsoleType="PS"
var _gp=input_player_get_gamepad_type(_i)
if _gp=INPUT_GAMEPAD_TYPE_XBOX_360 or _gp=INPUT_GAMEPAD_TYPE_XBOX_ONE
global.ConsoleType="XBOX"
if _gp=INPUT_GAMEPAD_TYPE_PS5 or _gp=INPUT_GAMEPAD_TYPE_PS4 or _gp=INPUT_GAMEPAD_TYPE_PSX
global.ConsoleType="PS"
if _gp=INPUT_GAMEPAD_TYPE_SWITCH or _gp=INPUT_GAMEPAD_TYPE_GAMECUBE// or _gp=INPUT_GAMEPAD_TYPE_UNKNOWN
global.ConsoleType="SWITCH"
}				
}
            input_verb_consume(all, _i);
			
			//if input_player_disconnect(_i) 
			
			
				
				
            break;
        }
        
        ++_i;
    }
}

//If a player presses a pause button, disconnect them
var _i = 0;
repeat(INPUT_MAX_PLAYERS)
{
    if (input_player_connected(_i))
    {
       // if (input_check_pressed("pause", _i)) input_source_clear(_i);
	   if (!input_player_connected(_i)) autopause=1
    }
    
    ++_i;
}


playerAmount=0;
if charstatsetup=0
{

if instance_exists(oPlayer)
{
if oPlayer.anim=50 noshowtime=0

if global.Cheat[7] and global.NoCheat=1 and minigameroom=0
mirrorMode=global.Cheat[7];
with oPlayer
{
if dead global.ArcadeDeath=1

if ContinueMode=0 oControl.playerAmount+=1;
	
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
	
if global.MenuGlobal!=0 {
global.P1Score=0
global.P2Score=0
global.P3Score=0
global.P4Score=0
oPlayer.PlayerScore=0 PlayerLife=global.LifeStart global.Continues=global.ContinueStart
	global.P1ScoreLife=0
	global.P2ScoreLife=0
	global.P3ScoreLife=0
	global.P4ScoreLife=0
	}

if global.FriendlyFire {isPlayer=playerNO selfatk.isPlayer=isPlayer}



if room=rm_stagesnow
oPlayer.Cweather=1; 

difficulty_check()

}

if instance_exists(oPlayerNoControl) 
{
oPlayerNoControl.x=camX+320
oPlayerNoControl.ground=1//instance_nearest(camX+320,0,oPlayer).ground
oPlayerNoControl.canmove=1//instance_nearest(camX+320,0,oPlayer).canmove
oPlayerNoControl.anim=0//instance_nearest(camX+320,0,oPlayer).anim
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

