/// @description Insert description here
// You can write your code in this editor



matrix_set(matrix_world,matrix_build(x+sprite_get_width(sprite_index),y+80,0,0,0,180,1,1,1))
    draw_sprite_part(sprite_index,image_index,0,y1,sprite_width,sprite_height/totalImages,0,0);
    draw_sprite_part(sprite_index,image_index,0,y1-sprite_height,sprite_width,sprite_height/totalImages,0,0);   //These top 2 lines are complicated but if you read my tutorial on Drawing Health Bars with Sprite Parts it might seem more familiar. The first draw_sprite_part draws a portion of the sprite strip, which is equal to 1 sprite in the sprite strip. if y1 = 64, this will draw the portion of the sprite strip starting at Y=64, or the 64th pixel which happens to be our second sprite on the strip. It will continue drawing for exactly 64 pixels because our (sprite_height/totalImages) = 64. | The second draw_sprite_part is critical to getting a seamless “reel” effect by drawing the entire sprite sheet after the sprite that was just drawn. You can see the effect of not having this second draw_part by commenting it out.
 //   draw_text(x,y+100,"Y="+string(floor(y1))); //This is for display purposes so you can see current y1, we floor it (round down) when viewing this way it is clean on the screen without decimals
matrix_set(matrix_world,matrix_build_identity())

gpu_set_blendmode_ext(bm_dest_colour, bm_zero);
draw_sprite(spr_slotcover,winFrame,x,y)
draw_set_blend_mode(bm_normal)

