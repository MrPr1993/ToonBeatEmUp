/// @description Spawn Barrel 2

//bar=instance_create(__view_get( e__VW.XView, 0 )+320+64,choose(192,192,240),oBarrelRoll)
//with bar {z=choose(0,-32,-64,-96) roll=1 image_xscale=-1 BounceOnce=choose(0,1) if BounceOnce=1 weapon_pal=2;}

if oControl.continueScreen=0
{
if specialSet8<20
{
if specialSet8=0
barrel_create(__view_get( e__VW.XView, 0)+320+64,192,-32,1,-1,0,1,0,-8)
	
if specialSet8=1
barrel_create(__view_get( e__VW.XView, 0)+320+64,160,-32,1,-1,0,1,0,-8)

if specialSet8=2
barrel_create(__view_get( e__VW.XView, 0)+320+64,224,-32,1,-1,0,1,0,-8)

if specialSet8=3
{
barrel_create(__view_get( e__VW.XView, 0)+320+64,160,0,1,-1,1,2,0,-2)
barrel_create(__view_get( e__VW.XView, 0)+320+64,224,0,1,-1,1,2,0,-2)
}

if specialSet8=4
{
barrel_create(__view_get( e__VW.XView, 0)+320+64,160,-32,1,-1,0,1,0,-8)
barrel_create(__view_get( e__VW.XView, 0)+320+64,192,0,1,-1,1,2,0,-2)
}

if specialSet8=5
{
barrel_create(__view_get( e__VW.XView, 0)+320+64,224,-32,1,-1,0,1,0,-8)
barrel_create(__view_get( e__VW.XView, 0)+320+64,190,0,1,-1,1,2,0,-4)
}

if specialSet8=6
{
barrel_create(__view_get( e__VW.XView, 0)+320+64,160,-32,1,-1,0,1,0,-8)
barrel_create(__view_get( e__VW.XView, 0)+320+64,224,-32,1,-1,0,1,0,-8)
}
	
if specialSet8=7
{
barrel_create(__view_get( e__VW.XView, 0)+320+64,224,-32,1,-1,1,2,0,-4)
barrel_create(__view_get( e__VW.XView, 0)+320+64,192,-32,1,-1,1,2,0,-4)
}
	
if specialSet8=8
{
barrel_create(__view_get( e__VW.XView, 0)+320+64,224,-32,1,-1,1,2,0,-2)
barrel_create(__view_get( e__VW.XView, 0)+320+64,160,-32,1,-1,1,2,0,-2)
}
	
if specialSet8=9
{
barrel_create(__view_get( e__VW.XView, 0)+320+64,192,-32,1,-1,1,2,0,-2)
barrel_create(__view_get( e__VW.XView, 0)+320+64,160,-32,1,-1,1,2,0,-2)
}

if specialSet8=10
{
barrel_create(__view_get( e__VW.XView, 0)+320+64,192,-32,1,-1,0,1,0,-8)
barrel_create(__view_get( e__VW.XView, 0)+320+64,224,-32,1,-1,0,1,0,-8)
}

	
if specialSet8=11
{
barrel_create(__view_get( e__VW.XView, 0)+320+64,160,-32,1,-1,1,2,0,-2)
barrel_create(__view_get( e__VW.XView, 0)+320+64,224,-32,1,-1,1,2,0,-2)
}

if specialSet8=12
{
barrel_create(__view_get( e__VW.XView, 0)+320+64,192,-32,1,-1,0,1,0,-8)
barrel_create(__view_get( e__VW.XView, 0)+320+64,224,-32,1,-1,0,1,0,-8)
}

if specialSet8=13
{
barrel_create(__view_get( e__VW.XView, 0)+320+64,192,-32,1,-1,0,1,0,-8)
barrel_create(__view_get( e__VW.XView, 0)+320+64,192,-32,1,-1,0,1,0,-8)
}

if specialSet8=14
{
barrel_create(__view_get( e__VW.XView, 0)+320+64,160,-32,1,-1,0,1,0,-8)
barrel_create(__view_get( e__VW.XView, 0)+320+64,192,-32,1,-1,0,1,0,-8)
}

if specialSet8=15
{
barrel_create(__view_get( e__VW.XView, 0)+320+64,160,-32,1,-1,0,1,0,-8)
barrel_create(__view_get( e__VW.XView, 0)+320+64,224,-32,1,-1,0,1,0,-8)
}

if specialSet8=16
{
barrel_create(__view_get( e__VW.XView, 0)+320+64,224,-32,1,-1,0,1,1,-8)
barrel_create(__view_get( e__VW.XView, 0)+320+64,192,-32,1,-1,0,1,0,-8)
}

if specialSet8=17
{
barrel_create(__view_get( e__VW.XView, 0)+320+64,224,-32,1,-1,0,1,0,-8)
barrel_create(__view_get( e__VW.XView, 0)+320+64,160,-32,1,-1,0,1,1,-8)
}

if specialSet8=18
{
barrel_create(__view_get( e__VW.XView, 0)+320+64,224,-32,1,-1,0,0,1,-8)
barrel_create(__view_get( e__VW.XView, 0)+320+64,192,-32,1,-1,0,1,1,-8)
}

if specialSet8=19
{
barrel_create(__view_get( e__VW.XView, 0)+320+64,160,-32,1,-1,0,1,1,-8)
barrel_create(__view_get( e__VW.XView, 0)+320+64,192,-32,1,-1,0,1,1,-8)
barrel_create(__view_get( e__VW.XView, 0)+320+64,224,-32,1,-1,0,1,1,-8)
}

	
	specialSet8+=1
	
timeline_position=91
}
}
else
timeline_position-=2
