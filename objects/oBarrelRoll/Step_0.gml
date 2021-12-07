depth=-y

//controller_setup()


z+=zSpeed
if !ground 
{
if place_free(x+sentflying*image_xscale,y)
x+=sentflying*image_xscale
if zSpeed<4 zSpeed+=0.4
if z>0 {ground=1 zSpeed=0 z=0}
}

if hit=0
{
if roll=1
{
if image_xscale=-1 and x<__view_get( e__VW.XView, 0 )-64 instance_destroy()
x+=4*image_xscale
sprite_index=spr_barrel_roll image_speed=0.5 
if ground if Bounce!=0 {zSpeed=Bounce PlaySoundNoStack(snd_hitgroundmetal)
if BounceOnce=1 Bounce=0
}
}
}

