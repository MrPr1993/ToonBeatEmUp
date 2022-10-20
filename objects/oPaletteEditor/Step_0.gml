/// @description Insert description here
// You can write your code in this editor


controller_setup()


if key_shield_pressed if pickedcolor=0
if SelectChar=0 SelectChar=1 else SelectChar=0

////Reset color
if SelectChar=0
{


if key_super{	////RESET COLOR
surface_resize(application_surface,320,240)
surface_save_part(application_surface,"Special/custompalette.png",0,0,16,24)
surface_resize(application_surface,320,240)
surface_free(application_surface)

}
if pickedcolor=0
{if key_jump room=rm_menu
	
if key_right_pressed if current_pal=15 current_pal=1 else current_pal+=1
if -key_left_pressed if current_pal=1 current_pal=15 else current_pal-=1

if key_up_pressed if paletterow=0 paletterow=23 else paletterow-=1
if -key_down_pressed if paletterow=23 paletterow=0 else paletterow+=1

if key_attack pickedcolor=1
}
else
{
SelectAll=key_shield

if SelectAll=0
{	
if colorOrder=1 
{
if key_right if colorR=255 colorR=0 else colorR+=1
if -key_left if colorR=0 colorR=255 else colorR-=1}
if colorOrder=2
{
if key_right if colorG=255 colorG=0 else colorG+=1
if -key_left if colorG=0 colorG=255 else colorG-=1}
if colorOrder=3
{
if key_right if colorB=255 colorB=0 else colorB+=1
if -key_left if colorB=0 colorB=255 else colorB-=1}
}
else
{	

{
if key_right if colorR!=255 colorR+=1
if -key_left if colorR!=0 colorR-=1}

{
if key_right if colorG!=255 colorG+=1
if -key_left if colorG!=0 colorG-=1}

{
if key_right if colorB!=255 colorB+=1
if -key_left if colorB!=0 colorB-=1}
}

if key_up_pressed if colorOrder=1 colorOrder=3 else colorOrder-=1
if -key_down_pressed if colorOrder=3 colorOrder=1 else colorOrder+=1


if key_attack 
{
pickedcolor=0
surface_resize(application_surface,320,240)
surface_save_part(application_surface,"Special/custompalette.png",0,0,16,24)
surface_resize(application_surface,320,240)
surface_free(application_surface)
sprite_replace(spr_custompal,"Special/custompalette.png",0,0,0,0,0)
}

if key_jump
pickedcolor=0
}

if key_taunt {copyColor=TotalColor
	
	}

if key_punchback
{
pickedcolor=1
TotalColor=copyColor
colorR=colour_get_red(TotalColor);
colorG=colour_get_green(TotalColor);
colorB=colour_get_blue(TotalColor);
TotalColor=copyColor
colorR=colour_get_red(TotalColor);
colorG=colour_get_green(TotalColor);
colorB=colour_get_blue(TotalColor);

draw_sprite_part_ext(spr_custompal,0,0,0,1,24,1*current_pal,0,1,1,c_white,1)	

surface_resize(application_surface,320,240)
surface_save_part(application_surface,"Special/custompalette.png",0,0,16,24)
surface_resize(application_surface,320,240)
surface_free(application_surface)
sprite_replace(spr_custompal,"Special/custompalette.png",0,0,0,0,0)
}
}
else
{
if key_jump SelectChar=0
if key_right_pressed if character=3 character=0 else character+=1
if -key_left_pressed if character=0 character=3 else character-=1
}

if character=0 {name="VIVA" sprite_index=spr_viva_stand}
if character=1 {name="HINA" sprite_index=spr_hina_stand}
if character=2 {name="BAHATI" sprite_index=spr_bahati_stand}
if character=3 {name="SOFIA" sprite_index=spr_sofia_stand}