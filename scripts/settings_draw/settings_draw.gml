// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function settings_draw(){
if instance_exists(oSettings) with oSettings
{
draw_set_font(global.scorefont)

draw_set_valign(fa_top)

draw_set_color(c_black) draw_set_alpha(0.75)
draw_rectangle(-4,-4,777,777,false)
draw_set_color(c_white) draw_set_alpha(1)

draw_sprite_tiled(bg_testarea,0,0,0)

draw_set_halign(fa_center)
draw_text(160,8,languagetext[0])
if controlSettings=0
{
///LEFT SIDE
draw_set_halign(fa_right)
draw_text(160,32,languagetext[1]+string(" "))
draw_text(160,40,languagetext[2]+string(" "))
draw_text(160,48+4,languagetext[3]+string(" "))
draw_text(160,56+4,languagetext[4]+string(" "))
if TVfx!=7 draw_set_color(c_dkgray)
draw_text(160,56+4+8,languagetext[5]+string(" "))
draw_text(160,56+4+16,languagetext[6]+string(" "))
draw_text(160,56+4+24,languagetext[7]+string(" "))
draw_set_color(c_white)
draw_text(160,56+4+32,languagetext[8]+string(" "))
draw_text(160,56+4+32+8,languagetext[9]+string(" "))
draw_text(160,64+8+48,languagetext[10]+string(" "))
draw_text(160,72+8+48,languagetext[11]+string(" "))
if stagePause=1 draw_set_color(c_dkgray)
draw_text(160,80+12+48,languagetext[12]+string(" "))
draw_set_color(c_white)

draw_text(160,88+12+48,languagetext[13]+string(" "))
draw_set_color(c_white)
draw_text(160,96+24+48,"FPS ")
draw_text(160,104+8+48," ")
draw_text(160,112+8+48+16,languagetext[14]+string(" "))

///RIGHT SIDE
draw_set_halign(fa_left)
draw_text(160,32," "+string(global.BGMvolume)+string("%"))
draw_text(160,40," "+string(global.SFXvolume)+string("%"))

draw_text(160,48+4," "+string(window_get_width())+"X"+string(window_get_height()))


if instance_exists(oPause) TVfx=oPause.TVfx
if instance_exists(oControl) TVfx=oControl.TVfx

if TVfx=0
draw_text(160,56+4," "+string(languagetext[15]))
else
{if TVfx=7
draw_text(160,56+4," "+string(languagetext[16]))
else
draw_text(160,56+4," "+string(languagetext[17])+" "+string(TVfx))
}
if TVfx!=7 draw_set_color(c_dkgray)
if global.CRTcustomDistort=1
draw_text(160,56+4+8," "+string(languagetext[18])) else draw_text(160,56+4+8," "+string(languagetext[19]))
draw_text(160,56+4+16," "+string( round(((global.CRTcustomDistortAM+4.01)*25)/2))+"%")
if global.CRTcustomBorder=1
draw_text(160,56+4+24," "+string(languagetext[18])) else draw_text(160,56+4+24," "+string(languagetext[19]))
draw_set_color(c_white)

if global.ColorMode=0
draw_text(160,56+4+32," "+string(languagetext[20]))
if global.ColorMode=1
draw_text(160,56+4+32," "+string(languagetext[21]))
if global.ColorMode=2
draw_text(160,56+4+32," "+string(languagetext[22]))
if global.ColorMode=3
draw_text(160,56+4+32," "+string(languagetext[23]))
if global.ColorMode=4
draw_text(160,56+4+32," "+string(languagetext[24]))
if global.ColorMode=5
draw_text(160,56+4+32," "+string(languagetext[25]))

if global.ArcadeScreen=0
draw_text(160,56+4+32+8," "+string(languagetext[15])+" "+string(global.ArcadeScreen))
if global.ArcadeScreen=1
draw_text(160,56+4+32+8," "+string(languagetext[26])+" "+string(global.ArcadeScreen))
if global.ArcadeScreen=2
draw_text(160,56+4+32+8," "+string(languagetext[27])+" "+string(global.ArcadeScreen))

if global.Screenshake=1
draw_text(160,64+8+48," "+string(languagetext[18])) else draw_text(160,64+8+48," "+string(languagetext[19]))
if global.Screenflash=1
draw_text(160,72+8+48," "+string(languagetext[18])) else draw_text(160,72+8+48," "+string(languagetext[19]))

if stagePause=1 draw_set_color(c_dkgray)
draw_text(160,80+12+48," "+string(global.LifeStart))
draw_set_color(c_white)

//if global.ContinueStart=-1
//draw_text(160,88+12+48," "+string(languagetext[28]))
//else
//draw_text(160,88+12+48," "+string(global.ContinueStart))

if global.CutsceneSkipSpd=1
draw_text(160,88+12+48," "+string(languagetext[31]))
else
draw_text(160,88+12+48," "+string(100*global.CutsceneSkipSpd)+"%")

draw_set_color(c_white)

if global.fpsMode=0
draw_text(160,96+24+48," "+string(" "+string(languagetext[19])))
else
draw_text(160,96+24+48," "+string(" "+string(languagetext[18])))

draw_text(160,104+8+48," ")
draw_text(160,112+8+48+16," "+string(languagetext[29]))

//STAR
if menuSelect=0 StarY=0
if menuSelect=1 StarY=8
if menuSelect=2 StarY=16+4
if menuSelect=3 StarY=24+4
if menuSelect=4 StarY=24+4+8
if menuSelect=5 StarY=24+4+16
if menuSelect=6 StarY=24+4+24
if menuSelect=7 StarY=24+4+32
if menuSelect=8 StarY=24+4+32+8

if menuSelect=9 StarY=32+8+32+16
if menuSelect=10 StarY=40+8+40+8
if menuSelect=11 StarY=48+12+56-8
if menuSelect=12 StarY=56+12+64-16
if menuSelect=13 StarY=56+12+72-4
if menuSelect=14 StarY=56+12+72-4+16

draw_sprite(spr_scorefont,43,160-4,32+StarY)
}

if controlSettings=1
{
with oPlayerDisembodied
{
if controlNO=1
d3d_transform_set_translation(0,0,0)
if controlNO=2
d3d_transform_set_translation(80,0,0)
if controlNO=3
d3d_transform_set_translation(160,0,0)
if controlNO=4
d3d_transform_set_translation(240,0,0)
draw_set_halign(fa_center)
draw_set_color(c_white)
draw_text(40,32,"PLAYER "+string(controlNO))
//LegacyMode=0

LegacyMode=global.LegacyMode[controlNO];

if keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("J"))
or key_A or key_B or key_X or key_Y
{
if menuSelect=0
global.LegacyMode[controlNO]^=1;

if (LegacyMode=0 and menuSelect=8) or (LegacyMode=1 and menuSelect=5) ///Reset
{global.LegacyMode[controlNO]=0 
	
	globalcontrols(controlNO)
	
	}
} if menuSelect=-1 menuSelect=0

draw_command(11)

////Change Control Settings
if ControlChange=0
{var _controlno=controlNO;
if keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("J"))
or key_A or key_B or key_X or key_Y

if menuSelect!=0
ControlChange=1

if keyboard_check_pressed(ord("U")) or keyboard_check_pressed(ord("Y"))
or key_LT or  key_RT
Joystick^=1;

}
else
{ 
if keyboard_check_pressed(vk_escape)
or keyboard_check_pressed(vk_left) or keyboard_check_pressed(vk_right) or
keyboard_check_pressed(vk_up) or keyboard_check_pressed(vk_down)
or -key_left or key_right or key_up or -key_down	
{ControlChange=0}
else
{
////Keyboard Controls
if Joystick=0
{var _controlno=controlNO;

if keyboard_check_pressed(vk_anykey)
{
var checkstring=ord(keyboard_lastchar);
var inputstr=string_upper(chr(checkstring));

var recordkey1=global.ControlJump[_controlno];
var recordkey2=global.ControlAttack[_controlno];
var recordkey3=global.ControlShield[_controlno];
var recordkey4=global.ControlSuper[_controlno];
var recordkey5=global.ControlPunchback[_controlno];
var recordkey6=global.ControlTaunt[_controlno];

switch(menuSelect)
{
case 1: global.ControlJump[_controlno]=inputstr; break;
case 2: global.ControlAttack[_controlno]=inputstr; break;
case 3: global.ControlShield[_controlno]=inputstr; break;
case 4: global.ControlSuper[_controlno]=inputstr; break;
case 5: global.ControlPunchback[_controlno]=inputstr; break;
case 6: global.ControlTaunt[_controlno]=inputstr; break;
}

//if global.ControlJump[_controlno]=inputstr 
//else if global.ControlAttack[_controlno]=inputstr
//else if global.ControlShield[_controlno]=inputstr 
//else if global.ControlSuper[_controlno]=inputstr 
//else if global.ControlPunchback[_controlno]=inputstr 
//else if global.ControlTaunt[_controlno]=inputstr 

//if menuSelect=7 global.ControlAttack[controlNO]

ControlChange=0
}

}
else
{var _controlno=controlNO
var controllercheck="";

if key_A or key_B or key_X or key_Y or key_LT or key_RT
{
if key_A controllercheck=gp_face1
if key_B controllercheck=gp_face2
if key_X controllercheck=gp_face3
if key_Y controllercheck=gp_face4
if key_LT controllercheck=gp_shoulderl
if key_RT controllercheck=gp_shoulderr
}
if controllercheck!=""
{
var inputstr=controllercheck;
if menuSelect=1 global.gpControlJump[_controlno]=inputstr;
if menuSelect=2 global.gpControlAttack[_controlno]=inputstr;
if menuSelect=3 global.gpControlShield[_controlno]=inputstr;
if menuSelect=4 global.gpControlSuper[_controlno]=inputstr;
if menuSelect=5 global.gpControlPunchback[_controlno]=inputstr;
if menuSelect=6 global.gpControlTaunt[_controlno]=inputstr;

ControlChange=0
}

}
}

}

draw_set_halign(fa_center)

if LegacyMode=0
{if ControlChange=0
	{
if key_up_pressed if menuSelect=0 menuSelect=9 else menuSelect-=1
if -key_down_pressed if menuSelect=9 menuSelect=0 else menuSelect+=1
	}

draw_set_color(c_gray)
if menuSelect=0 if ControlChange=0 draw_set_color(c_white) else draw_set_color(c_yellow)
draw_text_transformed(40,32+16,"LEGACY MODE:OFF",0.5,1,0) draw_set_color(c_gray)
if menuSelect=1 if ControlChange=0 draw_set_color(c_white) else draw_set_color(c_yellow)
draw_set_halign(fa_left) draw_text_transformed(6,2*1+32+16+8,"JUMP",0.75,1,0)
draw_set_halign(fa_right) if Joystick=0 draw_text_transformed(80-6,2*1+32+16+8,global.ControlJump[controlNO],0.75,1,0) draw_set_color(c_gray)
if menuSelect=2 if ControlChange=0 draw_set_color(c_white) else draw_set_color(c_yellow)
draw_set_halign(fa_left) draw_text_transformed(6,2*2+32+16+8*2,"ATTACK",0.75,1,0)
draw_set_halign(fa_right) if Joystick=0 draw_text_transformed(80-6,2*2+32+16+8*2,global.ControlAttack[controlNO],0.75,1,0) draw_set_color(c_gray)
if menuSelect=3 if ControlChange=0 draw_set_color(c_white) else draw_set_color(c_yellow)
draw_set_halign(fa_left) draw_text_transformed(6,2*3+32+16+8*3,"SPECIAL",0.75,1,0)
draw_set_halign(fa_right) if Joystick=0 draw_text_transformed(80-6,2*3+32+16+8*3,global.ControlShield[controlNO],0.75,1,0) draw_set_color(c_gray)
if menuSelect=4 if ControlChange=0 draw_set_color(c_white) else draw_set_color(c_yellow)
draw_set_halign(fa_left) draw_text_transformed(6,2*4+32+16+8*4,"SHOWTIME",0.75,1,0)
draw_set_halign(fa_right) if Joystick=0 draw_text_transformed(80-6,2*4+32+16+8*4,global.ControlSuper[controlNO],0.75,1,0) draw_set_color(c_gray)
if menuSelect=5 if ControlChange=0 draw_set_color(c_white) else draw_set_color(c_yellow)
draw_set_halign(fa_left) draw_text_transformed(6,2*5+32+16+8*5,"BACK ATTACK",0.5,1,0)
draw_set_halign(fa_right) if Joystick=0 draw_text_transformed(80-6,2*5+32+16+8*5,global.ControlPunchback[controlNO],0.75,1,0) draw_set_color(c_gray)
if menuSelect=6 if ControlChange=0 draw_set_color(c_white) else draw_set_color(c_yellow)
draw_set_halign(fa_left) draw_text_transformed(6,2*6+32+16+8*6,"TAUNT",0.75,1,0)
draw_set_halign(fa_right) if Joystick=0  draw_text_transformed(80-6,2*6+32+16+8*6,global.ControlTaunt[controlNO],0.75,1,0) draw_set_color(c_dkgray)
draw_set_halign(fa_left) draw_text_transformed(6,2*7+32+16+8*7,"INTERACT",0.75,1,0)
draw_set_halign(fa_right) if Joystick=0
if !LegacyMode {draw_text_transformed(80-6,2*7+32+16+8*7,global.ControlAttack[controlNO],0.75,1,0)}
else {draw_text_transformed(80-6,2*7+32+16+8*7,global.ControlInteract[controlNO],0.75,1,0)}

draw_set_color(c_dkgray)
draw_set_halign(fa_left) draw_text_transformed(6,2*8+32+16+8*8,"BACK ATTACK",0.5,1,0)
draw_set_halign(fa_right) if Joystick=0 draw_text_transformed(80-6,2*8+32+16+8*8,"◄"+string(global.ControlAttack[controlNO]),0.75,1,0)
else  draw_text_transformed(80-6,2*8+32+16+8*8,"◄ ",0.75,1,0)
draw_set_color(c_dkgray)
draw_set_halign(fa_left) draw_text_transformed(6,2*9+32+16+8*9,"CHARGE",0.5,1,0)
draw_set_halign(fa_right) if Joystick=0 draw_text_transformed(80-6,2*9+32+16+8*9,"HOLD "+string(global.ControlAttack[controlNO]),0.75,1,0)
else draw_text_transformed(80-6,2*9+32+16+8*9,"HOLD  ",0.75,1,0)
draw_set_color(c_gray)
if menuSelect=8 draw_set_color(c_white)
draw_set_halign(fa_center) draw_text_transformed(40,32+16+8*13,"RESET",1,1,0)
}
else
{
	if ControlChange=0
	{
if key_up_pressed if menuSelect=0 menuSelect=5 else menuSelect-=1
if -key_down_pressed if menuSelect=5 menuSelect=0 else menuSelect+=1	
	}
draw_set_color(c_gray)
if menuSelect=0 if ControlChange=0 draw_set_color(c_white) else draw_set_color(c_yellow)
draw_text_transformed(40,32+16,"LEGACY MODE:ON",0.5,1,0) draw_set_color(c_gray)
if menuSelect=1 if ControlChange=0 draw_set_color(c_white) else draw_set_color(c_yellow)
draw_set_halign(fa_left) draw_text_transformed(6,2*1+32+16+8,"JUMP",0.75,1,0)
draw_set_halign(fa_right) if Joystick=0 draw_text_transformed(80-6,2*1+32+16+8,global.ControlJump[controlNO],0.75,1,0) draw_set_color(c_gray)
if menuSelect=2 if ControlChange=0 draw_set_color(c_white) else draw_set_color(c_yellow)
draw_set_halign(fa_left) draw_text_transformed(6,2*2+32+16+8*2,"ATTACK",0.75,1,0)
draw_set_halign(fa_right) if Joystick=0 draw_text_transformed(80-6,2*2+32+16+8*2,global.ControlAttack[controlNO],0.75,1,0) draw_set_color(c_gray)
if menuSelect=3 if ControlChange=0 draw_set_color(c_white) else draw_set_color(c_yellow)
draw_set_halign(fa_left) draw_text_transformed(6,2*3+32+16+8*3,"SPECIAL",0.75,1,0)
draw_set_halign(fa_right) if Joystick=0 draw_text_transformed(80-6,2*3+32+16+8*3,global.ControlShield[controlNO],0.75,1,0) draw_set_color(c_gray)
if menuSelect=4 if ControlChange=0 draw_set_color(c_white) else draw_set_color(c_yellow)
draw_set_halign(fa_left) draw_text_transformed(6,2*4+32+16+8*4,"SHOWTIME",0.75,1,0)
draw_set_halign(fa_right) if Joystick=0 draw_text_transformed(80-6,2*4+32+16+8*4,global.ControlSuper[controlNO],0.75,1,0) draw_set_color(c_dkgray)
draw_set_halign(fa_left) draw_text_transformed(6,2*5+32+16+8*5,"BACK ATTACK",0.5,1,0)
draw_set_halign(fa_right) if Joystick=0 draw_text_transformed(80-6,2*5+32+16+8*5,global.ControlPunchback[controlNO],0.75,1,0) 
draw_set_halign(fa_left) draw_text_transformed(6,2*6+32+16+8*6,"TAUNT",0.75,1,0)
draw_set_halign(fa_right) if Joystick=0 draw_text_transformed(80-6,2*6+32+16+8*6,global.ControlTaunt[controlNO],0.75,1,0) draw_set_color(c_dkgray)
draw_set_halign(fa_left) draw_text_transformed(6,2*7+32+16+8*7,"INTERACT",0.75,1,0)
draw_set_halign(fa_right) if Joystick=0
if !LegacyMode {draw_text_transformed(80-6,2*7+32+16+8*7,global.ControlAttack[controlNO],0.75,1,0)}
else {draw_text_transformed(80-6,2*7+32+16+8*7,global.ControlInteract[controlNO],0.75,1,0)}

draw_set_color(c_dkgray)
draw_set_halign(fa_left) draw_text_transformed(6,2*8+32+16+8*8,"BACK ATTACK",0.5,1,0)
draw_set_halign(fa_right) if Joystick=0 draw_text_transformed(80-6,2*8+32+16+8*8,"◄"+string(global.ControlAttack[controlNO]),0.75,1,0) else
 draw_text_transformed(80-6,2*8+32+16+8*8,"◄ ",0.75,1,0)draw_set_color(c_dkgray)
draw_set_halign(fa_left) draw_text_transformed(6,2*9+32+16+8*9,"CHARGE",0.5,1,0)
draw_set_halign(fa_right) if Joystick=0 draw_text_transformed(80-6,2*9+32+16+8*9,"HOLD "+string(global.ControlAttack[controlNO]),0.75,1,0)
else  draw_text_transformed(80-6,2*9+32+16+8*9,"HOLD  ",0.75,1,0)
draw_set_color(c_gray)
if menuSelect=5 draw_set_color(c_white)
draw_set_halign(fa_center) draw_text_transformed(40,32+16+8*13,"RESET",1,1,0)
}
}
}

draw_command(12)

if global.fpsMode=1
{draw_set_halign(fa_right)

draw_text(320,240-8,string_hash_to_newline("FPS: "+string(fps_real)))
draw_text(320,240-16,string_hash_to_newline("FPSR : "+string(fps)))
draw_set_halign(fa_left)
}

}
}