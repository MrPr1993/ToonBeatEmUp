
if controlNO=1
{current_pal=global.p1Pal;
my_pal_sprite=global.p1Pals
}
if controlNO=2
{current_pal=global.p2Pal;
my_pal_sprite=global.p2Pals
}
if controlNO=3
{current_pal=global.p3Pal;
my_pal_sprite=global.p3Pals
}
if controlNO=4
{current_pal=global.p4Pal;
my_pal_sprite=global.p4Pals
}


if ContinueMode=0
{
if anim!=30 and anim!=31
isGrabbed=0 else isGrabbed=1

y=clamp(y,__view_get(e__VW.YView, 0),__view_get(e__VW.YView, 0)+240)

if fallHole=0
{
if areaEntry=0
x=clamp(x,__view_get( e__VW.XView, 0 ),__view_get( e__VW.XView, 0 )+320-16)
if image_xscale=1
{
if sentflying<0
{
if place_free(x+dashing-sentflying*-image_xscale,y)
{
if (x>=__view_get( e__VW.XView, 0 )+16 and x<=__view_get( e__VW.XView, 0 )+320-16)
x+=sentflying} else checkwall()
}
else
{
if place_free(x+dashing-sentflying*-image_xscale,y)
{
if (x>=__view_get( e__VW.XView, 0 )+16 and x<=__view_get( e__VW.XView, 0 )+320-16)
x+=sentflying} else checkwall()
}
}
else
{
if sentflying<0
{
if place_free(x-dashing-sentflying*image_xscale,y)
{
if (x>=__view_get( e__VW.XView, 0 )+16 and x<=__view_get( e__VW.XView, 0 )+320-16)
x+=sentflying} else checkwall()
}
else
{
if place_free(x-dashing-sentflying*image_xscale,y)
{
if (x>=__view_get( e__VW.XView, 0 )+16 and x<=__view_get( e__VW.XView, 0 )+320-16)
x+=sentflying} else checkwall()
}
}
}



}
