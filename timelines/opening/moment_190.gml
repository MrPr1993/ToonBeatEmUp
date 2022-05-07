if bad4.x>treas4.x timeline_position-=1
else
{with bad4 {image_xscale=1 hspeed=4} treas4.hspeed=4 treas4.x=bad4.x+16 treas4.y=bad4.y+1 treas4.z=-32
if bad3.x>treas3.x timeline_position-=1
else
{with bad3 {image_xscale=1 hspeed=4} treas3.hspeed=4 treas3.x=bad3.x+16 treas3.y=bad3.y+1 treas3.z=-32
if bad2.x>treas2.x timeline_position-=1
else
{with bad2 {image_xscale=1 hspeed=4} treas2.hspeed=4 treas2.x=bad2.x+16 treas2.y=bad2.y+1 treas2.z=-32
if bad1.x>treas1.x timeline_position-=1
else
{
with bad1 {sprite_index=spr_sneak_gunmove image_xscale=1 hspeed=4} treas1.hspeed=4 treas1.x=bad1.x+16 treas1.y=bad3.y+1 treas1.z=-32
}
}
}
}


//treas1=instance_create_depth(128+112-24+24-3, 96-20+2,-1,oFlashFX);
//treas2=instance_create_depth(128+112-24+48+4-3, 96-20+2,-1,oFlashFX);
//treas3=instance_create_depth(128+112-24-10+48*2-3, 96-20+5,-1,oFlashFX);
//treas4=instance_create_depth(128+112-24-28+48*3-3, 96-20,-1,oFlashFX);

