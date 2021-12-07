/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=2847//8
{


var repTile=-128

repeat(0)
{
repTile-=128
limo1=instance_create(2848+repTile-40,143+8,oFlashFX) limo1.sprite_index=spr_limopart
limo1.image_speed=0 limo1.image_index=1 limo1.alarm[0]=0 limo1.name="Limo" 
}

//limo1=instance_create(2848+repTile-128-40,16,oFlashFX) limo1.sprite_index=spr_limopart
//limo1.image_speed=0 limo1.image_index=2 limo1.alarm[0]=0 limo1.name="Limo"

with oFlashFX if name="Limo" {hspeed=8 isDepth=0 image_speed=0.5 animEnd=0 PlaySound(snd_carengine)}
specialSet0=16

}
else
{
timeline_position-=1
}



