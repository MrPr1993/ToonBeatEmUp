/// @description Final Boss Appear
/// @description Scene Switch
if instance_exists(scenepart)
{
timeline_position-=1;
}
else
{
tt=instance_create_depth(oControl.camX-8,0,-1,oTrainFXSpot) with tt
{specialtimes[1]=1
visible=0 image_xscale=999
image_yscale=999
specialscript=function()
{
layer_y("FinalPhase",round(Train1Y))

if specialtimes[1]=1
specialtimes[0]+=0.25 else specialtimes[0]-=0.25


if specialtimes[1]=1 if specialtimes[0]>=8 specialtimes[1]=-1
if specialtimes[1]=-1 if specialtimes[0]<=-8 specialtimes[1]=1

Train1Y=lerp(Train1Y,specialtimes[0],0.05)

Train1Y=clamp(Train1Y,-8,8)
}

}

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

specialanimscript=function()
{
if canmove
{AnimFrame=0 canmove=0
anim=9999
image_index=0
}

if anim=9999
{
AnimFrame+=0.1
if AnimFrame<1
{image_index=0
sprite_index=PointSpr
}
else
{
switch(character)
{
case 0: sprite_index=spr_viva_freact break;
case 1: sprite_index=spr_hina_freact break;
case 2: sprite_index=spr_bahati_freact break;
case 3: sprite_index=spr_sofia_freact break;
}
if image_index<=1.5 image_index+=0.25
}

if instance_exists(oDastardly2)
if oDastardly2.AnimFrame>=4 {AnimFrame=0 anim=10000}
}

if anim=10000 ///Oh hecc
{
switch(character)
{
case 0: sprite_index=spr_viva_freact break;
case 1: sprite_index=spr_hina_freact break;
case 2: sprite_index=spr_bahati_freact break;
case 3: sprite_index=spr_sofia_freact break;
}


}

}

}
}