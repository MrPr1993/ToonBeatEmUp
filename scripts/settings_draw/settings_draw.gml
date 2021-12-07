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
draw_text(160,64+8,"SCREEN SHAKE ")
draw_text(160,72+8,"SCREEN FLASH ")
if stagePause=1 draw_set_color(c_dkgray)
draw_text(160,80+12,"STARTING LIVES ")
draw_text(160,88+12,"CONTINUES ")
draw_set_color(c_white)
draw_text(160,96+24,"FPS ")
draw_text(160,104+8," ")
draw_text(160,112+8," ")

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
draw_text(160,56+4," MODE "+string(TVfx))


if global.Screenshake=1
draw_text(160,64+8," ON") else draw_text(160,64+8," OFF")
if global.Screenflash=1
draw_text(160,72+8," ON") else draw_text(160,72+8," OFF")

if stagePause=1 draw_set_color(c_dkgray)
draw_text(160,80+12," "+string(global.LifeStart))
if global.ContinueStart=-1
draw_text(160,88+12," INFINITE")
else
draw_text(160,88+12," "+string(global.ContinueStart))
draw_set_color(c_white)

if global.fpsMode=0
draw_text(160,96+24," "+string(" OFF"))
else
draw_text(160,96+24," "+string(" ON"))

draw_text(160,104+8," ")
draw_text(160,112+8," ")

//STAR
if menuSelect=0 StarY=0
if menuSelect=1 StarY=8
if menuSelect=2 StarY=16+4
if menuSelect=3 StarY=24+4
if menuSelect=4 StarY=32+8
if menuSelect=5 StarY=40+8
if menuSelect=6 StarY=48+12
if menuSelect=7 StarY=56+12
if menuSelect=8 StarY=56+32

draw_sprite(spr_scorefont,43,160-4,32+StarY)

if global.fpsMode=1
{draw_set_halign(fa_right)

draw_text(320,240-8,string_hash_to_newline("FPS: "+string(fps_real)))
draw_text(320,240-16,string_hash_to_newline("FPSR : "+string(fps)))
draw_set_halign(fa_left)
}

}
}