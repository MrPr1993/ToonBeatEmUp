if keyboard_check_pressed(vk_delete) 
current_pal--;
if keyboard_check_pressed(vk_pagedown)
current_pal++;

if keyboard_check_pressed(vk_home) 
{
//if spritePal=0 spritePal=5 else spritePal-=1

if my_pal_sprite=spr_enemypal my_pal_sprite=spr_barrelpal else my_pal_sprite-=1

}
if keyboard_check_pressed(vk_end)
{
if my_pal_sprite=spr_barrelpal my_pal_sprite=spr_enemypal else my_pal_sprite+=1

}

