if (sprite_index != -1) //We will only draw if the sprite_index is set to something
{
//draw_self(); //Draw the sprite that is set, which is the reward sprite
//draw_text(x-sprite_width/2-15,y-42,"You Win!"); //Drawing some text for the player
}
	shader_reset()

draw_set_font(global.scorefont)

///Prize Objects
///777
gpu_set_blendmode_ext(bm_dest_colour, bm_zero);

draw_set_color(c_red)
var imgcheck=560;
matrix_set(matrix_world,matrix_build(16,16-8,0,0,0,180,1,1,1))
draw_sprite_part_ext(spr_slot,0,0,imgcheck,80,80,-16,-16,0.2,0.2,c_white,1);
draw_sprite_part_ext(spr_slot,0,0,imgcheck,80,80,-32,-16,0.2,0.2,c_white,1);
draw_sprite_part_ext(spr_slot,0,0,imgcheck,80,80,-48,-16,0.2,0.2,c_white,1);
draw_set_halign(fa_center)
draw_text_transformed(-112+32-16+8+24,0-2,"40",1.5,1.5,180) draw_set_halign(fa_left)
//
imgcheck=560-80*1;
matrix_set(matrix_world,matrix_build(16,16-8+16*1,0,0,0,180,1,1,1))
draw_sprite_part_ext(spr_slot,0,0,imgcheck,80,80,-16,-16,0.2,0.2,c_white,1);
draw_sprite_part_ext(spr_slot,0,0,imgcheck,80,80,-32,-16,0.2,0.2,c_white,1);
draw_sprite_part_ext(spr_slot,0,0,imgcheck,80,80,-48,-16,0.2,0.2,c_white,1);
draw_set_halign(fa_center)
draw_text_transformed(-112+32-16+8+24,0-2,"30",1.5,1.5,180) draw_set_halign(fa_left)
imgcheck=560-80*2;
matrix_set(matrix_world,matrix_build(16,16-8+16*2,0,0,0,180,1,1,1))
draw_sprite_part_ext(spr_slot,0,0,imgcheck,80,80,-16,-16,0.2,0.2,c_white,1);
draw_sprite_part_ext(spr_slot,0,0,imgcheck,80,80,-32,-16,0.2,0.2,c_white,1);
draw_sprite_part_ext(spr_slot,0,0,imgcheck,80,80,-48,-16,0.2,0.2,c_white,1);
draw_set_halign(fa_center)
draw_text_transformed(-112+32-16+8+24,0-2,"25",1.5,1.5,180) draw_set_halign(fa_left)
imgcheck=560-80*3;
matrix_set(matrix_world,matrix_build(16,16-8+16*3,0,0,0,180,1,1,1))
draw_sprite_part_ext(spr_slot,0,0,imgcheck,80,80,-16,-16,0.2,0.2,c_white,1);
draw_sprite_part_ext(spr_slot,0,0,imgcheck,80,80,-32,-16,0.2,0.2,c_white,1);
draw_sprite_part_ext(spr_slot,0,0,imgcheck,80,80,-48,-16,0.2,0.2,c_white,1);
draw_set_halign(fa_center)
draw_text_transformed(-112+32-16+8+24,0-2,"20",1.5,1.5,180) draw_set_halign(fa_left)

