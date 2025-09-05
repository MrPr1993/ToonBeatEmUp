// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_player(){
hp=clamp(hp,0,maxhp)

super=clamp(super,0,18)

var minimodediv=1; if global.Cheat[5]=1 if global.NoCheat minimodediv=0.25;

//if showp1=1
//draw_sprite(spr_p1,playerNO-1,round(x),round(y+z-98))

///if targetID!=-1 if targetID.y<=y with targetID {script_execute(chardraw);}

if anim=50
{
if oShadowFX.Spotlight[playerNO]<1 oShadowFX.Spotlight[playerNO]+=0.1 else oShadowFX.Spotlight[playerNO]=1
draw_sprite_ext(spr_spotlight,0,x,y,oShadowFX.Spotlight[playerNO],1,0,c_white,1)
}

if carMode=0
{


if weaponspr!=-1 and weaponBack=1
{pal_swap_set(weapon_pal_sprite,weapon_pal,false);
if weaponFlash<=1 
{shader_set_uniform_f(shader_get_uniform(Pal_Shader, "vecRed"),0.5)
shader_set_uniform_f(shader_get_uniform(Pal_Shader, "vecBlue"),-1.0)	
shader_set_uniform_f(shader_get_uniform(Pal_Shader, "vecGreen"),-1.0)	
}//shader_set(shd_white_sprite);
//else


draw_sprite_ext(weaponspr,weaponIndex,round(x+(( (floorPosX[image_index]*floorPos+waistPosX[image_index]*waistPos+headPosX[image_index]*headPos)*SpritePos)*image_xscale+shake*image_xscale+weaponX*(image_xscale*wobbleX))*minimodediv),round(y+trainz+((floorPosY[image_index]*floorPos+waistPosY[image_index]*waistPos+headPosY[image_index]*headPos)*SpritePos+z+extraY+weaponY*wobbleY)*minimodediv),image_xscale,image_yscale,weaponangle+weaponExtraAngle*image_xscale,weaponcolor,image_alpha)


pal_swap_reset();
shader_reset()
}

draw_set_blend_mode(bm_normal);


draw_character()


if weaponspr!=-1 and weaponBack=0
{pal_swap_set(weapon_pal_sprite,weapon_pal,false);
if weaponFlash<=1 
{shader_set_uniform_f(shader_get_uniform(Pal_Shader, "vecRed"),0.5)
shader_set_uniform_f(shader_get_uniform(Pal_Shader, "vecBlue"),-1.0)	
shader_set_uniform_f(shader_get_uniform(Pal_Shader, "vecGreen"),-1.0)	
}//shader_set(shd_white_sprite);
//else

draw_sprite_ext(weaponspr,weaponIndex,round(x+(( (floorPosX[image_index]*floorPos+waistPosX[image_index]*waistPos+headPosX[image_index]*headPos)*SpritePos)*image_xscale+shake*image_xscale+weaponX*(image_xscale*wobbleX))*minimodediv),round(y+trainz+((floorPosY[image_index]*floorPos+waistPosY[image_index]*waistPos+headPosY[image_index]*headPos)*SpritePos+z+extraY+weaponY*wobbleY)*minimodediv),image_xscale,image_yscale,weaponangle+weaponExtraAngle*image_xscale,weaponcolor,image_alpha)


pal_swap_reset();
shader_reset()
}
charFX()
}
else
{
if anim!=202
{
if specialFX=1 shader_set(shd_white_sprite);
if vehWSpr!=spr_emptyarea
draw_sprite_ext(vehWSpr,carAnim,round(x+shake*image_xscale),round(y+z),image_xscale,image_yscale,image_angle,image_blend,image_alpha)

if place_meeting(x,y,oWaterFX) and z>waterMax	
{var sprw=sprite_get_width(vehSpr); var sprh=sprite_get_height(vehSpr);
if hurt=0
draw_sprite_clip_ext(vehSpr,2-2*ground,round(x+shake*image_xscale),round(y+z+carAnim),image_xscale,image_yscale,image_blend,image_alpha, 
x-(sprw*2)*image_xscale,y-sprh,x+(sprw*2)*image_xscale,sprh+waterMax)
else
draw_sprite_clip_ext(vehSpr,hurt,round(x+shake*image_xscale),round(y+z+carAnim),image_xscale,image_yscale,image_blend,image_alpha, 
x-(sprw*2)*image_xscale,y-sprh,x+(sprw*2)*image_xscale,sprh+waterMax)
}
else
{
if hurt=0
draw_sprite_ext(vehSpr,2-2*ground,round(x+shake*image_xscale),round(y+z+carAnim),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
else
draw_sprite_ext(vehSpr,hurt,round(x+shake*image_xscale),round(y+z+carAnim),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
}
}
shader_reset()
pal_swap_set(my_pal_sprite,current_pal,false);
draw_sprite_ext(sprite_index,image_index,round(x+shake*image_xscale),round(y+z+extraY+carAnim),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
pal_swap_reset()
}

if commandChargeFrame>3
{
pal_swap_set(spr_playerpal,6,false);

if commandChargeFrame!=clamp(commandChargeFrame,1,2)
and commandChargeFrame!=clamp(commandChargeFrame,3,4)
and commandChargeFrame!=clamp(commandChargeFrame,5,6)
and commandChargeFrame!=clamp(commandChargeFrame,7,8)
and commandChargeFrame!=clamp(commandChargeFrame,9,10)
and commandChargeFrame!=clamp(commandChargeFrame,11,12)
and commandChargeFrame!=clamp(commandChargeFrame,13,14)
and commandChargeFrame!=clamp(commandChargeFrame,15,16)
and commandChargeFrame!=clamp(commandChargeFrame,17,18)
	if place_meeting(x,y,oWaterFX) and z>-8	
	draw_sprite_clip_ext(sprite_index,image_index,round(x+((floorPosX[image_index]*floorPos+waistPosX[image_index]*waistPos+headPosX[image_index]*headPos)*SpritePos)*image_xscale+shake*image_xscale),round(y+trainz+(floorPosY[image_index]*floorPos+waistPosY[image_index]*waistPos+headPosY[image_index]*headPos)*SpritePos+z+extraY),image_xscale*wobbleX,image_yscale*wobbleY,image_blend,image_alpha, 
	x-(sprite_width*2)*image_xscale,y-sprite_height,x+(sprite_width*2)*image_xscale,sprite_height-8)
else
draw_sprite_ext(sprite_index,image_index,round(x+((floorPosX[image_index]*floorPos+waistPosX[image_index]*waistPos+headPosX[image_index]*headPos)*SpritePos)*image_xscale+shake*image_xscale),round(y+trainz+(floorPosY[image_index]*floorPos+waistPosY[image_index]*waistPos+headPosY[image_index]*headPos)*SpritePos+z+extraY),image_xscale*wobbleX,image_yscale*wobbleY,image_angle,image_blend,image_alpha)

pal_swap_reset();
shader_reset()
//shader_set(shd_white_sprite);
//draw_sprite_ext(spr_chargefx,commandChargeFrame-3,round(x+4*image_xscale),round(y+z-16-height/2),1,1,0,c_white,1)
//shader_reset()
//draw_sprite_ext(spr_chargefx,commandChargeFrame-3,round(x+4*image_xscale),round(y+z-16-height/2),1,1,0,commandChargeColor,commandChargeAlpha)
}

///Dalton Scream
if screamset {draw_sprite_ext(spr_viva_screamouth,random(2),round(x+choose(-random(4),random(4))+((floorPosX[image_index]*floorPos+waistPosX[image_index]*waistPos+headPosX[image_index]*headPos)*SpritePos)*image_xscale+shake*image_xscale),round(y+choose(-random(4),random(4))+trainz-57+(floorPosY[image_index]*floorPos+waistPosY[image_index]*waistPos+headPosY[image_index]*headPos)*SpritePos+z+extraY),(image_xscale*wobbleX)*minimodediv,(image_yscale*wobbleY)*minimodediv,image_angle,image_blend,image_alpha)}

if oControl.betatest=1 and oControl.ColBeta=1
{
draw_set_color(c_gray) draw_set_alpha(0.5)
draw_rectangle(x-(sprite_get_width(mask_index)/2),y+z,x+(sprite_get_width(mask_index)/2),y+z-height,false)
draw_text(x,y-height-24,string_hash_to_newline(aff.aff))
draw_set_color(c_white) draw_set_alpha(1)
}

//if targetID!=-1 if targetID.y>y with targetID {script_execute(chardraw);}

animsetup_specialplayer()
character_hitanims()


}