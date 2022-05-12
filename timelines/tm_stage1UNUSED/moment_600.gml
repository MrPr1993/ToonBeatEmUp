/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=2367//8
{
__view_set( e__VW.XView, 0, 2368 )
limo1=instance_create(2368-128,16,oFlashFX) limo1.sprite_index=spr_limopart
limo1.image_speed=0 limo1.image_index=0 limo1.alarm[0]=0 limo1.name="Limo"

var repTile=-128

repeat(64)
{
repTile-=128
limo1=instance_create(2368+repTile,16,oFlashFX) limo1.sprite_index=spr_limopart
limo1.image_speed=0 limo1.image_index=1 limo1.alarm[0]=0 limo1.name="Limo"
}

limo1=instance_create(2368+repTile-128,16,oFlashFX) limo1.sprite_index=spr_limopart
limo1.image_speed=0 limo1.image_index=2 limo1.alarm[0]=0 limo1.name="Limo"

with oFlashFX if name="Limo" {hspeed=16 isDepth=0 depth=1000004}
specialSet0=16

}
else
{
timeline_position-=1
}



