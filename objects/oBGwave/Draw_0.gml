/// @description Insert description here
// You can write your code in this editor
//Draw event:
shader_set(shd_wave);
shader_set_uniform_f(uTime, current_time);
var tex = sprite_get_texture(bgSpr, 0);
shader_set_uniform_f(uTexel, texture_get_texel_width(tex), texture_get_texel_height(tex));
draw_sprite(bgSpr, 0, x, y);
shader_reset();