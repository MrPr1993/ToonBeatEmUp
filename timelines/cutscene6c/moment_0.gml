//background_
if cutscenePlaying=0
{
instance_create_depth(-999,-999,-1,oTextBox)

global.UnlockCutscene[16]=1 feats_check(43);

with oControl
{
CDtextT="THE PLANE'S GOING DOWN!\nWHAT YOU'LL DO?!"
CDtextA="GET THE PARACHUTES!"
CDtextB="JUMP OFF THE PLANE!"
CDtextC="USE THE HARPY!"

cutscenename="" cutsceneline= ""

}


SceneX=0
__view_set( e__VW.XView, 0, SceneX )
SceneY=0
__view_set( e__VW.XView, 0, SceneY )

///@description Decision Results
canSkipCutscene=2
timeline_speed=0


CutsceneStage=rm_stagelab

actorscreen=instance_create_depth(160,192,-1,oCameoChar) with actorscreen
{sprite_index=spr_cutscene4a0 anim=9999 isDepth=0 depth=-3000 shadow=-1;

actor1=instance_create_depth(160-24,160,-1,oCameoChar) with actor1
{sprite_index=spr_viva_cutscene image_index=0 anim=9999}
actor2=instance_create_depth(160+24,160,-1,oCameoChar) with actor2
{sprite_index=spr_hina_point image_index=0 anim=9999}
actor3=instance_create_depth(160-64,160,-1,oCameoChar) with actor3
{sprite_index=spr_bahati_cutscene image_index=1 anim=9999}
actor4=instance_create_depth(160+64,160,-1,oCameoChar) with actor4
{sprite_index=spr_sofia_taunt3 image_index=0 anim=9999}
actor5=instance_create_depth(3200-64,182,-1,oCameoChar) with actor5
{sprite_index=spr_duck_stand image_index=10 anim=9999 image_xscale=-1
	}
	
with actor1 {sprite_index=spr_viva_jump1 image_index=0 ground=0 spdZ=-8 anim=9999 z=-200
newscript=function(){if !ground spdZ+=0.45 z+=spdZ if z>=0 {if anim!=9998 {hspeed=0 sprite_index=spr_viva_item} z=0 ground=1} if ground{ anim=9998}
if anim=9998	{frame_set(0,19,0.25) if AnimFrame=1 {AnimFrame=8 image_xscale=1 sprite_index=spr_viva_point image_index=0}}}}
	
with actor2 {sprite_index=spr_hina_jump1 image_index=0 ground=0 spdZ=-9 anim=9999 z=-230
newscript=function(){if !ground spdZ+=0.45 z+=spdZ if z>=0 {if anim!=9998 {hspeed=0 sprite_index=spr_hina_item} z=0 ground=1} if ground{ anim=9998}
if anim=9998	{frame_set(0,19,0.25) if AnimFrame=1 {AnimFrame=8 image_xscale=-1 sprite_index=spr_hina_point image_index=0}}}}
	
with actor3 {sprite_index=spr_bahati_jump1 image_index=0 ground=0 spdZ=-8.5 anim=9999 z=-210
newscript=function(){if !ground spdZ+=0.45 z+=spdZ if z>=0 {if anim!=9998 {hspeed=0 sprite_index=spr_bahati_item} z=0 ground=1} if ground{ anim=9998}
if anim=9998	{frame_set(0,19,0.25) if AnimFrame=1 {AnimFrame=8 image_xscale=1 sprite_index=spr_bahati_point image_index=0}}}}
	
with actor4 {sprite_index=spr_sofia_jump1 image_index=0 ground=0 spdZ=-9 anim=9999 z=-240
newscript=function(){if !ground spdZ+=0.45 z+=spdZ if z>=0 {if anim!=9998 {hspeed=0 sprite_index=spr_sofia_item} z=0 ground=1} if ground{ anim=9998}
if anim=9998	{frame_set(0,19,0.25) if AnimFrame=1 {AnimFrame=8 image_xscale=-1 sprite_index=spr_sofia_point image_index=0}}}}

actor6=instance_create_depth(11215,170,-1,oCameoChar) with actor6
{sprite_index=spr_harpy_dizzy anim=9999 image_xscale=-1}

actor7=instance_create_depth(11215,180,-1,oCameoChar) with actor7
{sprite_index=spr_harpy_dizzy anim=9999 image_xscale=-1}

actor8=instance_create_depth(11215,170,-1,oCameoChar) with actor8
{sprite_index=spr_harpy_dizzy anim=9999 image_xscale=-1}
sprite_index=mask_none
x=0
y=0

newscript=function()
{
scenetime+=1;

if scenetime=120
{
with oControl
{
with oControl {cutscenename="VIVA" cutsceneline= "We need to find a way out of here!"
if global.Language!=0 cutsceneline=languagedialogue[1]
}
}
}

if scenetime=340
{
with oControl
{
with oControl {cutscenename="SOFIA" cutsceneline= "How?! We're thousands of feet above the ground!"
	if global.Language!=0 cutsceneline=languagedialogue[2]
}
}
}

if scenetime=520
{sprite_index=spr_tearsondivas image_speed=0.5 musicplaystart(msc_countdown) PlaySound(snd_splash2)

actor1.x=9999
actor2.x=9999
actor3.x=9999
actor4.x=9999
	
with oControl
{quakeFXTime=10
cutscenename="FIONA" cutsceneline= "WAAAAAAAAAAAAAHHHHHHHHHHHH!"
if global.Language!=0 cutsceneline=languagedialogue[3]
}
}

if scenetime=660
{
vspeed=0.1 image_speed=0.05 y=-64
sprite_index=spr_cutscene6c0
with oControl {cutscenename="FIONA" cutsceneline= "You meanies! Why did you hurt me?! You bruised my pretty face!"
	if global.Language!=0 cutsceneline=languagedialogue[4]
}
}

if scenetime=960
{y=0 image_speed=0 image_index=0 vspeed=0
sprite_index=spr_divasfeelbad
	
with oControl {cutscenename="FIONA" cutsceneline= "Now I'll never find my future husband! Waaaaah!"
	if global.Language!=0 cutsceneline=languagedialogue[5]
}
}

if scenetime=1200
{
with oControl {cutscenename="VIVA" cutsceneline= "Okay now I feel terrible..."
	if global.Language!=0 cutsceneline=languagedialogue[6]
	}
}

if scenetime=1460
{sprite_index=spr_divasfeelbad image_index=1
with oControl {cutscenename="BAHATI" cutsceneline= "I've got this."
	if global.Language!=0 cutsceneline=languagedialogue[7]
	}
}

if scenetime=1700
{sprite_index=spr_dragoncalming image_index=0
with oControl {cutscenename="BAHATI" cutsceneline="Sorry for the bruises, we only meant to defend ourselves."
	if global.Language!=0 cutsceneline=languagedialogue[8]
	}
}

if scenetime=1900
{image_index=1
with oControl {cutscenename="BAHATI" cutsceneline= "Here, I know how to fix you up. And you can help us leave the castle."
	if global.Language!=0 cutsceneline=languagedialogue[9]
	}
}

if scenetime=2200
{audio_stop_all() 
flashscreen=instance_create_depth(0,0,-1,oAlphaFadeFX) with flashscreen
{image_alpha=0 fadeSpd=0.05 isfading=1 image_xscale=99 image_yscale=99
sprite_index=spr_whitecol image_blend=c_black depth=-4000
}
scenetime=2400
}

if scenetime=2700
{musicplaystart(msc_gallery)
with flashscreen instance_destroy();
	y=-192
sprite_index=spr_newdragon image_index=0
with oControl {cutscenename="" cutsceneline= ""
}
scenetime=2850
}

if scenetime=clamp(scenetime,2700,2999) y=lerp(y,-32,0.1)

if scenetime=3000
{x=-60 y=0
sprite_index=spr_newdragon2 image_index=0
with oControl {cutscenename="FIONA" cutsceneline= "SNIFF! Oh, this is wonderful! I adore it! Just wait until I find my soulmate! Thank you, chunky yellow ladybug!"
	if global.Language!=0 cutsceneline=languagedialogue[10]
	}
}

if scenetime=clamp(scenetime,3000,3399) {x+=0.1 x=clamp(x,-60,0)}

if scenetime=3400
{sprite_index=spr_dragonpicking image_index=0 x=0 y=0
with oControl {cutscenename="BAHATI" cutsceneline= "This is why being nice helps, Viva. It's called 'karma'."
	if global.Language!=0 cutsceneline=languagedialogue[11]
	}
}

if scenetime=3650
{image_index=0
with oControl {cutscenename="VIVA" cutsceneline= "Right... I guess you have a point-why is she heading toward the window?"
	if global.Language!=0 cutsceneline=languagedialogue[12]
	}
}

if scenetime=3750
{image_index=1 
}


if scenetime=3900
{audio_stop_all() PlaySound(snd_hit)
sprite_index=spr_windowthrow image_index=0

with actor5 {shadow=-1 }
	
with oControl {quakeFXTime=10 cutscenename="FIONA" cutsceneline= "Here you go! Fly, pretty bug ladies!"
	if global.Language!=0 cutsceneline=languagedialogue[13]
}
}

if scenetime=4100
{sprite_index=mask_none PlaySoundNoStackPitch(snd_fall,0.5)

with actor5 {isDepth=0 sprite_index=spr_cutscene6c shadow=-1 image_xscale=1 x=0 y=0 depth=99999}	

with actor6 {sprite_index=spr_divasfall shadow=-1 image_xscale=2 image_yscale=2  x=160 y=192/2
	newscript=function() {if image_xscale>0 {image_xscale-=0.01 image_yscale-=0.01} image_xscale=clamp(image_xscale,0,99) image_yscale=clamp(image_yscale,0,99)}
	}
	
with oControl {cutscenename="VIVA" cutsceneline= "Oh you've gotta be KIDDING ME! WE'RE NOT BUUUUUUUUUUUUUUUGSSSSS!!!!"
	if global.Language!=0 cutsceneline=languagedialogue[14]
	}
}

//if scenetime=4200
//{sprite_index=spr_dragonoopsies with actor5 x=999999999
//with oControl {cutscenename="FIONA" cutsceneline= "They can't fly...? Oops..."
//}
//}

//if scenetime=4450
//{sprite_index=spr_dragonoopsies
//with oControl {cutscenename="FIONA" cutsceneline= "Well... they DID hurt me but... Ooh dear..." 
//}
//}

if scenetime=4400//scenetime=4820
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
languagedialogue[1]="¡Tenemos que encontrar una salida de aquí!"
languagedialogue[2]="¿¡Cómo?! ¡Estamos a miles de pies del suelo!"
languagedialogue[3]="¡¡WAAAAAAAAAAAAAH!!"
languagedialogue[4]="¡Malvadas! ¡¿Por qué me lastimaron?! ¡Me dejaron fea!"
languagedialogue[5]="¡Ahora nunca encontraré a mi futuro esposo! ¡BUAAAAH!"
languagedialogue[6]="Okay… ahora sí me siento mal…"
languagedialogue[7]="Déjenme a mí."
languagedialogue[8]="Perdón por los moretones, solo queríamos defendernos."
languagedialogue[9]="Mira, puedo arreglarte. Y puedes ayudarnos a salir."
languagedialogue[10]="Sniff¡Oh,esto es maravilloso!¡Lo adoro!¡Esperen a que encuentre a mi alma gemela!¡Gracias,gordita mariquita amarilla!"
languagedialogue[11]="¿Ves Viva? Por esto ser amable funciona. Se llama karma."
languagedialogue[12]="Sí, sí… supongo que tienes razón—¿por qué se dirige a la ventana?"
languagedialogue[13]="¡Aquí tienen! ¡Vuelen, lindas mariquitas!"
languagedialogue[14]="¡Oh no puede ser! ¡¡¡NO SOMOS INSEEEEEEECTOOOOOOS!!!"

//cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;
case 2: ////Portuguese
languagedialogue[1]="Temos que encontrar uma maneira de sair daqui!"
languagedialogue[2]="Como?! Estamos a milhares de metros céu acima!"
languagedialogue[3]="WAAAAAAAAAAAAAHHHHHHHHHHHH!"
languagedialogue[4]="Seus malvados! Por que me machucaram?! Vocês feriram meu lindo rosto!"
languagedialogue[5]="Agora eu nunca vou encontrar meu futuro marido! Waaaaah!"
languagedialogue[6]="Agora estou me sentindo péssima..."
languagedialogue[7]="Deixa comigo."
languagedialogue[8]="Desculpe pelos hematomas, só queríamos nos defender."
languagedialogue[9]="Olha, eu sei como ajeitar isso. E você pode nos ajudar a sair do castelo."
languagedialogue[10]="SNIFF! Oh, que maravilha! Eu adorei! Espere até eu encontrar minha alma gêmea! Obrigada, joaninha amarela cheinha!"
languagedialogue[11]="É por isso que vale a pena ser gentil, Viva. Isso se chama ‘karma’."
languagedialogue[12]="Tudo bem... Acho que você tem razão-Por que ela está indo em direção à janela?"
languagedialogue[13]="Pronto! Voem, belas damas joaninhas!"
languagedialogue[14]="Ah, Só pode ser brincadeira! NÓS NÃO SOMOS JOANINHAAAAAAAAAASSSS!!!!"

//cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;
}


}
CutsceneStage=rm_stagelab
canSkipCutscene=2


arcade_saving(CutsceneStage)


