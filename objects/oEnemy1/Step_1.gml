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

