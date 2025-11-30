/// @description Insert description here
// You can write your code in this editor
customadd=spr_custompal
customadd2="Special/custompalette.png";
if character=1
{customadd=spr_custompal2
customadd2="Special/custompalette2.png";}
if character=2
{customadd=spr_custompal3
customadd2="Special/custompalette3.png";}
if character=3
{customadd=spr_custompal4
customadd2="Special/custompalette4.png";}

controller_setup()


//if key_X if pickedcolor=0
//if SelectChar=0 SelectChar=1 else SelectChar=0

////Reset color
if SelectChar=0
{


if key_Y{	////RESET COLOR
surface_resize(application_surface,320,240)
surface_save_part(application_surface,customadd2,0,0,32,24)
surface_resize(application_surface,320,240)
surface_free(application_surface)

}
if pickedcolor=0
{if key_B or keyboard_check_pressed(vk_escape) room_goto(rm_minigames)
	
if key_right_pressed if current_pal=31 {SelectChar=1 } else current_pal+=1
if -key_left_pressed if current_pal=1 {SelectChar=1} else current_pal-=1

if key_up_pressed if paletterow=0 paletterow=23 else paletterow-=1
if -key_down_pressed if paletterow=23 paletterow=0 else paletterow+=1

if key_A pickedcolor=1
}
else
{
SelectAll=key_X

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


if key_A 
{
pickedcolor=0
surface_resize(application_surface,320,240)
surface_save_part(application_surface,customadd2,0,0,32,24)
surface_resize(application_surface,320,240)
surface_free(application_surface)
sprite_replace(customadd,customadd2,0,0,0,0,0)
}

if key_B
pickedcolor=0
}

if key_LT {copyColor=TotalColor
	
	}

if key_RT
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




draw_sprite_part_ext(customadd,0,0,0,1,24,1*current_pal,0,1,1,c_white,1)	

surface_resize(application_surface,320,240)
surface_save_part(application_surface,customadd2,0,0,32,24)
surface_resize(application_surface,320,240)
surface_free(application_surface)
sprite_replace(customadd,customadd2,0,0,0,0,0)
}
}
else
{
if -key_left_pressed {SelectChar=0 current_pal=31}
if key_right_pressed {SelectChar=0 current_pal=1}
if key_up_pressed if character=3 character=0 else character+=1
if -key_down_pressed if character=0 character=3 else character-=1
}

if character=0 {name="VIVA" sprite_index=spr_viva_stand}
if character=1 {name="HINA" sprite_index=spr_hina_stand}
if character=2 {name="BAHATI" sprite_index=spr_bahati_stand}
if character=3 {name="SOFIA" sprite_index=spr_sofia_stand}