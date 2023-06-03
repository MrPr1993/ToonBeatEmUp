// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_shop(){controlNO=9


	
///For testing
//if x=-9999999999999999
{var unlockall=1;
	repeat(6)
	{
	global.UnlockStageA[unlockall]=1;
	unlockall+=1;
	}
}

	
controller_setup() 
if room=rm_shop
{fpsX=260 fpsY=8

if shopHello!=10 shopHello+=1 else {shopHello=11
	if shopHelloR=0 PlaySound(snd_betty1)
	if shopHelloR=1 PlaySound(snd_betty2)
	if shopHelloR=2 PlaySound(snd_betty3)
	if shopHelloR=3 PlaySound(snd_betty4)	
	}

if shopDialogueAlt!=1
{
if key_B or keyboard_check_pressed(vk_escape)
if shopBuy!=-1 {}//{shopBuy=-1}
else
{
canControl=0
 shopHelloR=choose(0,1,2,3)

	if shopHelloR=0 PlaySound(snd_betty5)
	if shopHelloR=1 PlaySound(snd_betty6)
	if shopHelloR=2 PlaySound(snd_betty7)
	if shopHelloR=3 PlaySound(snd_betty8)		

alarm[4]=80 global.StageGoing=rm_menu gold_save()
shopDialogueAlt=8
}
}
	if canControl!=0
	{
if canControl=0 {shopDialogueAlt=8 
	if shopHelloR=0 shopDesc="      BYE BYE!" 
	if shopHelloR=1 shopDesc="      SEE YA!" 
	if shopHelloR=2 shopDesc="      SO LONG!" 
	if shopHelloR=3 shopDesc="      GOODBYE!" 
	
	shopAltFace=3 shopName="" shopCost=""
}
	}
///Buy Item
if shopBuy!=-1
{
if -key_left_pressed {if shopBuy=0 shopBuy=1 else shopBuy=0 PlaySound(snd_select)}
if key_right_pressed {if shopBuy=0 shopBuy=1 else shopBuy=0 PlaySound(snd_select)}

if key_B or keyboard_check_pressed(vk_escape)
{shopBuy=-1 shopDialogueTime=2 shopDialogueAlt=5}

if key_A
if shopBuy=0 {shopBuy=-1 shopDialogueTime=2 shopDialogueAlt=5}
else {shopDialogueAlt=4 shopDialogueTime=120 shopBuy=-1
	
	PlaySound(snd_picked)
 shopHelloR=choose(0,1,2,3)
	if shopHelloR=0 PlaySound(snd_betty9)
	if shopHelloR=1 PlaySound(snd_betty10)
	if shopHelloR=2 PlaySound(snd_betty11)
	if shopHelloR=3 PlaySound(snd_betty12)	
	
	global.Gold-=shopPrice gold_save()
	
switch(shopSelect)
{
case 1: global.UnlockCharacterData=1 break;
case 2: global.UnlockAltPal=1 break;
case 3: global.UnlockAltPal2=2 break;
case 4: global.UnlockAltPal3=3 break;
case 5: global.UnlockSoundTest=1 break;
case 6: global.UnlockMovies=1 break;
case 7: global.UnlockCharacterData=1 break;
case 8: global.UnlockCharacterData=1 break;
case 9: global.UnlockCharacterData=1 break;
case 10: global.UnlockCharacterData=1 break;
case 11: global.UnlockCharacterData=1 break;
case 12: global.UnlockCharacterData=1 break;
case 13: global.UnlockCharacterData=1 break;
case 14: global.UnlockCharacterData=1 break;
case 15: global.UnlockCharacterData=1 break;
case 16: global.UnlockCharacterData=1 break;	

}
	 unlock_save()
	}/// BUY ITEM
}

if betatest=1
{if keyboard_check_pressed(vk_backspace)
	if keyboard_check(vk_shift)
	shopreset()
	else
		global.Gold=get_string("Set Money",global.Gold)
	
	}

if shopSet=0 shopName=""

shopName=""
shopDesc=""
shopCost=""
shopSelect=-1

////// Shop items - Set 1
if shopSet=0 
{
if shopselY=0 and shopselX=0
{shopPrice=3000 shopName="CHARACTER PROFILE" shopCost="COST:3000"
shopDesc="CHECK THEIR INFO! \nBUT TO GET THE\nENEMY DATA YOU\nGOTTA BEAT EM' UP!"
if global.UnlockCharacterData=0 shopSelect=1 else {shopSelect=-2 shopCost="SOLD OUT!"}
}
if shopselY=0 and shopselX=1
{shopPrice=4000 shopName="PALETTE SWAP" shopCost="COST:4000"
shopDesc="BORING OF YOUR\nCLOTHING COLOR?\nYOU CAN CHANGE IT\nWITH THIS!"
if global.UnlockAltPal=0 shopSelect=2 else {shopSelect=-2 shopCost="SOLD OUT!"}
}
if shopselY=0 and shopselX=2
{shopPrice=6000 shopName="PALETTE SWAP 2" shopCost="COST:4000"
shopDesc="MORE COLORS!\nAND MORE PALETTES!\nHAVE MORE COLORS\nWITH THIS ONE!"
if global.UnlockAltPal2=0 shopSelect=3 else {shopSelect=-2 shopCost="SOLD OUT!"}
}
if shopselY=0 and shopselX=3
{shopPrice=8000 shopName="CUSTOM PALETTE" shopCost="COST:8000"
shopDesc="WANT TO MAKE\nYOUR OWN PALETTE? \nUSE THIS TO\nRECOLOR THE DIVAS!"
if global.UnlockAltPal3=0 shopSelect=4 else {shopSelect=-2 shopCost="SOLD OUT!"}
}
if shopselY=1 and shopselX=0
{shopPrice=5000 shopName="SOUND TEST" shopCost="COST:5000"
shopDesc="WANNA HEAR SOME\nTUNES? HAVE A\nLISTEN WITH THIS!"
if global.UnlockSoundTest=0 shopSelect=5 else {shopSelect=-2 shopCost="SOLD OUT!"}
}
if shopselY=1 and shopselX=1
{shopPrice=5000 shopName="CUTSCENES" shopCost="COST:5000"
shopDesc="WATCH AGAIN\nSCENES YOU HAVE\nSEEN HERE IN THE\nRECORDER!"
if global.UnlockMovies=0 shopSelect=6 else {shopSelect=-2 shopCost="SOLD OUT!"}
}
}

if shopDialogueAlt!=0
{
	if canControl=1
	{
if shopDialogueAlt=1
{
if shopHelloR=0	shopDesc="     WELCOME!"
if shopHelloR=1	shopDesc="   HELLO THERE!"
if shopHelloR=2	shopDesc="  HOW DO YOU DO?"
if shopHelloR=3	shopDesc="  WHAT'LL IT BE?"	
	
	shopName="" shopCost=""}
if shopDialogueAlt=2
{shopDesc="SORRY,THIS ONE'S\nUNAVAILABLE." shopAltFace=3 shopName="" shopCost=""}
if shopDialogueAlt=3
{shopDesc="  WANT THAT ONE?" shopAltFace=-1}
shopDialogueTime-=1 if shopDialogueTime=0 {shopDialogueAlt=0 shopAltFace=-1}
if shopDialogueAlt=4
{
if shopHelloR=0	shopDesc="    THANK YOU!"
if shopHelloR=1	shopDesc="      SOLD!"
if shopHelloR=2	shopDesc="THANKS FOR BUYING!"
if shopHelloR=3	shopDesc="   HERE YOU GO!"	
	

	
	shopName="" shopCost="" shopAltFace=5
	
	}
if shopDialogueAlt=5 {}
if shopDialogueAlt=6
{shopDesc="OH YOU BOUGHT\nTHAT ONE ALREADY." shopAltFace=3 shopName="" shopCost=""}
if shopDialogueAlt=7
{shopDesc="SORRY,YOU DON'T\nHAVE ENOUGH CASH." shopAltFace=3 shopName="" shopCost=""}
if shopDialogueAlt=8
{
	if shopHelloR=0 shopDesc="     BYE BYE!" 
	if shopHelloR=1 shopDesc="     SEE YA!" 
	if shopHelloR=2 shopDesc="     SO LONG!" 
	if shopHelloR=3 shopDesc="     GOODBYE!" 
	shopAltFace=3 shopName="" shopCost=""}
}else {
	if shopHelloR=0 shopDesc="     BYE BYE!" 
	if shopHelloR=1 shopDesc="     SEE YA!" 
	if shopHelloR=2 shopDesc="     SO LONG!" 
	if shopHelloR=3 shopDesc="     GOODBYE!" 
	shopAltFace=3 shopName="" shopCost=""}
}
else
{
if key_A or keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("J"))
if shopSelect=-1 or shopSelect=-2
{
shopDialogueTime=120 shopDialogueAlt=2 PlaySound(snd_steal)
if shopSelect=-2 {shopDialogueAlt=6}
}
else
{
if shopBuy=-1
{
if global.Gold>=shopPrice
{
PlaySound(snd_picked)
shopDialogueAlt=3 shopDialogueTime=-1
shopBuy=1
}
else {shopDialogueTime=120 shopDialogueAlt=7 PlaySound(snd_steal)}
}

}

}



