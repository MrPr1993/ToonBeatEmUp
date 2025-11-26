//background_
if cutscenePlaying=0
{
instance_create_depth(-999,-999,-1,oTextBox)

global.UnlockCutscene[15]=1 feats_check(43);

with oControl
{
CDtextT="THE PLANE'S GOING DOWN!\nWHAT YOU'LL DO?!"
CDtextA="GET THE PARACHUTES!"
CDtextB="JUMP OFF THE PLANE!"
CDtextC="USE THE HARPY!"

cutscenename="MIRROSA" cutsceneline= "You... YOU'VE SHATTERED MY BRILLIANCE! I'LL PIERCE YOU THROUGH!!!"

}


SceneX=0
__view_set( e__VW.XView, 0, SceneX )
SceneY=0
__view_set( e__VW.XView, 0, SceneY )

///@description Decision Results
canSkipCutscene=2
timeline_speed=0


CutsceneStage=rm_stageswamp

actorscreen=instance_create_depth(160,192,-1,oCameoChar) with actorscreen
{sprite_index=spr_angrymirror anim=9999 isDepth=0 depth=-3000 shadow=-1;

actor1=instance_create_depth(1186,170,-1,oCameoChar) with actor1
{sprite_index=spr_viva_cutscene image_index=5 anim=9999}
actor2=instance_create_depth(1150,144,-1,oCameoChar) with actor2
{sprite_index=spr_hina_point image_index=0 anim=9999}
actor3=instance_create_depth(1146,160,-1,oCameoChar) with actor3
{sprite_index=spr_bahati_cutscene image_index=1 anim=9999}
actor4=instance_create_depth(1176,188,-1,oCameoChar) with actor4
{sprite_index=spr_sofia_taunt3 image_index=0 anim=9999}
actor5=instance_create_depth(170,172,-1,oCameoChar) with actor5
{sprite_index=spr_mirrorpieces shadow=-1 image_index=0 anim=9999 image_xscale=-1 image_speed=0.25
	isDepth=0 depth=8000
	}

actor6=instance_create_depth(160,124,-1,oCameoChar) with actor6
{shadow=-1 sprite_index=spr_mirrorlady_front anim=9999 image_index=3 image_xscale=1 isDepth=0 depth=16777211}

actor7=instance_create_depth(11215,180,-1,oCameoChar) with actor7
{sprite_index=spr_harpy_dizzy anim=9999 image_xscale=-1}

actor8=instance_create_depth(11215,170,-1,oCameoChar) with actor8
{sprite_index=spr_harpy_dizzy anim=9999 image_xscale=-1}
sprite_index=spr_angrymirror
x=0
y=0

newscript=function()
{
scenetime+=1;

if scenetime=360
{
PlaySound(snd_hitground) PlaySound(snd_glassbreaks)

with oControl {cutscenename="" cutsceneline= ""}

image_index=1
oControl.quakeFXTime=10
scenetime=460
}

if scenetime=520
{sprite_index=spr_gonnabreakyou y=-48 vspeed=0.05
with oControl
{
with oControl {cutscenename="VIVA" cutsceneline= "Oh please, you're not doing anything like that. Maybe I should break you even more though..."
if global.Language!=0 cutsceneline=languagedialogue[2]
}
}
}

if scenetime=940
{sprite_index=mask_none
	
with actor1 {x=128}
with actor2 {x=64}
with actor3 {x=76}
with actor4 {x=64}

	
with oControl
{
with oControl {cutscenename="MIRROSA" cutsceneline= "WaitwaitwaitWAIT! Mercy, mercy! What do you want from me anyway?!"
	if global.Language!=0 cutsceneline=languagedialogue[3]
}
}
}

if scenetime=1320
{
with actor3 {sprite_index=spr_bahati_talk image_speed=0.1}
with actor5 {image_speed=0 image_index=0}

with oControl
{
cutscenename="BAHATI" cutsceneline= "We're looking for the hideout of some thieves. Tell us where it is."
if global.Language!=0 cutsceneline=languagedialogue[4]
}
}

if scenetime=1660
{
with actor3 {image_index=0 image_speed=0}
with actor5 {image_speed=0.25 image_index=0}

with oControl {cutscenename="MIRROSA" cutsceneline= "Okay okay! There's an emergency exit door just nearby that'll take you there!"
	if global.Language!=0 cutsceneline=languagedialogue[5]
}
}

if scenetime=1960
{
with actor4 {sprite_index=spr_sofia_win image_speed=0 image_index=2}
with actor3 {image_index=0 image_speed=0}	
with actor5 {image_speed=0 image_index=0}

with oControl {cutscenename="SOFIA" cutsceneline= "All we needed to hear! Let's mosey, chicas! Time to raise some hell!"
	if global.Language!=0 cutsceneline=languagedialogue[6]
}
}

if scenetime=2200
{
with actor1 {sprite_index=spr_viva_run image_index=0 anim=9999 image_speed=0.25 hspeed=4}
with actor2 {sprite_index=spr_hina_run image_index=0 anim=9999 image_speed=0.25 hspeed=4}
with actor3 {sprite_index=spr_bahati_run image_index=0 anim=9999 image_speed=0.25 hspeed=4}
with actor4 {sprite_index=spr_sofia_run image_index=0 anim=9999 image_speed=0.25 hspeed=4}
}

if scenetime=2560
{
with actor5 {image_speed=0.1 image_index=0}

with oControl {cutscenename="MIRROSA" cutsceneline= "My lovely palace... My mirror... Such brutes...."
	if global.Language!=0 cutsceneline=languagedialogue[7]
	}
}

if scenetime=3000
{
with oControl {cutscenename="" cutsceneline=""}

flashscreen=instance_create_depth(0,0,-1,oAlphaFadeFX) with flashscreen
{image_alpha=0 fadeSpd=0.05 isfading=1 image_xscale=99 image_yscale=99
sprite_index=spr_whitecol image_blend=c_black depth=-4000
}
}

if scenetime=clamp(scenetime,3000,3015)
{scenetime=3010
if flashscreen.image_alpha>=1.5
{x=0; y=-48; sprite_index=spr_snowlab; image_index=0;
with flashscreen {fadeSpd=-0.25 isfading=1 image_alpha=1}
scenetime=3020
}
}

if scenetime=3020
{
vspeed=0.05
}


if scenetime=3310
{
oControl.stageEndFX=1
}

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
case 1: ////Portuguese
languagedialogue[1]="¡Tú… TÚ HAS DESTROZADO MI BRILLANTEZ! ¡VOY A ATRAVESARLAS!!!"
languagedialogue[2]="Ay por favor, no vas a hacer nada de eso. Aunque quizá debería romperte aún más…"
languagedialogue[3]="¡Esperaesperaespera! ¡Misericordia, misericordia! ¿Qué quieren de mí?!"
languagedialogue[4]="Buscamos el escondite de unos ladrones. Dinos dónde está."
languagedialogue[5]="¡Okay okay! ¡Hay una puerta de emergencia por aquí cerca que las llevará directo!"
languagedialogue[6]="¡Justo lo que queríamos oír! ¡Vámonos, chicas! ¡A repartir caos!"
languagedialogue[7]="Mi bello palacio… Mi espejo… Qué brutas…"

cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;	

case 2: ////Portuguese
languagedialogue[1]="Vocês... VOCÊS DESTRUIRAM MEUS CRISTAIS! EU VOU EMPALAR TODAS VOCÊS!!!"
languagedialogue[2]="Ah, pelo amor, você não vai fazer isso tão cedo. Talvez eu devesse te quebrar ainda mais..."
languagedialogue[3]="calmacalmaCALMA! Piedade, piedade! O que você quer de mim, afinal?!"
languagedialogue[4]="Estamos procurando o esconderijo de alguns ladrões. Me fala onde fica."
languagedialogue[5]="Okay, okay! Há uma porta de saída de emergência bem aqui perto que vai levar vocês até lá!"
languagedialogue[6]="Bem que eu suspeitei desde o princípio! Vamos lá, señoritas! Um espetáculo de brutalidade nos espera!"
languagedialogue[7]="Meu adorável palácio... Meus espelhos... Essas brutas..."

cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;
}

}
CutsceneStage=rm_stagelab
canSkipCutscene=2


arcade_saving(CutsceneStage)




