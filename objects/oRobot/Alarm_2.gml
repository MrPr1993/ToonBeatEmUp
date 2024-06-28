/// @description Disappear
if act=1
{
if dead=1
if anim!=9 and anim!=40 and anim!=41 and visible
{
{PlaySoundNoStack(snd_explosion) oControl.quakeFXTime=10
ex=instance_create(x,y,oExplosion) ex.z=z ex.depth=depth
ex.canHarm=0
PlaySound(snd_explosion)

repeat(4)
{
part=instance_create_depth(x+random_range(8,32),y,depth,oDisappearPart)
part.z=random(16) part.image_angle=random(360) part.sprite_index=spr_robot_part
part.hspeed=choose(2,1.5,1) part.image_index=choose(0,1,2) part.image_speed=0
part.spdZ=choose(-1,-2,-3,-4) part.image_blend=image_blend
part.disappeartime=random_range(24,32)
part.my_pal_sprite=my_pal_sprite
part.current_pal=current_pal

}
repeat(4)
{
part=instance_create_depth(x+random_range(-8,32),y,depth,oDisappearPart)
part.z=random(16) part.image_angle=random(360) part.sprite_index=spr_robot_part
part.hspeed=choose(-2,-1.5,-1) part.image_index=choose(0,1,2) part.image_speed=0
part.spdZ=choose(-1,-2,-3,-4) part.image_blend=image_blend
part.disappeartime=random_range(24,32)
part.my_pal_sprite=my_pal_sprite
part.current_pal=current_pal
}

event_user(12)

instance_destroy()
}
} else enemy_disappear()
}

