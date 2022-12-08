/// @description /Here comes the bulls!
if __view_get( e__VW.XView, 0 )>=2560-320
{

specialSet6=240

fakeblock=instance_create_depth(2496,192,-1,oBlock)
with fakeblock {image_xscale=8888 image_yscale=8888}

en1=instance_create_depth(2448,224,-1,oBull)

}
else
{
timeline_position-=1
}

