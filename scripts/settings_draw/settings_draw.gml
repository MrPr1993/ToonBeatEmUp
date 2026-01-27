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
draw_text(160,24,languagetext[38]+string(" "))
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
draw_text(160,80+12+48,languagetext[32]+string(" "))
draw_set_color(c_white)

draw_text(160,88+12+48,languagetext[13]+string(" "))
draw_set_color(c_white)
draw_text(160,96+24+48,"FPS ")
draw_text(160,104+8+48," ")

draw_text(160,112+8+48+16,languagetext[35]+string(" "))

draw_text(160,112+8+48+16+8,languagetext[36]+string(" "))

draw_text(160,112+8+48+16+16,languagetext[14]+string(" "))

///RIGHT SIDE
draw_set_halign(fa_left)
draw_text(160,24," "+string(global.Mastervolume)+string("%"))
draw_text(160,32," "+string(global.BGMvolume)+string("%"))
draw_text(160,40," "+string(global.SFXvolume)+string("%"))

var _screen=string(window_get_width())+"X"+string(window_get_height());
if global.ScreenSize=2 _screen=string(languagetext[39]);
draw_text(160,48+4," "+string( _screen))


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
if TVfx=8
draw_text(160,56+4," LCD")

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
draw_text(160,56+4+32," GB")


if global.ArcadeScreen=0
draw_text(160,56+4+32+8," "+string(languagetext[15])+" "+string(global.ArcadeScreen))
if global.ArcadeScreen=1
draw_text(160,56+4+32+8," "+string(languagetext[26])+" "+string(global.ArcadeScreen))
if global.ArcadeScreen=2
draw_text(160,56+4+32+8," "+string(languagetext[26])+" "+string(global.ArcadeScreen)+" B")
if global.ArcadeScreen=3
draw_text(160,56+4+32+8," "+string(languagetext[27])+" "+string(global.ArcadeScreen))
if global.ArcadeScreen=4
draw_text(160,56+4+32+8," "+string(languagetext[34])+" "+string(global.ArcadeScreen))
if global.ArcadeScreen=5
draw_text(160,56+4+32+8," "+string(languagetext[37])+" "+string(global.ArcadeScreen))
if global.ArcadeScreen=6
draw_text(160,56+4+32+8," "+string(languagetext[37])+" "+string(global.ArcadeScreen)+" B")
if global.ArcadeScreen=7
draw_text(160,56+4+32+8," "+string(languagetext[26])+" "+string(global.ArcadeScreen)+" 2")
if global.ArcadeScreen=8
draw_text(160,56+4+32+8," "+string(languagetext[26])+" "+string(global.ArcadeScreen)+" 2B")

if global.Screenshake=1
draw_text(160,64+8+48," "+string(languagetext[18])) else draw_text(160,64+8+48," "+string(languagetext[19]))
if global.Screenflash=1
draw_text(160,72+8+48," "+string(languagetext[18])) else draw_text(160,72+8+48," "+string(languagetext[19]))

if stagePause=1 draw_set_color(c_dkgray)
//draw_text(160,80+12+48," "+string(global.LifeStart))
draw_text(160,80+12+48," "+string(languagetext[33]))
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

if global.GoldShow=0
draw_text(160,112+8+48+16," "+string(" "+string(languagetext[19])))
else
draw_text(160,112+8+48+16," "+string(" "+string(languagetext[18])))

if global.DisplayFeats=0
draw_text(160,112+8+48+16+8," "+string(" "+string(languagetext[19])))
else
draw_text(160,112+8+48+16+8," "+string(" "+string(languagetext[18])))

draw_text(160,112+8+48+16+16," "+string(languagetext[29]))

//STAR
if menuSelect=-1 StarY=-8
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
if menuSelect=15 StarY=56+12+72-4+16+8

if menuSelect=16 StarY=56+12+72-4+16+16

draw_sprite(spr_scorefont,43,160-4,32+StarY)
}