shopFrame0b=0
shopFrame0+=0.1 if shopFrame0>8 shopFrame0=0
if shopFrame0=clamp(shopFrame0,2,8)
{shopFrame0b=1
if shopFrame0=clamp(shopFrame0,4,6) shopFrame0b=2
}

if shopAltFace=-1
{
shopFrame1b=0
shopFrame1+=0.01 if shopFrame1>6 shopFrame1=0
if shopFrame1=clamp(shopFrame1,3-0.1,3+0.1)
{shopFrame1b=1
if shopFrame1=clamp(shopFrame1,3-0.05,3+0.05) shopFrame1b=2
}}
else shopFrame1b=shopAltFace

if shopDialogueAlt=1
{if shopFrameIntro<6-0.15 {shopFrameIntro+=0.15
draw_sprite(spr_shopgirlintro,shopFrameIntro,160,0)}
else draw_sprite(spr_shopgirl,0,160,0)
}
else
{
draw_sprite(spr_shopgirl,shopFrame0b,160,0)
draw_sprite(spr_shopgirl_face,shopFrame1b,160+48,57+round(shopFrame0b))
}

draw_set_color(c_black) draw_set_alpha(0.8)
draw_rectangle(-4,-4,160,300,false)
draw_set_color(c_white) draw_set_alpha(1)
draw_set_halign(fa_center) draw_set_font(global.scorefont)
draw_text(80,4,"SHOP")
draw_set_halign(fa_left)
draw_text(80,12,"")

