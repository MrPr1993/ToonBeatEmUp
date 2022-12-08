/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if oBull.sprite_index=spr_bullrun
and oBull.x<2530+32
{

layer_y("BULLgate",-9999)

with fakeblock instance_destroy()

PlaySound(snd_break)

dor1=instance_create_depth(2496,192,0,oBarrel) with dor1 
{sprite_index=spr_brokenbullfence image_index=1
image_xscale=1 solid=false hit=1 ground=0 zSpeed=-8 hspeed=-2 mask_index=mask_none
sentflying=-2 image_index=0 alarm[0]=2 	isDepth=0 depth=190}

dor2=instance_create_depth(2496,192,0,oBarrel) with dor2
{sprite_index=spr_brokenbullfence
image_xscale=1 solid=false hit=1 ground=0 zSpeed=-8 hspeed=-2 mask_index=mask_none
sentflying=-2 image_index=1 alarm[0]=2 	isDepth=0 depth=320}

}
else
{
timeline_position-=1
}

