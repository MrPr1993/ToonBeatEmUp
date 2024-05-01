// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function crt_fxset(){
		
	if TVfx=0 or TVfx=8 { var_distort = false; var_distortion_ammount = 0.12; var_border = false;}
	if TVfx=1 { var_distort = true; var_distortion_ammount = 0.12; var_border = true;}
	if TVfx=2 { var_distort = false; var_distortion_ammount = 0.12; var_border = true;}
	if TVfx=3 { var_distort = true; var_distortion_ammount = 0.12; var_border = false;}
	if TVfx=4 { var_distort = false; var_distortion_ammount = 0.12; var_border = false;}
	if TVfx=5 { var_distort = true; var_distortion_ammount = 0.24; var_border = true;}
	if TVfx=6 { var_distort = true; var_distortion_ammount = 0; var_border = true;}


	if TVfx!=9999
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
if global.ColorMode=0
if TVfx=0 
{
shader_reset()
}

if global.ColorMode=1
{
if TVfx=0 
shader_set(shd_grayscale) else 
shader_set(shd_grayscaleTV) //grayscale
}
if global.ColorMode=2
{
if TVfx=0 
shader_set(shd_sepia) else
shader_set(shd_sepiaTV)
}
if global.ColorMode=3
{
if TVfx=0 
shader_set(shd_2strip) else /// 2-Strip
shader_set(shd_2stripTV)
}

if global.ColorMode=4
{
if TVfx=0
shader_set(shd_onecolor) else
shader_set(shd_onecolorTV) /// One colo 
}

if global.ColorMode=5
{
shader_set(shd_televisionCustom)
if TVfx=0
shader_set(shd_gb) else
shader_set(shd_gbTV) /// One colo 
//gameboy
////  shader_set_uniform_f(shader_get_uniform(shd_televisionCustom, "customR"), customR); 
//    shader_set_uniform_f(shader_get_uniform(shd_televisionCustom, "customB"), customB);
//	  shader_set_uniform_f(shader_get_uniform(shd_televisionCustom, "customG"), customG);
}


  shader_set_uniform_f(uni_crt_sizes, surface_width, surface_height,crt_surface_width, crt_surface_height);
  shader_set_uniform_f(distort, var_distort);
  shader_set_uniform_f(distortion, var_distortion_ammount);
  shader_set_uniform_f(border, var_border);


	}
draw_set_color(c_black) draw_rectangle(-4,-4,344,244,false)	draw_set_color(c_white)
draw_surface_part_ext(new_surf, 0, 0, view_wview[0], view_hview[0], screenX, screenY, crt_surface_scale, crt_surface_scale, c_white, 1);

shader_reset();

//draw_sprite_ext(spr_screenfx,0,0,0,(sprite_get_width(spr_screenfx)/(window_get_width()-100))/16,(sprite_get_height(spr_screenfx)/window_get_height())/16,0,c_white,1)
if TVfx=8
{
shader_reset()
draw_primitive_begin_texture(pr_trianglestrip, sprite_get_texture(spr_lcdfx,0));
draw_vertex_texture(0, 0, 0, 0);
draw_vertex_texture(320, 0, 1, 0);
draw_vertex_texture(0, 240, 0, 1);
draw_vertex_texture(320, 240, 1, 1);
draw_primitive_end();
}

if global.ArcadeScreen!=0
{
if global.ArcadeScreen=1
draw_primitive_begin_texture(pr_trianglestrip, sprite_get_texture(spr_screenfx,0));
if global.ArcadeScreen=2
draw_primitive_begin_texture(pr_trianglestrip, sprite_get_texture(spr_screenfx2,0));
if global.ArcadeScreen=3
draw_primitive_begin_texture(pr_trianglestrip, sprite_get_texture(spr_screenfx3,0));
if global.ArcadeScreen=4
draw_primitive_begin_texture(pr_trianglestrip, sprite_get_texture(spr_screenfx4,0));
if global.ArcadeScreen=5
draw_primitive_begin_texture(pr_trianglestrip, sprite_get_texture(spr_screenfx5,0));
draw_vertex_texture(-50, 0, 0, 0);
draw_vertex_texture(320+50, 0, 1, 0);
draw_vertex_texture(-50, 240, 0, 1);
draw_vertex_texture(320+50, 240, 1, 1);
draw_primitive_end();
}
else
{
draw_set_color(c_black)
draw_rectangle(-999,-999,-1,999,false)
draw_rectangle(320,-999,999,999,false)
draw_set_color(c_white)
}

if room=rm_loading
{draw_set_color(c_white) draw_set_halign(fa_center) draw_set_font(global.scorefont)
	draw_text(160,120,"LOADING")
	}
	}
}