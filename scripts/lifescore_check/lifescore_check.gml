// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function lifescore_check(_enable,_player,_currentP,_instant,_isplayer){
	
if _enable
{
var _get1up=_instant;
switch(_currentP)
{case 0: if PlayerScore>=10000 _get1up=1; break;
case 1: if PlayerScore>=30000  _get1up=1; break;
case 2: if PlayerScore>=70000  _get1up=1; break;
case 3: if PlayerScore>=100000  _get1up=1; break;
case 4: if PlayerScore>=150000  _get1up=1; break;
case 5: if PlayerScore>=200000  _get1up=1; break;
}

if _get1up=1
{
if _instant=0
{
if _player=1 global.P1ScoreLife+=1;
if _player=2 global.P2ScoreLife+=1;
if _player=3 global.P3ScoreLife+=1;
if _player=4 global.P4ScoreLife+=1;
}
PlaySoundNoStack(snd_1up) playerIcon=spr_extralifep
if _isplayer
{
showp1=1 alarm[5]=120 
PlayerLife+=1; 
}
}
}
}