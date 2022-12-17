if (sprite_index != -1) //We will only draw if the sprite_index is set to something
{
draw_self(); //Draw the sprite that is set, which is the reward sprite
draw_text(x-sprite_width/2-15,y-42,"You Win!"); //Drawing some text for the player
}


draw_sprite_ext(spr_slotflipper2,0,296,218-64,1,(186-64-slotflipperY),0,c_white,1)
draw_sprite(spr_slotflipper,0,296,32+slotflipperY)