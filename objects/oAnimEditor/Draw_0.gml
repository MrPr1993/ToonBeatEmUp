if grabMode!=1
__background_set( e__BG.Visible, 0, grid )
else __background_set( e__BG.Visible, 0, 0 )


if keyboard_check_pressed(ord("G")) if grid=0 grid=1 else grid=0
if keyboard_check_pressed(ord("C")) if cross=0 cross=1 else cross=0
if keyboard_check_pressed(ord("Q")) if colShow=1 colShow=0 else colShow=1

if weaponOn=1 and weaponBack=1 and grabMode=0
draw_sprite_ext(weaponSprite,weaponIndex,weaponPosX,weaponPosY,weaponScaleX,weaponScaleY,weaponAngle,image_blend,image_alpha)

if sprite_index!=-1 and image_index!=-1
pal_swap_set(my_pal_sprite,current_pal,false);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
pal_swap_reset();

shader_reset()



if weaponOn=1 and weaponBack=0 and grabMode=0
{
draw_sprite_ext(weaponSprite,weaponIndex,weaponPosX,weaponPosY,weaponScaleX,weaponScaleY,weaponAngle,image_blend,image_alpha)
}

if cross=1 and weaponOn=1 and grabMode=0
draw_sprite(spr_animeditor_cross,0,weaponPosX,weaponPosY)

if cross=1 and grabMode!=1
draw_sprite(spr_animeditor_cross,0,0,0)


draw_set_alpha(0.5)
draw_set_color(c_blue)

if colShow=1
{
if grabMode=0
draw_rectangle(colX-((colSizeX*32)/2)*image_xscale,colY-colSizeZ+colZ,colX+((colSizeX*32)/2)*image_xscale,colY+colZ,false)

 draw_set_alpha(1)
if cross=1 and grabMode!=1
draw_sprite(spr_animeditor_cross,0,colX,colY+colZ)
}

if keyboard_check_pressed(vk_tab)
if grabMode=0 {grabMode=2 textCopied=60 specialText="GRAB MODE ON"}
else {grabMode-=1 

if grabMode=2
{textCopied=60 specialText="GRAB MODE OFF"}

if grabMode=1
{textCopied=60 specialText="CHARACTER ONLY"}

}

if grabMode=1
{
if keyboard_check_pressed(ord("J")) if grabPos=0 grabPos=2 else grabPos-=1
if keyboard_check_pressed(ord("L")) if grabPos=2 grabPos=0 else grabPos+=1
}

///Make Clipboard
if keyboard_check_pressed(vk_enter)
if textCopied=0
{
if grabMode=0
{
if !keyboard_check(vk_control)
{
    clipboard_set_text(
    
    string("atkcol_set(")+string(colX)+
    string(",")+string(colY)+
    string(",")+string(-colZ)+
    string(",")+string(colSizeX)+
    string(",")+string(colSizeY)+
    string(",")+string(colSizeZ)+string(")")
    );
    
    ///atkcol_set(x,y,z,xScale,yScale,height)
    
    textCopied=60 specialText="ATTACK COLLISION COPIED"
}
else
{
    clipboard_set_text(
    
    string("weaponanim(weaponspr,weaponIndex,")+string(weaponPosX)+
    string(",")+string(weaponPosY)+
    string(",")+string(weaponAngle)+
    string("*image_xscale,weaponcolor)")
    
    );
    textCopied=60 specialText="WEAPON POSITION COPIED"
 
}
}
else
{
    clipboard_set_text(
    
    string("spritepos_setup(")+string(grabPos)+
    string(",")+string(image_index)+
    string(",")+string(colX)+
    string(",")+string(-colZ)+
    string(")")
    
    );
    textCopied=60 specialText="GRAB POSITION COPIED"
 
}
}

draw_set_alpha(1)

///Controls


if keyboard_check_pressed(ord("1")) 
if sprite_index!=0
sprite_index-=1 else sprite_index=spr_endsprite

if keyboard_check_pressed(ord("2"))  
if sprite_index!=spr_endsprite sprite_index+=1 else sprite_index=0

if !keyboard_check(vk_control)
{
if keyboard_check_pressed(ord("3")) image_index-=1
if keyboard_check_pressed(ord("4")) image_index+=1
}
else
{
if keyboard_check_pressed(ord("3")) weaponIndex-=1
if keyboard_check_pressed(ord("4")) weaponIndex+=1
}



if keyboard_check(ord("D")) PosX+=1
if keyboard_check(ord("A")) PosX-=1

if keyboard_check(ord("S")) PosY+=1
if keyboard_check(ord("W")) PosY-=1

if keyboard_check(vk_shift)
{
if keyboard_check(vk_left) colSizeX-=0.1
if keyboard_check(vk_right) colSizeX+=0.1

if keyboard_check(vk_down) colSizeZ-=1
if keyboard_check(vk_up) colSizeZ+=1
}
else
{
if keyboard_check(vk_left) colX-=1
if keyboard_check(vk_right) colX+=1

if keyboard_check(vk_down) colZ+=1
if keyboard_check(vk_up) colZ-=1
}


if keyboard_check(ord("L")) weaponPosX+=1
if keyboard_check(ord("J")) weaponPosX-=1

if keyboard_check(ord("K")) weaponPosY+=1
if keyboard_check(ord("I")) weaponPosY-=1

if keyboard_check(ord("O")) weaponAngle+=1
if keyboard_check(ord("U")) weaponAngle-=1

if keyboard_check_pressed(ord("P")) if weaponOn=1 weaponOn=0 else weaponOn=1

if keyboard_check_pressed(ord("Y")) if weaponBack=1 weaponBack=0 else weaponBack=1


if keyboard_check(ord("0"))
if !keyboard_check(vk_shift)
{
spr = ds_map_create();
for(var i=0;i<2500;i++)
    if sprite_exists(i) 
        ds_map_add( spr, sprite_get_name(i), i);

        
        str = get_string("Select Sprite", sprite_get_name(sprite_index))
if ds_map_exists(spr, str)

    sprite_index = ds_map_find_value(spr, str)
else
    sprite_index = sprite_index; // or some other default value

    ds_map_clear(spr)
}
else
{
spr = ds_map_create();
for(var i=0;i<2500;i++)
    if sprite_exists(i) 
        ds_map_add( spr, sprite_get_name(i), i);

        
        str = get_string("Select Sprite", sprite_get_name(weaponSprite))
if ds_map_exists(spr, str)

    weaponSprite = ds_map_find_value(spr, str)
else
    weaponSprite = weaponSprite; // or some other default value

    ds_map_clear(spr)
}



