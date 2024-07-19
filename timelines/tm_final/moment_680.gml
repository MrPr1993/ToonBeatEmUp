/// @description Final Boss Appear
/// @description Scene Switch
if instance_exists(scenepart)
{
timeline_position-=1;
}
else
{

with oPlayer
{canControl=0
visible=1
hspeed=0
image_xscale=1
areaEntry=0 z=-300 
canmove=0
	hurt=1
	ground=0
	zSpeed=0
	sentflying=0
	canBounce=0
	image_index=3 sprite_index=ThrownSpr
	AnimFrame=3
	anim=5
	thrownDMG=0

}
}