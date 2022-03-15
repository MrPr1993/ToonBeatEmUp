//Draw event:

shader_set(shd_wave);
shader_set_uniform_f(uTime, current_time);
var tex = sprite_get_texture(spr_background, 0);
shader_set_uniform_f(uTexel, texture_get_texel_width(tex), texture_get_texel_height(tex));
draw_sprite_tiled_ext(spr_background, 0, x, y, xscale, yscale, c_white, 1);
shader_reset();