if shopSet=0 /////Shop Items
{
///Set 1
if 	global.UnlockCharacterData=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem,1*global.UnlockStageA[1],2+2,16) shader_reset() if global.UnlockAltPal=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem,2*global.UnlockStageA[2],2+4+32,16) shader_reset() if global.UnlockAltPal2=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem,3*global.UnlockStageA[3],2+6+64,16) shader_reset() if global.UnlockAltPal3=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem,4*global.UnlockStageA[4],2+8+64+32,16) shader_reset()
///Set 2
if global.UnlockSoundTest=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem,5*global.UnlockStageA[5],2+2,16+2+32) shader_reset()
if global.UnlockMovies=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem,6*global.UnlockStageA[6],2+4+32,16+2+32) shader_reset() shader_set(shd_grayscale)
draw_sprite(spr_shopitem,7*global.UnlockStageA[7],2+6+64,16+2+32) shader_reset() shader_set(shd_grayscale)
draw_sprite(spr_shopitem,8*global.UnlockStageA[8],2+8+64+32,16+2+32) shader_reset() shader_set(shd_grayscale)
///Set 3
draw_sprite(spr_shopitem,9*global.UnlockStageA[9],2+2,16+4+64) shader_reset() shader_set(shd_grayscale)
draw_sprite(spr_shopitem,10*global.UnlockStageA[10],2+4+32,16+4+64) shader_reset() shader_set(shd_grayscale)
draw_sprite(spr_shopitem,11*global.UnlockStageA[11],2+6+64,16+4+64) shader_reset() shader_set(shd_grayscale)
draw_sprite(spr_shopitem,12*global.UnlockStageA[12],2+8+64+32,16+4+64) shader_reset() shader_set(shd_grayscale)
///Set 4
draw_sprite(spr_shopitem,13*global.UnlockStageA[13],2+2,16+6+96) shader_reset() shader_set(shd_grayscale)
draw_sprite(spr_shopitem,14*global.UnlockStageA[14],2+4+32,16+6+96) shader_reset() shader_set(shd_grayscale)
draw_sprite(spr_shopitem,15*global.UnlockStageA[15],2+6+64,16+6+96) shader_reset() shader_set(shd_grayscale)
draw_sprite(spr_shopitem,16*global.UnlockStageA[16],2+8+64+32,16+6+96) shader_reset()
}

draw_sprite(spr_shoppad,2,140,15)
draw_sprite(spr_shoppad,3,140,15+43+3)
draw_sprite(spr_shoppad,4,140,15+86+6)

///Cursor
if shopBuy=-1
{
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
}}

if shopselX!=4
{
if shopBuy=-1
draw_sprite(spr_shopitemcursor,0,2+2+(2*shopselX)+(32*shopselX),16+(2*shopselY)+(32*shopselY))
else
draw_sprite(spr_shopitemcursor,1,2+2+(2*shopselX)+(32*shopselX),16+(2*shopselY)+(32*shopselY))
}
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
if shopCost="SOLD OUT!" or global.Gold<shopPrice draw_set_color(c_red)
draw_text(80,180+4-16,shopCost) draw_set_color(c_white)
draw_set_halign(fa_left)

draw_text(8,180+4+10-8,shopDesc)
if shopBuy!=-1
{
draw_text(8,180+4+10,"     NO    YES")
if shopBuy=0
draw_text(8,180+4+10,"       ✰     ")
else
draw_text(8,180+4+10,"              ✰")
}

draw_command(4)

draw_set_halign(fa_right) 
draw_text(320-10,240-16,string(global.Gold)+string("$"))
draw_set_halign(fa_left)

}
}