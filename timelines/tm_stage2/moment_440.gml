///Fat Burglar
if !instance_exists(en1)
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
{
en1=instance_create_depth(1608+64,180,0,oFatBurglar)
with en1{image_xscale=-1 canmove=0 atk=1 anim=13}
}
else
timeline_position-=1