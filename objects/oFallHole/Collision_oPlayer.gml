/// @description Insert description here
// You can write your code in this editor
if other.fallHole=0 and other.z>z-1 and other.Throw=0 with other
{
if ground
{
x=xprevious
y=yprevious
exit;
}
	fallHole=1 ground=0 canmove=0 atk=0 hurt=1 hp=0 dead=1  hspeed=0 visible=0 disappearTime=0 alarm[2]=60
faker=instance_create_depth(x,y,depth,oFlashFX) faker.sprite_index=sprite_index
faker.image_index=image_index faker.image_speed=0  faker.alarm[0]=60
faker.xSpeed=sentflying*1 faker.image_xscale=image_xscale 
faker.current_pal=current_pal;
faker.my_pal_sprite=my_pal_sprite
faker.override_surface=override_surface
faker.override_pal_index=override_pal_index
faker.zSpeed=zSpeed
if faker.zSpeed=0 faker.zSpeed=4
		sentflying=0		
}