if controlSettings=1
{

with oPlayerDisembodied
{
d3d_transform_set_translation(0,0,0)
if controlNO=2
d3d_transform_set_translation(80,0,0)
if controlNO=3
d3d_transform_set_translation(160,0,0)
if controlNO=4
d3d_transform_set_translation(240,0,0)
if !(input_player_connected(controlNO-1))
{
}
else
{

draw_set_halign(fa_center)
draw_set_color(c_white)
draw_text(40,32,"PLAYER "+string(controlNO))
//LegacyMode=0
var _controlno=controlNO-1;
////Change Control Settings
if ControlChange=0
{var _controlno=controlNO-1;
if keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("J"))
or key_A or key_B or key_X or key_Y or key_LT or key_RT
if menuSelect!=0 and menuSelect!=8 and menuSelect!=9
ControlChange=1

//if keyboard_check_pressed(ord("U")) or keyboard_check_pressed(ord("Y")) or key_LT or  key_RT Joystick^=1;
if !(input_source_using(INPUT_GAMEPAD, _controlno))
Joystick=0 else Joystick=1

}
else
{ 
if keyboard_check_pressed(vk_escape)
//or keyboard_check_pressed(vk_left) or keyboard_check_pressed(vk_right) or
//keyboard_check_pressed(vk_up) or keyboard_check_pressed(vk_down)
//or -key_left or key_right or key_up or -key_down	
{ControlChange=0}
else
{
////Keyboard Controls
if Joystick=0
{var _controlno=controlNO-1;

if keyboard_check_pressed(vk_anykey)
if (string_count(chr(keyboard_key), enabled_keys))
{
if menuSelect<=6 and menuSelect!=0
{
var excludenum=0; var savestr="";
var checkstring=keyboard_lastchar;//ord(keyboard_lastchar);
if checkstring!=" "
{
var inputstr=string_upper(checkstring);//string_upper(chr(checkstring));

var recordkey1=global.ControlJump[_controlno];
var recordkey2=global.ControlAttack[_controlno];
var recordkey3=global.ControlShield[_controlno];
var recordkey4=global.ControlSuper[_controlno];
var recordkey5=global.ControlPunchback[_controlno];
var recordkey6=global.ControlTaunt[_controlno];

if menuSelect=1 {savestr=global.ControlJump[_controlno] global.ControlJump[_controlno]=inputstr; excludenum=1}
if menuSelect=2 {savestr=global.ControlAttack[_controlno] global.ControlAttack[_controlno]=inputstr; excludenum=2}
if menuSelect=3 {savestr=global.ControlShield[_controlno] global.ControlShield[_controlno]=inputstr; excludenum=3}
if menuSelect=4 {savestr=global.ControlSuper[_controlno] global.ControlSuper[_controlno]=inputstr; excludenum=4}
if menuSelect=5 {savestr=global.ControlPunchback[_controlno] global.ControlPunchback[_controlno]=inputstr; excludenum=5}
if menuSelect=6 {savestr=global.ControlTaunt[_controlno] global.ControlTaunt[_controlno]=inputstr; excludenum=6}

if excludenum!=1 
if global.ControlJump[_controlno]=inputstr global.ControlJump[_controlno]=savestr;

if excludenum!=2
if global.ControlAttack[_controlno]=inputstr global.ControlAttack[_controlno]=savestr;

if excludenum!=3
if global.ControlShield[_controlno]=inputstr global.ControlShield[_controlno]=savestr;

if excludenum!=4
if global.ControlSuper[_controlno]=inputstr global.ControlSuper[_controlno]=savestr;

if excludenum!=5
if global.ControlPunchback[_controlno]=inputstr global.ControlPunchback[_controlno]=savestr;

if excludenum!=6
if global.ControlTaunt[_controlno]=inputstr global.ControlTaunt[_controlno]=savestr;


//if global.ControlJump[_controlno]=inputstr 
//else if global.ControlAttack[_controlno]=inputstr
//else if global.ControlShield[_controlno]=inputstr 
//else if global.ControlSuper[_controlno]=inputstr 
//else if global.ControlPunchback[_controlno]=inputstr 
//else if global.ControlTaunt[_controlno]=inputstr 

//if menuSelect=7 global.ControlAttack[controlNO]
}
ControlChange=0
}
}
else
ControlChange=0
}
else
{var _controlno=controlNO-1;
var controllercheck="";

if key_A or key_B or key_X or key_Y or key_LT or key_RT
if menuSelect<=6 and menuSelect!=0
{
if key_A controllercheck="key_ABUTTON"
if key_B controllercheck="key_BBUTTON"
if key_X controllercheck="key_XBUTTON"
if key_Y controllercheck="key_YBUTTON"
if key_LT controllercheck="key_LTBUTTON"
if key_RT controllercheck="key_RTBUTTON"
}
if controllercheck!=""
{var excludenum=0; var savestr="";
var inputstr=controllercheck;
if menuSelect=1 {savestr=global.gpControlJump[_controlno] global.gpControlJump[_controlno]=inputstr; excludenum=1}
if menuSelect=2 {savestr=global.gpControlAttack[_controlno] global.gpControlAttack[_controlno]=inputstr; excludenum=2}
if menuSelect=3 {savestr=global.gpControlShield[_controlno] global.gpControlShield[_controlno]=inputstr; excludenum=3}
if menuSelect=4 {savestr=global.gpControlSuper[_controlno] global.gpControlSuper[_controlno]=inputstr; excludenum=4}
if menuSelect=5 {savestr=global.gpControlPunchback[_controlno] global.gpControlPunchback[_controlno]=inputstr; excludenum=5}
if menuSelect=6 {savestr=global.gpControlTaunt[_controlno] global.gpControlTaunt[_controlno]=inputstr; excludenum=6}

if excludenum!=1 
if global.gpControlJump[_controlno]=inputstr global.gpControlJump[_controlno]=savestr;

if excludenum!=2
if global.gpControlAttack[_controlno]=inputstr global.gpControlAttack[_controlno]=savestr;

if excludenum!=3
if global.gpControlShield[_controlno]=inputstr global.gpControlShield[_controlno]=savestr;

if excludenum!=4
if global.gpControlSuper[_controlno]=inputstr global.gpControlSuper[_controlno]=savestr;

if excludenum!=5
if global.gpControlPunchback[_controlno]=inputstr global.gpControlPunchback[_controlno]=savestr;

if excludenum!=6
if global.gpControlTaunt[_controlno]=inputstr global.gpControlTaunt[_controlno]=savestr;

ControlChange=0
}

}
}

}



if key_A
{
if menuSelect=0
global.LegacyMode[_controlno]^=1;

if (LegacyMode=0 and menuSelect=8) or (LegacyMode=1 and menuSelect=5) ///Reset
{global.LegacyMode[_controlno]=0 
	
	globalcontrols(_controlno)
	//exit;
	}
} if menuSelect=-1 menuSelect=0

if key_A 
if (LegacyMode=0 and menuSelect=9) or (LegacyMode=1 and menuSelect=6)
{menuSelect=0 input_source_clear(_controlno);}

var commandsave = global.ConsoleType;
global.ConsoleType="PC"
if (input_source_using(INPUT_GAMEPAD, _controlno))
{
var _gp=input_player_get_gamepad_type(_controlno)
if _gp=INPUT_GAMEPAD_TYPE_XBOX_360 or _gp=INPUT_GAMEPAD_TYPE_XBOX_ONE
global.ConsoleType="XBOX"
if _gp=INPUT_GAMEPAD_TYPE_PS5 or _gp=INPUT_GAMEPAD_TYPE_PS4 or _gp=INPUT_GAMEPAD_TYPE_PSX
global.ConsoleType="PS"
if _gp=INPUT_GAMEPAD_TYPE_SWITCH or _gp=INPUT_GAMEPAD_TYPE_GAMECUBE// or _gp=INPUT_GAMEPAD_TYPE_UNKNOWN
global.ConsoleType="SWITCH"
}	

draw_command(11)
global.ConsoleType = commandsave;

draw_set_halign(fa_center)

////Draw the bits
var _t1="PRESS\nANY TO\nCONNECT!"
var _t2="LEGACY MODE:OFF"
var _t3="LEGACY MODE:ON"
var _t4="JUMP"
var _t5="ATTACK"
var _t6="SPECIAL"
var _t7="SHOWTIME"
var _t8="BACK ATTACK"
var _t9="TAUNT"
var _t10="INTERACT"
var _t11="CHARGE"
var _t12="HOLD "
var _t13="HOLD  "
var _t14="RESET"
var _t15="DISCONNECT"
switch(global.Language)
{
case 1: ///Portuguese
_t1="PRESIONA\nQUALQUIER\nTECLA PARA\nCONECTAR!"
_t2="NUEVO ARCHIVO"
_t3="NUEVO JUEGO"
var _t4="SALTAR"
var _t5="ATACAR"
var _t6="ESPECIAL"
var _t7="SHOWTIME"
var _t8="RETALIAR"
var _t9="GESTO"
var _t10="INTERACTUAR"
var _t11="CARGA"
var _t12="AGTA. "
var _t13="AGTA.  "
var _t14="RESET"
var _t15="DESCONECTAR"
break;
case 2: ///Portuguese
_t1="PRESSIONE\nQUALQUER\nTECLA PARA\nCONECTAR!"
_t2="NÃO ARQUIVO"
_t3="NOVO JOGO"
var _t4="SALTAR"
var _t5="ATACAR"
var _t6="ESPECIAL"
var _t7="SHOWTIME"
var _t8="RETALIAR"
var _t9="PROVOCAR"
var _t10="INTERAGIR"
var _t11="CARGA"
var _t12="AGTA. "
var _t13="AGTA.  "
var _t14="RESET"
var _t15="DESCONECTAR"
break;
}

if !(input_player_connected(_controlno))
{
draw_set_color(c_white)
draw_set_halign(fa_center) draw_text_transformed(40,128,_t1,1,1,0)
draw_set_halign(fa_left)
}
else
{


if LegacyMode=0
{if ControlChange=0
	{
if key_up_pressed if menuSelect=0 menuSelect=9 else menuSelect-=1
if -key_down_pressed if menuSelect=9 menuSelect=0 else menuSelect+=1
	}

if menuSelect=7// or menuSelect=8 or if menuSelect=9
{
if key_up_pressed menuSelect=6 else menuSelect=8
}

if menuSelect=9 or menuSelect=8 or menuSelect=0 ControlChange=0

draw_set_color(c_gray)
if menuSelect=0 if ControlChange=0 draw_set_color(c_white) else draw_set_color(c_yellow)
draw_text_transformed(40,32+16,_t2,0.5,1,0) draw_set_color(c_gray)
if menuSelect=1 if ControlChange=0 draw_set_color(c_white) else draw_set_color(c_yellow)
draw_set_halign(fa_left) draw_text_transformed(6,2*1+32+16+8,_t4,0.75,1,0)
draw_set_halign(fa_right) if Joystick=0 draw_text_transformed(80-6,2*1+32+16+8,global.ControlJump[_controlno],0.75,1,0) draw_set_color(c_gray)
if menuSelect=2 if ControlChange=0 draw_set_color(c_white) else draw_set_color(c_yellow)
draw_set_halign(fa_left) draw_text_transformed(6,2*2+32+16+8*2,_t5,0.75,1,0)
draw_set_halign(fa_right) if Joystick=0 draw_text_transformed(80-6,2*2+32+16+8*2,global.ControlAttack[_controlno],0.75,1,0) draw_set_color(c_gray)
if menuSelect=3 if ControlChange=0 draw_set_color(c_white) else draw_set_color(c_yellow)
draw_set_halign(fa_left) draw_text_transformed(6,2*3+32+16+8*3,_t6,0.75,1,0)
draw_set_halign(fa_right) if Joystick=0 draw_text_transformed(80-6,2*3+32+16+8*3,global.ControlShield[_controlno],0.75,1,0) draw_set_color(c_gray)
if menuSelect=4 if ControlChange=0 draw_set_color(c_white) else draw_set_color(c_yellow)
draw_set_halign(fa_left) draw_text_transformed(6,2*4+32+16+8*4,_t7,0.75,1,0)
draw_set_halign(fa_right) if Joystick=0 draw_text_transformed(80-6,2*4+32+16+8*4,global.ControlSuper[_controlno],0.75,1,0) draw_set_color(c_gray)
if menuSelect=5 if ControlChange=0 draw_set_color(c_white) else draw_set_color(c_yellow)
draw_set_halign(fa_left) draw_text_transformed(6,2*5+32+16+8*5,_t8,0.5,1,0)
draw_set_halign(fa_right) if Joystick=0 draw_text_transformed(80-6,2*5+32+16+8*5,global.ControlPunchback[_controlno],0.75,1,0) draw_set_color(c_gray)
if menuSelect=6 if ControlChange=0 draw_set_color(c_white) else draw_set_color(c_yellow)
draw_set_halign(fa_left) draw_text_transformed(6,2*6+32+16+8*6,_t9,0.75,1,0)
draw_set_halign(fa_right) if Joystick=0  draw_text_transformed(80-6,2*6+32+16+8*6,global.ControlTaunt[_controlno],0.75,1,0) draw_set_color(c_dkgray)
draw_set_halign(fa_left) draw_text_transformed(6,2*7+32+16+8*7,_t10,0.75,1,0)
draw_set_halign(fa_right) if Joystick=0
if !LegacyMode {draw_text_transformed(80-6,2*7+32+16+8*7,global.ControlAttack[_controlno],0.75,1,0)}
else {draw_text_transformed(80-6,2*7+32+16+8*7,global.ControlInteract[_controlno],0.75,1,0)}

draw_set_color(c_dkgray)
draw_set_halign(fa_left) draw_text_transformed(6,2*8+32+16+8*8,_t8,0.5,1,0)
draw_set_halign(fa_right) if Joystick=0 draw_text_transformed(80-6,2*8+32+16+8*8,"◄"+string(global.ControlAttack[_controlno]),0.75,1,0)
else  draw_text_transformed(80-6,2*8+32+16+8*8,"◄ ",0.75,1,0)
draw_set_color(c_dkgray)
draw_set_halign(fa_left) draw_text_transformed(6,2*9+32+16+8*9,_t11,0.5,1,0)
draw_set_halign(fa_right) if Joystick=0 draw_text_transformed(80-6,2*9+32+16+8*9,string(_t12)+string(global.ControlAttack[_controlno]),0.75,1,0)
else draw_text_transformed(80-6,2*9+32+16+8*9,_t13,0.75,1,0)
draw_set_color(c_gray)
if menuSelect=8 draw_set_color(c_white)
draw_set_halign(fa_center) draw_text_transformed(40,32+16+8*13,_t14,1,1,0)
draw_set_color(c_gray)
if menuSelect=9 draw_set_color(c_white)
draw_set_halign(fa_center) draw_text_transformed(40,32+16+8*14,_t15,1,1,0)
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
draw_text_transformed(40,32+16,_t3,0.5,1,0) draw_set_color(c_gray)
if menuSelect=1 if ControlChange=0 draw_set_color(c_white) else draw_set_color(c_yellow)
draw_set_halign(fa_left) draw_text_transformed(6,2*1+32+16+8,_t4,0.75,1,0)
draw_set_halign(fa_right) if Joystick=0 draw_text_transformed(80-6,2*1+32+16+8,global.ControlJump[_controlno],0.75,1,0) draw_set_color(c_gray)
if menuSelect=2 if ControlChange=0 draw_set_color(c_white) else draw_set_color(c_yellow)
draw_set_halign(fa_left) draw_text_transformed(6,2*2+32+16+8*2,_t5,0.75,1,0)
draw_set_halign(fa_right) if Joystick=0 draw_text_transformed(80-6,2*2+32+16+8*2,global.ControlAttack[_controlno],0.75,1,0) draw_set_color(c_gray)
if menuSelect=3 if ControlChange=0 draw_set_color(c_white) else draw_set_color(c_yellow)
draw_set_halign(fa_left) draw_text_transformed(6,2*3+32+16+8*3,_t6,0.75,1,0)
draw_set_halign(fa_right) if Joystick=0 draw_text_transformed(80-6,2*3+32+16+8*3,global.ControlShield[_controlno],0.75,1,0) draw_set_color(c_gray)
if menuSelect=4 if ControlChange=0 draw_set_color(c_white) else draw_set_color(c_yellow)
draw_set_halign(fa_left) draw_text_transformed(6,2*4+32+16+8*4,_t7,0.75,1,0)
draw_set_halign(fa_right) if Joystick=0 draw_text_transformed(80-6,2*4+32+16+8*4,global.ControlSuper[_controlno],0.75,1,0) draw_set_color(c_dkgray)
draw_set_halign(fa_left) draw_text_transformed(6,2*5+32+16+8*5,_t8,0.5,1,0)
draw_set_halign(fa_right) if Joystick=0 draw_text_transformed(80-6,2*5+32+16+8*5,global.ControlPunchback[_controlno],0.75,1,0) 
draw_set_halign(fa_left) draw_text_transformed(6,2*6+32+16+8*6,_t9,0.75,1,0)
draw_set_halign(fa_right) if Joystick=0 draw_text_transformed(80-6,2*6+32+16+8*6,global.ControlTaunt[_controlno],0.75,1,0) draw_set_color(c_dkgray)
draw_set_halign(fa_left) draw_text_transformed(6,2*7+32+16+8*7,_t10,0.75,1,0)
draw_set_halign(fa_right) if Joystick=0
if !LegacyMode {draw_text_transformed(80-6,2*7+32+16+8*7,global.ControlAttack[_controlno],0.75,1,0)}
else {draw_text_transformed(80-6,2*7+32+16+8*7,global.ControlInteract[_controlno],0.75,1,0)}

draw_set_color(c_dkgray)
draw_set_halign(fa_left) draw_text_transformed(6,2*8+32+16+8*8,_t8,0.5,1,0)
draw_set_halign(fa_right) if Joystick=0 draw_text_transformed(80-6,2*8+32+16+8*8,"◄"+string(global.ControlAttack[_controlno]),0.75,1,0) else
 draw_text_transformed(80-6,2*8+32+16+8*8,"◄ ",0.75,1,0)draw_set_color(c_dkgray)
draw_set_halign(fa_left) draw_text_transformed(6,2*9+32+16+8*9,_t11,0.5,1,0)
draw_set_halign(fa_right) if Joystick=0 draw_text_transformed(80-6,2*9+32+16+8*9,string(_t12)+string(global.ControlAttack[_controlno]),0.75,1,0)
else  draw_text_transformed(80-6,2*9+32+16+8*9,_t13,0.75,1,0)
draw_set_color(c_gray)
if menuSelect=5 draw_set_color(c_white)
draw_set_halign(fa_center) draw_text_transformed(40,32+16+8*13,_t14,1,1,0)
if menuSelect=6 draw_set_color(c_white)
draw_set_halign(fa_center) draw_text_transformed(40,32+16+8*14,_t15,1,1,0)
}
}
}
}
}
d3d_transform_set_translation(0,0,0)

draw_command(12)


if global.fpsMode=1
{draw_set_halign(fa_right)

draw_text(320,240-8,string_hash_to_newline("FPS: "+string(fps_real)))
draw_text(320,240-16,string_hash_to_newline("FPSR : "+string(fps)))
draw_set_halign(fa_left)
}

}
}