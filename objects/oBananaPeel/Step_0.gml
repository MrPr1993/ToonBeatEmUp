depth=-y

//controller_setup()
trainz=0
z+=spdZ
if !ground 
{sentflying=4
if place_free(x+sentflying*image_xscale,y)
x+=sentflying*image_xscale
if spdZ<4 spdZ+=0.4
if z>0 {ground=1 spdZ=0 z=0}
}
else
{
hspeed=0 sentflying=0
}