// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function timer_set(){
	var timerset;
timerset=argument0
if timerset=0
{
with oControl
{if instance_exists(oPlayer) with oPlayer {recovery=9999 recoveryThrow=9999}
	
nopleasewait=0 timecheck=alarm[0] alarm[0]=10000000}}
else
with oControl
{
if instance_exists(oPlayer) with oPlayer {recovery=2 recoveryThrow=2}
nopleasewait=1
alarm[0]=60
}

}