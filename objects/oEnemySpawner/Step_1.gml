/// @description Insert description here
// You can write your code in this editor
playernumber=0;
if instance_exists(oPlayer)
{with oPlayer if ContinueMode=0 oEnemySpawner.playernumber+=1;
		
}

if !instance_exists(P2en1)
and !instance_exists(P2en2)
and !instance_exists(P2en3)
and !instance_exists(P2en4)
and !instance_exists(P2en5)
and !instance_exists(P3en1)
and !instance_exists(P3en2)
and !instance_exists(P3en3)
and !instance_exists(P3en4)
and !instance_exists(P3en5)
and !instance_exists(P4en1)
and !instance_exists(P4en2)
and !instance_exists(P4en3)
and !instance_exists(P4en4)
and !instance_exists(P4en5)
noextraenemies=1;
else
noextraenemies=0;

harmed2=noone;
harmed=noone;
var _radius=2
var _highest=270;
var _list = ds_list_create();
var _num = collision_rectangle_list(oControl.camX-16, oControl.camY, oControl.camX+320+16,oControl.camY+32+240, oPlayer, false,true, _list, true);
if (_num > 0)
{for (var i = 0; i < _num; ++i;)
{harmed=_list[| i];
var harmeddepth=harmed.x
if _highest>=harmeddepth
{
_highest=harmeddepth
harmed2=harmed;
}}}
if harmed2!=noone
{
if harmed2.ContinueMode=0 playerClosest=harmed2;
}
ds_list_destroy(_list)