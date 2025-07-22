if counterBuffer!=0 counterBuffer-=1;

if image_xscale=1
{
if sentflying<0
{
if place_free(x+dashing-sentflying*-image_xscale,y)
{

x+=sentflying} else checkwall()
}
else
{
if place_free(x+dashing-sentflying*-image_xscale,y)
{

x+=sentflying}  else checkwall()
}
}
else
{
if sentflying<0
{
if place_free(x-dashing-sentflying*image_xscale,y)
{

x+=sentflying} else checkwall()
}
else
{
if place_free(x-dashing-sentflying*image_xscale,y)
{

x+=sentflying} else checkwall()
}
}

if isBoss=10000
{
if dead=0 and hp<1
{cRedAdd = 0.1*(CanchorY + sin(Ctimer*Cfrequency)*Camplitude); 
cBlueAdd = -0.1* (CanchorY + sin(Ctimer*Cfrequency)*Camplitude);
cGreenAdd = -0.1* (CanchorY + sin(Ctimer*Cfrequency)*Camplitude); 
	Ctimer++;}
else {cRedAdd=0.0 cBlueAdd=0.0 cGreenAdd=0.0}
}

