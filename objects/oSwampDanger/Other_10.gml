/// @description Insert description here
// You can write your code in this editor
x=oControl.camX+320+48
///144
var _treeset=spr_treehaz1
var _treemask=spr_treehaz1c;
if type=1
{
_treeset=spr_treehaz2
_treemask=spr_treehaz2c;
}
if type=2
{
_treeset=spr_treehaz3
_treemask=spr_treehaz3c;
}
if type=3
{
_treeset=spr_treehaz4
_treemask=spr_treehaz4c;
}

stree=instance_create_depth(x,144,-1,oBarrelRoll) with stree
{breakable=0 shadow=-1; image_xscale=-1; obstacletype=1
	sprite_index=_treeset; mask_index=_treemask;
	rollSpd=16
}

instance_destroy();
