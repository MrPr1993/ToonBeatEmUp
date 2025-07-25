depth=-y

//controller_setup()

if obstacletype=0
{
z+=zSpeed
if !ground 
{
if place_free(x+sentflying*image_xscale,y)
x+=sentflying*image_xscale
if zSpeed<rollSpd zSpeed+=0.4
if z>0 {ground=1 zSpeed=0 z=0}
}

if hit=0
{
if roll=1
{
if image_xscale=-1 and x<__view_get( e__VW.XView, 0 )-200 instance_destroy()
x+=4*image_xscale
sprite_index=spr_barrel_roll image_speed=0.5 
if ground if Bounce!=0 {zSpeed=Bounce if x>__view_get( e__VW.XView, 0 )-64 PlaySoundNoStack(snd_hitgroundmetal)
if BounceOnce=1 Bounce=0
}
}
}

///Water Interaction
if place_meeting(x,y,oWaterFX)
{
wfx=instance_place(x,y,oWaterFX)
waterMax=wfx.z+wfx.zAdd

if !ground if waterSplash=0 and zSpeed>2 and z>waterMax
{
watsplash=instance_create_depth(x,y,depth,oFlashFX) watsplash.isDepth=0 watsplash.depth=depth-1
watsplash.z=waterMax watsplash.image_speed=0.5 watsplash.sprite_index=spr_watersplash
watsplash.alarm[0]=0
waterSplash=10; 
}if ground waterSplash=0;
}
}

if obstacletype=1
{
if image_xscale=-1 and x<oControl.camX-200 instance_destroy()
x+=4*image_xscale
}