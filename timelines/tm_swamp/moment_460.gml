/// @description Spawn Barrel 1

//specialSet8=20///for test

if oControl.continueScreen=0
{
specialSet7=random(100)
//specialSet8=20

if specialSet8=5
{
//barrel_create_alt(oCroc,__view_get( e__VW.XView, 0)+320+64,160,0,1,-1,1,1,0,-2)
//barrel_create_alt(oCroc,__view_get( e__VW.XView, 0)+320+64,224,0,1,-1,1,1,0,-2)
sd=instance_create(oControl.camX+320-40,144,oSwampDanger) sd.type=0
}

if specialSet8=6
{
barrel_create_alt(oCroc,__view_get( e__VW.XView, 0)+320+64,224,0,1,-1,0,1,0,-8)
barrel_create_alt(oCroc,__view_get( e__VW.XView, 0)+320+64,192,0,1,-1,0,1,0,-8)
}

if specialSet8=7
{
barrel_create_alt(oCroc,__view_get( e__VW.XView, 0)+320+64,192,0,1,-1,1,2,0,-2)
barrel_create_alt(oCroc,__view_get( e__VW.XView, 0)+320+64,224,0,1,-1,1,2,0,-2)
sd=instance_create(oControl.camX+320-40,144,oSwampDanger) sd.type=0
}

if specialSet8=8
{
barrel_create_alt(oCroc,__view_get( e__VW.XView, 0)+320+64,192,0,1,-1,0,0,0,-8)
barrel_create_alt(oCroc,__view_get( e__VW.XView, 0)+320+64,160,0,1,-1,0,0,0,-8)
}

if specialSet8=9
{
barrel_create_alt(oCroc,__view_get( e__VW.XView, 0)+320+64,192,0,1,-1,1,1,0,-2)
barrel_create_alt(oCroc,__view_get( e__VW.XView, 0)+320+64,224,0,1,-1,1,1,0,-2)
}

if specialSet8=10
{
barrel_create_alt(oCroc,__view_get( e__VW.XView, 0)+320+64,224,0,1,-1,0,1,0,-8)
barrel_create_alt(oCroc,__view_get( e__VW.XView, 0)+320+64,192,0,1,-1,0,1,0,-8)
}

if specialSet8=11
{
barrel_create_alt(oCroc,__view_get( e__VW.XView, 0)+320+64,192,0,1,-1,1,2,0,-2)
barrel_create_alt(oCroc,__view_get( e__VW.XView, 0)+320+64,224,0,1,-1,1,2,0,-2)
}

if specialSet8=12
{
barrel_create_alt(oCroc,__view_get( e__VW.XView, 0)+320+64,192,0,1,-1,0,0,0,-8)
barrel_create_alt(oCroc,__view_get( e__VW.XView, 0)+320+64,160,0,1,-1,0,0,0,-8)
}

if specialSet8=13
{
barrel_create_alt(oCroc,__view_get( e__VW.XView, 0)+320+64,192,0,1,-1,1,1,0,-2)
barrel_create_alt(oCroc,__view_get( e__VW.XView, 0)+320+64,224,0,1,-1,1,1,0,-2)
}

if specialSet8=14
{
barrel_create_alt(oCroc,__view_get( e__VW.XView, 0)+320+64,160,0,1,-1,0,0,0,-8)
barrel_create_alt(oCroc,__view_get( e__VW.XView, 0)+320+64,192,0,1,-1,0,0,0,-8)
}

if specialSet8=15
{
barrel_create_alt(oCroc,__view_get( e__VW.XView, 0)+320+64,224,0,1,-1,0,0,0,-8)
barrel_create_alt(oCroc,__view_get( e__VW.XView, 0)+320+64,192,0,1,-1,0,0,0,-8)
}

if specialSet8=16
{
barrel_create_alt(oCroc,__view_get( e__VW.XView, 0)+320+64,224,0,1,-1,0,0,0,-8)
barrel_create_alt(oCroc,__view_get( e__VW.XView, 0)+320+64,160,0,1,-1,0,0,0,-8)
}

if specialSet8=17
{
barrel_create_alt(oCroc,__view_get( e__VW.XView, 0)+320+64,224,0,1,-1,0,0,1,-8)
barrel_create_alt(oCroc,__view_get( e__VW.XView, 0)+320+64,192,0,1,-1,0,1,1,-8)
}

if specialSet8=19
{
barrel_create_alt(oCroc,__view_get( e__VW.XView, 0)+320+64,160,0,1,-1,1,2,0,-2)
barrel_create_alt(oCroc,__view_get( e__VW.XView, 0)+320+64,192,0,1,-1,1,2,0,-2)
barrel_create_alt(oCroc,__view_get( e__VW.XView, 0)+320+64,224,0,1,-1,1,2,0,-2)
}


}
else
timeline_position-=1