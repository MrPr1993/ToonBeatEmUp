// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_shop(){
if room=rm_shop
{
controller_setup()

if shopSet=0 shopName=""

shopName=""
shopDesc=""
shopCost=""

if shopSet=0 and shopselY=0 and shopselX=0
{
shopName="CHARACTER PROFILE"
shopCost="COST:6000"
shopDesc="CHECK THEIR INFO! \nBUT TO GET THE\nENEMY DATA YOU\nGOTTA BEAT EM' UP!"
}

shopFrame0b=0
shopFrame0+=0.1 if shopFrame0>8 shopFrame0=0
if shopFrame0=clamp(shopFrame0,2,8)
{shopFrame0b=1
if shopFrame0=clamp(shopFrame0,4,6) shopFrame0b=2
}

shopFrame1b=0
shopFrame1+=0.01 if shopFrame1>6 shopFrame1=0
if shopFrame1=clamp(shopFrame1,3-0.1,3+0.1)
{shopFrame1b=1
if shopFrame1=clamp(shopFrame1,3-0.05,3+0.05) shopFrame1b=2
}
	
draw_sprite(spr_shopgirl,shopFrame0b,160,0)
draw_sprite(spr_shopgirl_face,shopFrame1b,160+48,57+round(shopFrame0b))


draw_set_color(c_black) draw_set_alpha(0.8)
draw_rectangle(-4,-4,160,300,false)
draw_set_color(c_white) draw_set_alpha(1)
draw_set_halign(fa_center) draw_set_font(global.scorefont)
draw_text(80,4,"SHOP")
draw_set_halign(fa_left)
draw_text(80,12,"")

if shopSet=0
{
///Set 1
draw_sprite(spr_shopitem,1,2+2,16)
draw_sprite(spr_shopitem,2,2+4+32,16)
draw_sprite(spr_shopitem,2,2+6+64,16)
draw_sprite(spr_shopitem,2,2+8+64+32,16)
///Set 2
draw_sprite(spr_shopitem,2,2+2,16+2+32)
draw_sprite(spr_shopitem,2,2+4+32,16+2+32)
draw_sprite(spr_shopitem,2,2+6+64,16+2+32)
draw_sprite(spr_shopitem,2,2+8+64+32,16+2+32)
///Set 3
draw_sprite(spr_shopitem,2,2+2,16+4+64)
draw_sprite(spr_shopitem,2,2+4+32,16+4+64)
draw_sprite(spr_shopitem,2,2+6+64,16+4+64)
draw_sprite(spr_shopitem,2,2+8+64+32,16+4+64)
///Set 4
draw_sprite(spr_shopitem,2,2+2,16+6+96)
draw_sprite(spr_shopitem,2,2+4+32,16+6+96)
draw_sprite(spr_shopitem,2,2+6+64,16+6+96)
draw_sprite(spr_shopitem,2,2+8+64+32,16+6+96)


}

draw_sprite(spr_shoppad,2,140,15)
draw_sprite(spr_shoppad,3,140,15+43+3)
draw_sprite(spr_shoppad,4,140,15+86+6)

///Cursor
if -key_left_pressed {if shopselX=0 shopselX=4 else shopselX-=1 PlaySound(snd_select)}
if key_right_pressed {if shopselX=4 shopselX=0 else shopselX+=1 PlaySound(snd_select)}

if shopselX!=4
{
if key_up_pressed 
{PlaySound(snd_select)
if shopSet=0
{
if shopselY=0 shopselY=3 else shopselY-=1}
}
if -key_down_pressed
{PlaySound(snd_select)
if shopSet=0
{
if shopselY=3 shopselY=0 else shopselY+=1
}
}
}
else
{
if key_up_pressed {if shopSet=0 shopSet=2 else shopSet-=1 PlaySound(snd_select)}
if -key_down_pressed {if shopSet=2 shopSet=0 else shopSet+=1 PlaySound(snd_select)}
}

if shopselX!=4
draw_sprite(spr_shopitem,0,2+2+(2*shopselX)+(32*shopselX),16+(2*shopselY)+(32*shopselY))

if shopselX=4
{
shader_set(shd_white_sprite)
draw_sprite(spr_shoppad,1,140,15+46*shopSet)
shader_reset()
}

if shopSet!=0
draw_sprite_ext(spr_shoppad,2,140,15,1,1,0,c_black,0.4)
if shopSet!=1
draw_sprite_ext(spr_shoppad,3,140,15+46,1,1,0,c_black,0.4)
if shopSet!=2
draw_sprite_ext(spr_shoppad,4,140,15+92,1,1,0,c_black,0.4)


draw_set_color(c_white)
draw_rectangle(4,180-24,160-4,240-4,false)

draw_rectangle(320-10-96-1,240-16-1-1,320-10+1,240-16+8+1,false)

draw_set_color(c_black)
draw_rectangle(5,180+1-24,160-5,240-5,false)

draw_rectangle(320-10-96,240-16-1,320-10,240-16+8,false)

draw_set_halign(fa_center) draw_set_color(c_white)
draw_text(80,180+4-24,shopName)
draw_text(80,180+4-16,shopCost)
draw_set_halign(fa_left)
draw_text(8,180+4+10-8,shopDesc)
draw_set_halign(fa_right) 
draw_text(320-10,240-16,string(global.Gold)+string("$"))
draw_set_halign(fa_left)

}
}