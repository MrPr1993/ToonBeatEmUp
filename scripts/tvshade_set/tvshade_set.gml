// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function tvshade_set(){
  new_surf = surface_create(surface_get_width(application_surface), surface_get_height(application_surface));

crtcheck=window_get_width()
crt_surface_scale = 1;

crt_surface_width  = 320//view_wview[0] * crt_surface_scale;
crt_surface_height = 240//view_hview[0] * crt_surface_scale;

uni_crt_sizes = shader_get_uniform(shd_television, "u_crt_sizes");
distort = shader_get_uniform(shd_television, "distort");
distortion = shader_get_uniform(shd_television, "distortion");
border = shader_get_uniform(shd_television, "border");

var_distort = true;
var_distortion_ammount = 0.12;
var_border = true;

surface_width  = view_wview[0];
surface_height = view_hview[0];

surface_resize(application_surface, surface_width, surface_height);

surfcheck=0

}
