// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function crt_fxset(){
		
	if TVfx=1 { var_distort = true; var_distortion_ammount = 0.12; var_border = true;}
	if TVfx=2 { var_distort = false; var_distortion_ammount = 0.12; var_border = true;}
	if TVfx=3 { var_distort = true; var_distortion_ammount = 0.12; var_border = false;}
	if TVfx=4 { var_distort = false; var_distortion_ammount = 0.12; var_border = false;}
	if TVfx=5 { var_distort = true; var_distortion_ammount = 0.24; var_border = true;}
	if TVfx=6 { var_distort = true; var_distortion_ammount = 0; var_border = true;}




	if TVfx!=0
	{surface_reset_target();
application_surface_draw_enable(false);

shader_set(shade)
  shader_set_uniform_f(uni_crt_sizes, surface_width, surface_height,crt_surface_width, crt_surface_height);
  shader_set_uniform_f(distort, var_distort);
  shader_set_uniform_f(distortion, var_distortion_ammount);
  shader_set_uniform_f(border, var_border);
  draw_clear_alpha(c_black, 0.0);
if global.ColorMode=9 {shader_set(shd_grayscale)

	screenX = screenXanchorY + sin(screenXtimer*screenXfrequency)*screenXamplitude; screenXtimer++;
	screenY = screenYanchorY + sin(screenYtimer*screenYfrequency)*screenYamplitude; screenYtimer++;
	
	}
else {screenX=0 screenY=0
if global.ColorMode=1 shader_set(shd_grayscale)
if global.ColorMode=2 shader_set(shd_sepia)
if global.ColorMode=3 shader_set(shd_sepia2)
if global.ColorMode=4 shader_set(shd_handheld)

if global.ColorMode=5 
{
shader_set(shd_customrgb) //customR
  shader_set_uniform_f(shader_get_uniform(shd_customrgb, "customR"), customR); 
    shader_set_uniform_f(shader_get_uniform(shd_customrgb, "customB"), customB);
	  shader_set_uniform_f(shader_get_uniform(shd_customrgb, "customG"), customG);
}
	}


draw_surface_part_ext(new_surf, 0, 0, view_wview[0], view_hview[0], screenX, screenY, crt_surface_scale, crt_surface_scale, c_white, 1);

shader_reset();
	}
}