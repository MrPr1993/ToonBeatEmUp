if bad4.x>treas4.x timeline_position-=1
else
{

if bad4.hspeed!=4
{PlaySound(snd_steal)
bad5=instance_create_depth(420+24, 128+32,-1,oFlashFX);
with bad5 {name="BAD2b" alarm[0]=-1 hspeed=-2 image_xscale=-1 FlashShadow=1 animEnd=0 image_speed=0.25 sprite_index=spr_burglarB_move current_pal=2}
bad6=instance_create_depth(420+24+6, 128+32+24,-1,oFlashFX);
with bad6 {name="BAD2a" alarm[0]=-1 hspeed=-2 image_xscale=-1 FlashShadow=1 animEnd=0 image_speed=0.25 sprite_index=spr_burglar_move current_pal=2}
bad7=instance_create_depth(420+24+12, 128+32+48,-1,oFlashFX);
with bad7 {name="BAD2b" alarm[0]=-1 hspeed=-2 image_xscale=-1 FlashShadow=1 animEnd=0 image_speed=0.25 sprite_index=spr_burglarB_move current_pal=2}
bad8=instance_create_depth(420+24+8, 128+32+64,-1,oFlashFX);
with bad8 {name="BAD2a" alarm[0]=-1 hspeed=-2 image_xscale=-1 FlashShadow=1 animEnd=0 image_speed=0.25 sprite_index=spr_burglar_move current_pal=2}
}
with bad4 {image_xscale=1 hspeed=4
} treas4.hspeed=4 treas4.x=bad4.x+16 treas4.y=bad4.y+1 treas4.z=-32 
if bad3.x>treas3.x timeline_position-=1
else
{if bad3.hspeed!=4 PlaySound(snd_steal)
with bad3 {image_xscale=1 hspeed=4} treas3.hspeed=4 treas3.x=bad3.x+16 treas3.y=bad3.y+1 treas3.z=-32 
if bad2.x>treas2.x timeline_position-=1
else
{
if bad2.hspeed!=4 PlaySound(snd_steal)
with bad2 {image_xscale=1 hspeed=4} treas2.hspeed=4 treas2.x=bad2.x+16 treas2.y=bad2.y+1 treas2.z=-32
if bad1.x>treas1.x timeline_position-=1
else
{if bad1.hspeed!=4 PlaySound(snd_steal)
with bad1 {sprite_index=spr_sneak_gunmove image_xscale=1 hspeed=4} treas1.hspeed=4 treas1.x=bad1.x+16 treas1.y=bad3.y+1 treas1.z=-32
}
}
}
}

with oFlashFX if name="BAD" image_speed=0.5
with diva1 {sprite_index=spr_viva_hit image_index=9}
with diva2 {sprite_index=spr_hina_hit image_index=9}
with diva3 {sprite_index=spr_bahati_hit image_xscale=-1 image_index=22}
with diva4  {sprite_index=spr_sofia_item image_xscale=-1 image_index=0}



//treas1=instance_create_depth(128+112-24+24-3, 96-20+2,-1,oFlashFX);
//treas2=instance_create_depth(128+112-24+48+4-3, 96-20+2,-1,oFlashFX);
//treas3=instance_create_depth(128+112-24-10+48*2-3, 96-20+5,-1,oFlashFX);
//treas4=instance_create_depth(128+112-24-28+48*3-3, 96-20,-1,oFlashFX);

