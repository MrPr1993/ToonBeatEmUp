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
draw_text(160,8,"SETTINGS")

///LEFT SIDE
draw_set_halign(fa_right)
draw_text(160,32,"MUSIC VOLUME ")
draw_text(160,40,"SFX VOLUME ")
draw_text(160,48+4,"ASPECT RATIO ")
draw_text(160,56+4,"CRT STYLE ")
if TVfx!=7 draw_set_color(c_dkgray)
draw_text(160,56+4+8,"CRT DISTORT ") 
draw_text(160,56+4+16,"CRT DISTORT LEVEL ")
draw_text(160,56+4+24,"CRT BORDER LEVEL ")
draw_set_color(c_white)
draw_text(160,56+4+32,"COLOR SETTINGS ")
draw_text(160,56+4+32+8,"SCREEN LAYER ")
draw_text(160,64+8+48,"SCREEN SHAKE ")
draw_text(160,72+8+484,"SCREEN FLASH ")
if stagePause=1 draw_set_color(c_dkgray)
draw_text(160,80+12+48,"STARTING LIVES ")
draw_text(160,88+12+48,"CONTINUES ")
draw_set_color(c_white)
draw_text(160,96+24+48,"FPS ")
draw_text(160,104+8+48," ")
draw_text(160,112+8+48," ")

///RIGHT SIDE
draw_set_halign(fa_left)
draw_text(160,32," "+string(global.BGMvolume)+string("%"))
draw_text(160,40," "+string(global.SFXvolume)+string("%"))

draw_text(160,48+4," "+string(window_get_width())+"X"+string(window_get_height()))


if instance_exists(oPause) TVfx=oPause.TVfx
if instance_exists(oControl) TVfx=oControl.TVfx

if TVfx=0
draw_text(160,56+4," NONE")
else
{if TVfx=7
draw_text(160,56+4," CUSTOM")
else
draw_text(160,56+4," MODE "+string(TVfx))
}
if TVfx!=7 draw_set_color(c_dkgray)
if global.CRTcustomDistort=1
draw_text(160,56+4+8," ON") else draw_text(160,56+4+8," OFF")
draw_text(160,56+4+16," "+string( round(((global.CRTcustomDistortAM+4.01)*25)/2))+"%")
if global.CRTcustomBorder=1
draw_text(160,56+4+24," ON") else draw_text(160,56+4+24," OFF")
draw_set_color(c_white)

if global.ColorMode=0
draw_text(160,56+4+32," DEFAULT"+string(global.ColorMode))
if global.ColorMode=1
draw_text(160,56+4+32," MONOCHROME"+string(global.ColorMode))
if global.ColorMode=2
draw_text(160,56+4+32," SEPIA"+string(global.ColorMode))
if global.ColorMode=3
draw_text(160,56+4+32," OLD HANDHELD"+string(global.ColorMode))

if global.ArcadeScreen=0
draw_text(160,56+4+32+8," NONE "+string(global.ArcadeScreen))
if global.ArcadeScreen=1
draw_text(160,56+4+32+8," ARCADE "+string(global.ArcadeScreen))
if global.ArcadeScreen=2
draw_text(160,56+4+32+8," ROOM "+string(global.ArcadeScreen))

if global.Screenshake=1
draw_text(160,64+8+48," ON") else draw_text(160,64+8+48," OFF")
if global.Screenflash=1
draw_text(160,72+8+48," ON") else draw_text(160,72+8+48," OFF")

if stagePause=1 draw_set_color(c_dkgray)
draw_text(160,80+12+48," "+string(global.LifeStart))
if global.ContinueStart=-1
draw_text(160,88+12+48," INFINITE")
else
draw_text(160,88+12+48," "+string(global.ContinueStart))
draw_set_color(c_white)

if global.fpsMode=0
draw_text(160,96+24+48," "+string(" OFF"))
else
draw_text(160,96+24+48," "+string(" ON"))

draw_text(160,104+8+48," ")
draw_text(160,112+8+48," ")

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

draw_sprite(spr_scorefont,43,160-4,32+StarY)

draw_command(1)

if global.fpsMode=1
{draw_set_halign(fa_right)

draw_text(320,240-8,string_hash_to_newline("FPS: "+string(fps_real)))
draw_text(320,240-16,string_hash_to_newline("FPSR : "+string(fps)))
draw_set_halign(fa_left)
}

}
}