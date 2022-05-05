depth=-y

//controller_setup()
trainz=0
z+=zSpeed
if !ground 
{sentflying=4
if place_free(x+sentflying*image_xscale,y)
x+=sentflying*image_xscale
if zSpeed<4 zSpeed+=0.4
if z>0 {ground=1 zSpeed=0 z=0}
}
else
{
hspeed=0 sentflying=0
}



