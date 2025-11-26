/// @description Insert description here
// You can write your code in this editor
dust_make_ext(x,y,z,0,0,0,spr_ghost_disappear,3)
with dustmk
{
current_pal=3;
my_pal_sprite=spr_smokepal
}

if image_xscale=1
{if hitBack=0 dustmk.image_xscale=1 else dustmk.image_xscale=-1}
else
{if hitBack=1 dustmk.image_xscale=1 else dustmk.image_xscale=-1}

y=-99999
visible=0

