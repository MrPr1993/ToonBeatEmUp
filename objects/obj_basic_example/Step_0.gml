/// @description Change palette with up/down (Basic)
/// @param Basic

current_pal=wrap(current_pal,0,pal_swap_get_pal_count(my_pal_sprite)-1);
image_speed=.1 * delta_time * (60/1000000);

