/// @description Insert description here
// You can write your code in this editor
//draw_tilemap(tilename2,0,0)
//draw_tilemap(tilename,0,0)
var _alpha=oControl.camX-bgdistmin; _alpha=clamp(_alpha,0,bgdistmax)

var _rep=0;
repeat(2)
{
if _rep=0 shader_set(shd_grayscale)
else
{
shader_set(shade_default)
shader_set_uniform_f(shader_get_uniform(shade_default, "vecRed"),1);
shader_set_uniform_f(shader_get_uniform(shade_default, "vecBlue"),1);
shader_set_uniform_f(shader_get_uniform(shade_default, "vecGreen"),1);
shader_set_uniform_f(shader_get_uniform(shade_default, "vecAlpha"),1-((_alpha/bgdistmax)*1));
}
draw_sprite_tiled(bg_ground2,0,0,160)
var _rep2=0;
repeat(30)
{
draw_sprite(bg_sky2,0,144*_rep2,0) _rep2++;
}
var lay_id = layer_get_id(tilename[0]) var map_id = layer_tilemap_get_id(lay_id) draw_tilemap(map_id,0,0)
var lay_id2 = layer_get_id(tilename[1]) var map_id2 = layer_tilemap_get_id(lay_id2) draw_tilemap(map_id2,0,0)
_rep+=1;
}

shader_reset()