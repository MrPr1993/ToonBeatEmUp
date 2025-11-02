
//background_
if cutscenePlaying=0
{
instance_create_depth(-999,-999,-1,oTextBox)

global.UnlockCutscene[2]=1 feats_check(43);

with oControl
{
CDtextT="THE SHIP HAS NO DRIVER!\nWHAT NOW?!"
CDtextA="ABANDON SHIP!"
CDtextB="TAKE THE WHEEL!"
CDtextC="WAKE ROSY!"

cutscenename=""
cutsceneline=""
}

SceneX=0
__view_set( e__VW.XView, 0, SceneX )
SceneY=0
__view_set( e__VW.XView, 0, SceneY )

actorscreen=instance_create_depth(160,480,-1,oCameoChar) with actorscreen
{sprite_index=spr_cutscene2a anim=9999 isDepth=0 depth=-3000

actor1=instance_create_depth(86,170,-1,oCameoChar) with actor1
{sprite_index=spr_viva_cutscene image_index=0 anim=9999}
actor2=instance_create_depth(50,144,-1,oCameoChar) with actor2
{sprite_index=spr_hina_point image_index=0 anim=9999}
actor3=instance_create_depth(46,160,-1,oCameoChar) with actor3
{sprite_index=spr_bahati_cutscene image_index=1 anim=9999}
actor4=instance_create_depth(76,188,-1,oCameoChar) with actor4
{sprite_index=spr_sofia_taunt3 image_index=0 anim=9999}
actor5=instance_create_depth(215,170,-1,oCameoChar) with actor5
{sprite_index=spr_franki_hit image_index=21 shadow=spr_carshadow anim=9999 image_xscale=-1}

if global.CutsceneSkip=0 with oControl canSkipCutscene=1

newscript=function()
{scenetime+=1;
	
if scenetime<=2
if global.CutsceneSkip=1 {audio_stop_all() global.CutsceneSkip=0 scenetime=6000}
	
///280 for short sentences
if scenetime=60
{with actor1 {sprite_index=spr_viva_talk2 image_speed=0.1}
with oControl
{cutscenename="VIVA"
cutsceneline="WELL THAT WAS SOMETHING."
if global.Language!=0 cutsceneline=languagedialogue[1]
}
}

if scenetime=340
{
with actor1 {image_index=0 image_speed=0}
with actor2 {sprite_index=spr_hina_talk2 image_speed=0.1}

with oControl
{cutscenename="HINA"
cutsceneline="MY SHE'S HUGE."
if global.Language!=0 cutsceneline=languagedialogue[2]
}
}

if scenetime=680
{scenetime=780
with actor2 {image_index=0 image_speed=0}

with actor1 {sprite_index=spr_viva_idle image_index=1 image_speed=0}

with oControl
{cutscenename="VIVA"
cutsceneline="UGH... BUT THAT TRUCK GOT AWAY. NOW WHAT?"
if global.Language!=0 cutsceneline=languagedialogue[3]
}
}

if scenetime=1000
{
with actor3 {sprite_index=spr_bahati_talk image_speed=0.1}

with oControl
{cutscenename="BAHATI"
cutsceneline="WE COULD ASK FOR THE CAPTAIN OF THE SHIP TO DRIVE US TO A PORT?"
if global.Language!=0 cutsceneline=languagedialogue[4]
}
}

if scenetime=1280
{scenetime=1350
with actor3 {image_index=0 image_speed=0}
with actor1 {sprite_index=spr_viva_cutscene image_index=1}	

with oControl
{cutscenename="VIVA"
cutsceneline="WELL OF COURSE..."
if global.Language!=0 cutsceneline=languagedialogue[5]
}
}

if scenetime=1560
{
with actor1 {image_index=0 image_speed=0}
with actor4 {sprite_index=spr_sofia_talk2 image_speed=0.1}

with oControl
{cutscenename="SOFIA"
cutsceneline="ONE PROBLEM."
if global.Language!=0 cutsceneline=languagedialogue[6]
}
}

if scenetime=1740
{
with actor4 {image_index=0 image_speed=0}
with actor1 {sprite_index=spr_viva_cutscene image_index=0}	

with oControl
{cutscenename="VIVA"
cutsceneline="AND WHAT'S THAT?"
if global.Language!=0 cutsceneline=languagedialogue[7]
}
}

if scenetime=1920
{
PlaySound(snd_explosion2)	
musicplaystart(msc_action)

specialdraw=function()
{draw_sprite_ext(spr_whitecol,0,0,0,99,99,0,c_black,1)
draw_sprite(spr_cutscene2a,0,0,0)
}

with oControl
{cutscenename="SOFIA"
cutsceneline="THRE IS NO ONE AT THE WHEEL!"
if global.Language!=0 cutsceneline=languagedialogue[8]
quakeFXTime=10
}
}

if scenetime=2200
{
with oControl
{cutscenename="VIVA"
cutsceneline="YOU CAN'T BE SERIOUS!"
if global.Language!=0 cutsceneline=languagedialogue[9]
}
}

if scenetime=2480
{y=480 sprite_index=spr_cutscene2a2
specialdraw=function()
{y--; y=clamp(y,192,999)
draw_sprite_ext(spr_whitecol,0,0,0,99,99,0,c_black,1)
draw_sprite(sprite_index,1,160,y)
draw_sprite(spr_cutscene2a2,0,160,192)
}

with oControl
{cutscenename=""
cutsceneline=""
}
}

if scenetime=2790 scenetime=6000

if scenetime=6000
{
y=192 sprite_index=spr_cutscene2a2 image_index=1
specialdraw=function()
{y--; y=clamp(y,192,999) 
draw_sprite_ext(spr_whitecol,0,0,0,99,99,0,c_black,1)
draw_sprite(sprite_index,1,160,y)
draw_sprite(spr_cutscene2a2,0,160,192)
}
	with oControl
	{canSkipCutscene=0 audio_stop_all()
cutscenename="VIVA"
cutsceneline="SO... ANY OF YOU KNOW HOW TO DRIVE THIS?"
if global.Language!=0 cutsceneline=languagedialogue[10]
timeline_position=5800
timeline_speed=1
}

if scenetime=clamp(scenetime,6000,6199) scenetime=6164

}
//////	

}
}

	
timeline_position=10
timeline_speed=0



SceneX=0
__view_set( e__VW.XView, 0, SceneX )
SceneY=0
__view_set( e__VW.XView, 0, SceneY )


cutscenePlaying=1

with oControl
switch(global.Language)
{
case 2: ////Portuguese
CDtextT="O NAVIO NÃO TEM TIMONEIRO!\nE AGORA?!"
CDtextA="ABANDONAR O NAVIO!"
CDtextB="ASSUMIR O LEME!"
CDtextC="ACORDAR A ROSY!"
languagedialogue[1]="É, DEU PRA AQUECER."
languagedialogue[2]="NOSSA! QUE TONHONA."
languagedialogue[3]="UGH... MAS O CAMINHÃO SE FOI. E AGORA?"
languagedialogue[4]="PODEMOS PEDIR AO CAPITÃO DO NAVIO PARA NOS LEVAR PRO PORTO?"
languagedialogue[5]="CLARO..."
languagedialogue[6]="SÓ UM PROBLEMA."
languagedialogue[7]="E QUAL É?"
languagedialogue[8]="NÃO TEM NINGUÉM AO LEME!"
languagedialogue[9]="VOCÊ SÓ PODE ESTAR DE BRINCADEIRA!"
languagedialogue[10]="ENTÃO... ALGUMA DE VOCÊS SABE COMO MEXER NISSO?"
//cutsceneline=languagedialogue[1]
break;
}



}


