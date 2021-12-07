if act=0
{
if __view_get( e__VW.XView, 0 )>spawnX
act=1

visible=FrameVis
image_speed=0
image_index=0

}

if act=1
{

visible=1
image_speed=FrameSpd
if image_index>MaxSpawnFrame event_user(0)
}

if act=2
if spawntime!=0
{
image_speed=0 image_index=MaxSpawnFrame
spawntime-=1
}
else
{act=3 image_speed=0 image_index=MaxSpawnFrame
spawntime=0
}

if en0!=-1 if !instance_exists(en0) en0=-1
if en1!=-1 if !instance_exists(en1) en1=-1
if en2!=-1 if !instance_exists(en2) en2=-1
if en3!=-1 if !instance_exists(en3) en3=-1
if en4!=-1 if !instance_exists(en4) en4=-1
if en5!=-1 if !instance_exists(en5) en5=-1


if act=3 and enemy=enemyMax
if en0=-1
and en1=-1
and en2=-1
and en3=-1
and en4=-1
and en5=-1
{

if hasFake=1
{
fakehole=instance_create_depth(x,y,depth,oAnimFX) fakehole.isDepth=0
fakehole.sprite_index=sprite_index fakehole.image_xscale=image_xscale
fakehole.image_index=image_index fakehole.image_yscale=image_yscale
fakehole.image_speed=0
fakehole.depth=depth}
instance_destroy()
}

depth=9999