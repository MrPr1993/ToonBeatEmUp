/// @description Special Boss State
if CanFade=0
{
fakebod=instance_create_depth(x,y,-1,oFlashFX) with fakebod
{FlashShadow=1 image_speed=0 alarm[0]=0 isDepth=1
}fakebod.z=z fakebod.sprite_index=sprite_index fakebod.image_index=image_index
fakebod.current_pal=current_pal fakebod.my_pal_sprite=my_pal_sprite
y+=9999
}