///Middle
imgcheck=560-80*4;
matrix_set(matrix_world,matrix_build(96,16-8,0,0,0,180,1,1,1))
draw_sprite_part_ext(spr_slot,0,0,imgcheck,80,80,-16,-16,0.2,0.2,c_white,1);
draw_sprite_part_ext(spr_slot,0,0,imgcheck,80,80,-32,-16,0.2,0.2,c_white,1);
draw_sprite_part_ext(spr_slot,0,0,imgcheck,80,80,-48,-16,0.2,0.2,c_white,1);
draw_set_halign(fa_center)
draw_text_transformed(-112+32-16+8+24,0-2,"20",1.5,1.5,180) draw_set_halign(fa_left)
imgcheck=560-80*5;
matrix_set(matrix_world,matrix_build(96,16-8+16*1,0,0,0,180,1,1,1))
draw_sprite_part_ext(spr_slot,0,0,imgcheck,80,80,-16,-16,0.2,0.2,c_white,1);
draw_sprite_part_ext(spr_slot,0,0,imgcheck,80,80,-32,-16,0.2,0.2,c_white,1);
draw_sprite_part_ext(spr_slot,0,0,imgcheck,80,80,-48,-16,0.2,0.2,c_white,1);
draw_set_halign(fa_center)
draw_text_transformed(-112+32-16+8+24,0-2,"15",1.5,1.5,180) draw_set_halign(fa_left)
imgcheck=560-80*6;
matrix_set(matrix_world,matrix_build(96,16-8+16*2,0,0,0,180,1,1,1))
draw_sprite_part_ext(spr_slot,0,0,imgcheck,80,80,-16,-16,0.2,0.2,c_white,1);
draw_sprite_part_ext(spr_slot,0,0,imgcheck,80,80,-32,-16,0.2,0.2,c_white,1);
draw_sprite_part_ext(spr_slot,0,0,imgcheck,80,80,-48,-16,0.2,0.2,c_white,1);
draw_set_halign(fa_center)
draw_text_transformed(-112+32-16+8+24,0-2,"10",1.5,1.5,180) draw_set_halign(fa_left)
imgcheck=560-80*7;
matrix_set(matrix_world,matrix_build(96,16-8+16*3,0,0,0,180,1,1,1))
draw_sprite_part_ext(spr_slot,0,0,imgcheck,80,80,-16,-16,0.2,0.2,c_white,1);
draw_sprite_part_ext(spr_slot,0,0,imgcheck,80,80,-32,-16,0.2,0.2,c_white,1);
draw_sprite_part_ext(spr_slot,0,0,imgcheck,80,80,-48,-16,0.2,0.2,c_white,1);
draw_set_halign(fa_center)
draw_text_transformed(-112+32-16+8+24,0-2,"10",1.5,1.5,180) draw_set_halign(fa_left)
//
imgcheck=560-80*7;
matrix_set(matrix_world,matrix_build(176,16-8,0,0,0,180,1,1,1))
draw_sprite_part_ext(spr_slot,0,0,imgcheck,80,80,-16,-16,0.2,0.2,c_white,1);
draw_sprite_part_ext(spr_slot,0,0,imgcheck,80,80,-32,-16,0.2,0.2,c_white,1);
draw_set_halign(fa_center)
draw_text_transformed(-112+32-16+8+24,0-2,"5",1.5,1.5,180) draw_set_halign(fa_left)
imgcheck=560-80*7;
matrix_set(matrix_world,matrix_build(176,16-8+16*1,0,0,0,180,1,1,1))
draw_sprite_part_ext(spr_slot,0,0,imgcheck,80,80,-16,-16,0.2,0.2,c_white,1);
draw_set_halign(fa_center)
draw_text_transformed(-112+32-16+8+24,0-2,"2",1.5,1.5,180) draw_set_halign(fa_left)

matrix_set(matrix_world,matrix_build_identity())

draw_set_color(c_yellow)

if winFlashTime=1
{
winFlash-=0.1 if winFlash<0 winFlash=1
if winFlash<0.5
draw_rectangle(winPosX,winPosY+8,winPosX+80,winPosY+8+16,false)
}
draw_set_blend_mode(bm_normal)


draw_set_color(c_white)
draw_sprite_ext(spr_slotflipper2,0,296,218-64,1,(186-64-slotflipperY),0,c_white,1)
draw_sprite(spr_slotflipper,0,296,32+slotflipperY)

draw_command(10);

if oControl.betatest=1
if rigMode=-1
draw_text(53,8,"RIG MACHINE: OFF")
else
draw_text(53,8,"RIG MACHINE: "+string(rigMode))



draw_set_halign(fa_center)
if showingReward = true
draw_text(160,160+12,string(moneyBet)+" X "+string(rewardPrize)+" = "+string(moneyBet*rewardPrize))