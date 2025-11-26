///@description Decision Results
canSkipCutscene=2
actorscreen.scenetime=0
timeline_speed=0

/////////////DECISION 1
if cutsceneDecmode=0
{
CutsceneStage=rm_stageufo

with actorscreen
{scenetime=0;

actor8.image_index=0 actor8.specialcheck[3]=10; with actor8 x=xstart;

with oControl
{
//-Red Oni is lying(Swamp)-
cutscenename="KIANDRA" cutsceneline= "Well it seems like there's some commotion going on around this cornfield."
}
x=0
y=0

with oControl
switch(global.Language)
{
case 1: ////Portuguese
languagedialogue[1]="Parece que hay algo de alboroto en ese campo de maíz."
languagedialogue[2]="¿Un campo de maíz? ¿En serio debemos ir ahí?"
languagedialogue[3]="¡Bueno, ese no es mi problema! Ahora…"
languagedialogue[4]="¡LÁRGUENSE!"
languagedialogue[5]="¡Qué grosera! ¡Bien! ¡Ni siquiera necesitábamos tu ayuda!"
languagedialogue[6]="Estúpida ermitaña enmascarada… ella y sus cadáveres podridos…"

cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;	

case 2: ////Portuguese
languagedialogue[1]="Hmph, parece que está tendo alguma agitação ao redor desse milharal."
languagedialogue[2]="Um milharal? Tem certeza de que precisamos ir até lá?"
languagedialogue[3]="Não é como se isso fosse problema meu! Agora..."
languagedialogue[4]="SUMAM DAQUI!!!"
languagedialogue[5]="Que mal-educada! Tá bem! A gente nem precisava da sua ajuda mesmo!"
languagedialogue[6]="Aquela otária mascarada antissocial... ela e seus cadáveres podres..."

cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;
}

newscript=function()
{
scenetime+=1;

if scenetime=400
{
with oControl
{
cutscenename="SOFIA" cutsceneline= "A cornfield? You sure we really have to go there?"
if global.Language!=0 cutsceneline=languagedialogue[2]
}
}

if scenetime=640
{
with oControl
{
cutscenename="KIANDRA" cutsceneline= "Well, that's not my problem! Now..."
if global.Language!=0 cutsceneline=languagedialogue[3]
}
}

if scenetime=800
{sprite_index=spr_allblackscreen image_blend=c_black x=0 y=0 image_xscale=2 image_yscale=2

 image_blend=c_white actor8.x=9999;

with oControl
{
cutscenename="" cutsceneline= ""

}
}

if scenetime=920
{sprite_index=mask_none
	
PlaySound(snd_viva11)
PlaySound(snd_hina10)
PlaySound(snd_bahati8)
PlaySound(snd_sofia9)
	
with actor1 {x=0 sprite_index=spr_viva_hit image_index=17 ground=0 spdZ=-8 hspeed=5 anim=9999
newscript=function(){if !ground spdZ+=0.45 z+=spdZ if z>=0 {if anim!=9998 {hspeed=0 PlaySoundNoStack(snd_hitground)} z=0 ground=1} if ground{ anim=9998}
if anim=9998	{frame_set(0,19,0.25) frame_set(1,20,0.25)	frame_set(2,21,0.1)
	frame_set(3,21,0.1)	frame_set(4,21,0.1)	frame_set(5,22,0.25) frame_set(6,23,0.25)
	if AnimFrame=7 {AnimFrame=8 image_xscale=-1 sprite_index=spr_viva_cutscene2 image_speed=0.2 image_index=0}}}}
	
with actor2 {x=0 sprite_index=spr_hina_hit image_index=17 ground=0 spdZ=-9 hspeed=3.5 anim=9999
newscript=function(){if !ground spdZ+=0.45 z+=spdZ if z>=0 {if anim!=9998 {hspeed=0 PlaySoundNoStack(snd_hitground)} z=0 ground=1} if ground{ anim=9998}
if anim=9998	{frame_set(0,19,0.25) frame_set(1,20,0.25)	frame_set(2,21,0.1)
	frame_set(3,21,0.1)	frame_set(4,21,0.1)	frame_set(5,22,0.25) frame_set(6,23,0.25)
	if AnimFrame=7 {AnimFrame=8 image_xscale=-1 sprite_index=spr_hina_point image_index=0}}}}
	
with actor3 {x=0 sprite_index=spr_bahati_hit image_index=17 ground=0 spdZ=-8.5 hspeed=4 anim=9999
newscript=function(){if !ground spdZ+=0.45 z+=spdZ if z>=0 {if anim!=9998 {hspeed=0 PlaySoundNoStack(snd_hitground)} z=0 ground=1} if ground{ anim=9998}
if anim=9998	{frame_set(0,19,0.25) frame_set(1,20,0.25)	frame_set(2,21,0.1)
	frame_set(3,21,0.1)	frame_set(4,21,0.1)	frame_set(5,22,0.25) frame_set(6,23,0.25)
	if AnimFrame=7 {AnimFrame=8 image_xscale=-1 sprite_index=spr_bahati_point image_index=0}}}}
	
with actor4 {x=0 sprite_index=spr_sofia_hit image_index=17 ground=0 spdZ=-9 hspeed=5 anim=9999
newscript=function(){if !ground spdZ+=0.45 z+=spdZ if z>=0 {if anim!=9998 {hspeed=0 PlaySoundNoStack(snd_hitground)} z=0 ground=1} if ground{ anim=9998}
if anim=9998	{frame_set(0,19,0.25) frame_set(1,20,0.25)	frame_set(2,21,0.1)
	frame_set(3,21,0.1)	frame_set(4,21,0.1)	frame_set(5,22,0.25) frame_set(6,23,0.25)
	if AnimFrame=7 {AnimFrame=8 image_xscale=-1 sprite_index=spr_sofia_point image_index=0}}}}
	
with oControl
{
layer_set_visible("CornSky2",1)
layer_set_visible("CornSky1",1)
layer_set_visible("CornSky",1)
//Zombies grab the divas and chuck them out
cutscenename="KIANDRA" cutsceneline= "GET LOST!!!"
if global.Language!=0 cutsceneline=languagedialogue[4]
	
}
}

if scenetime=1060
{
with oControl {cutscenename="VIVA" cutsceneline= "Well that's rude! Fine! We didn't even needed your help anyways!"
	if global.Language!=0 cutsceneline=languagedialogue[5]
	}
}

if scenetime=1300
{
with actor1 {sprite_index=spr_viva_moveangry image_xscale=1 hspeed=1 image_speed=0.25}
with actor2 image_xscale=1
with actor3 image_xscale=1
with actor4 image_xscale=1

with oControl {cutscenename="VIVA" cutsceneline= "Stupid mask-wearing haggy loner... she and her rotting corpses..."
	if global.Language!=0 cutsceneline=languagedialogue[6]
	}
}


if scenetime=1400
{
with actor2  {sprite_index=spr_hina_cutscene image_index=3}
with actor3  {sprite_index=spr_bahati_cutscene image_index=3}
with actor4  {sprite_index=spr_sofia_talk3 image_index=0}

with oControl {cutscenename="" cutsceneline= ""}

}

if scenetime=1500
{
with actor1 {sprite_index=spr_viva_move image_speed=0.25 hspeed=2 image_xscale=1}
with actor2 {sprite_index=spr_hina_move image_speed=0.25 hspeed=2 image_xscale=1}
with actor3 {sprite_index=spr_bahati_move image_speed=0.25 hspeed=2 image_xscale=1}
with actor4 {sprite_index=spr_sofia_move image_speed=0.25 hspeed=2 image_xscale=1}
}

if scenetime=1720
{
oControl.stageEndFX=1
}
}
}
}

/////////////DECISION 2
if cutsceneDecmode=1
{
CutsceneStage=rm_stagemermaid

with actorscreen
{scenetime=0;
	
	actor8.image_index=0 actor8.specialcheck[3]=11; with actor8 x=xstart;

with oControl
{
//-Both are lying(Carnival)-
cutscenename="KIANDRA" cutsceneline= "Supposedly a prince lives in the nearby waters... But you'll need a thing to tread the seafloor..."
}
x=0
y=0

with oControl
switch(global.Language)
{
case 1: ////Portuguese
languagedialogue[1]= "Se supone que un príncipe vive en las aguas cercanas… pero necesitarán algo para caminar por el fondo marino…"
languagedialogue[2]="¿Y qué es?"
languagedialogue[3]="¡¿Oh, qué es esto?!"
languagedialogue[4]="Mmm ¿cuál es tu receta?"
languagedialogue[5]= "Vaya… ¿te resulta apetitoso? Esta es nueva."
languagedialogue[6]="¿Tus papilas gustativas están rotas o qué?!"
languagedialogue[7]= "¿Eres siquiera humana…?"
languagedialogue[8]="¿Eso es seguro para comer…?"
languagedialogue[9]="Chicas, no sean groseras con nuestra anfitriona. ¡Coman la sopa!"
languagedialogue[10]="PERO—"
languagedialogue[11]="¡COMAN!"
languagedialogue[12]="Lo conozco. Nunca quise verlo por… la situación, pero supongo que no tenemos otra opción."
languagedialogue[13]= "Pues les deseo suerte con eso. Al menos conocí a alguien que aprecia mi trabajo."
languagedialogue[14]="Vamos, chicas. Dejen de exagerar. La sopa estuvo buenísima."
languagedialogue[15]="Viva incluso le puso mayonesa y kétchup como condimento. Eso… no…"

cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;	

case 2: ////Portuguese
languagedialogue[1]="Supostamente, um príncipe vive nas águas próximas... Mas você precisará de algo para pisar no fundo do mar..."
languagedialogue[2]="E isso seria?"
languagedialogue[3]="Uau o que é isso?!"
languagedialogue[4]="Mmm qual é a sua receita?"
languagedialogue[5]="Ora, achou o meu preparo apetitoso? Você é a primeira."
languagedialogue[6]="Seu paladar foi corrompido ou algo assim?!"
languagedialogue[7]="Você é mesmo humana...?"
languagedialogue[8]="É seguro comer isso...?"
languagedialogue[9]="Meninas, não sejam rudes com nossa anfitriã! Comam a sopa!"
languagedialogue[10]="MAS-"
languagedialogue[11]="COMAM!"
languagedialogue[12]="Eu conheço ele. Não queria encontra ele nem a pau por causa da situação, mas acho que não temos escolha."
languagedialogue[13]="Desejo-lhe sorte com isso. Ao menos eu conheci alguém que aprecia o meu trabalho."
languagedialogue[14]="Vamos lá, meninas. Parem de espetáculo. A sopa estava ótima."
languagedialogue[15]="A Viva até colocou maionese e ketchup na sopa pra dar uma temperada. Benza... Deus..."

cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;
}

newscript=function()
{
scenetime+=1;


if scenetime=520
{
with oControl {cutscenename="VIVA" cutsceneline= "And what is it?"
	if global.Language!=0 cutsceneline=languagedialogue[2]
	}
}

if scenetime=660
{sprite_index=spr_cutscene4b image_blend=c_black x=0 y=0 image_xscale=2 image_yscale=2 actor8.x=9999;
with oControl {cutscenename="" cutsceneline= ""}
}

if scenetime=800
{sprite_index=spr_grosspot image_blend=c_white x=0 y=0 image_xscale=1 image_yscale=1 PlaySound(snd_squeaky)
with oControl {cutscenename="" cutsceneline= ""}
}

if scenetime=960
{sprite_index=spr_cutscene4b3 
	
with BGactor {sprite_index=spr_allblackscreen x=0 y=0}
	
with oControl {
}
}

if scenetime=1060
{
vivaface=instance_create_depth(0,192,-1,oCameoChar) with vivaface
{isDepth=0 depth=-10000 sprite_index=spr_vivaoohyum musicplaystart(msc_training)
newscript=function()
{y=lerp(y,-48,0.1)
}
}

with oControl {
cutscenename="VIVA" cutsceneline= "Oh what's this?!"
if global.Language!=0 cutsceneline=languagedialogue[3]
}
}

if scenetime=1300
{sprite_index=spr_vivalikesit image_index=0 with vivaface x=999
with oControl {cutscenename="VIVA" cutsceneline="Mmm what is your recipe?"
	if global.Language!=0 cutsceneline=languagedialogue[4]	
	}
}

if scenetime=1500
{with BGactor sprite_index=mask_none
with oControl {//KERSMASH!
cutscenename="KIANDRA" cutsceneline=  "Well now, you find this appetizing? That's a first."
if global.Language!=0 cutsceneline=languagedialogue[5]
}
}

if scenetime=1800
{sprite_index=spr_vivalikesit 
with oControl {cutscenename="SOFIA" cutsceneline= "Are your tastebuds warped or something?!"
	if global.Language!=0 cutsceneline=languagedialogue[6]
	}
scenetime=2100
}

if scenetime=2300
{scenetime=2500
with oControl {cutscenename="HINA" cutsceneline= "Are you even human..."
	if global.Language!=0 cutsceneline=languagedialogue[7]
	}
}

if scenetime=2600
{scenetime=2750
with oControl {cutscenename="BAHATI" cutsceneline="Is it even safe to eat...?"
	if global.Language!=0 cutsceneline=languagedialogue[8]
	}
}

if scenetime=2900
{image_index=1
with oControl {cutscenename="VIVA" cutsceneline="Girls, don't be rude to our host! Eat the soup!"
	if global.Language!=0 cutsceneline=languagedialogue[9]
	}
}

if scenetime=3260
{
with oControl {cutscenename="BAHATI" cutsceneline="BUT-"
	if global.Language!=0 cutsceneline=languagedialogue[10]
	}
}

if scenetime=3400
{sprite_index=spr_vivalikesit image_index=2 audio_stop_all() PlaySound(snd_hitgroundheavy)
with oControl {quakeFXTime=10 cutscenename="VIVA" cutsceneline="Eat!"
	if global.Language!=0 cutsceneline=languagedialogue[11]
	}
}

if scenetime=3500
{sprite_index=spr_cutscene4b image_blend=c_black x=0 y=0 image_xscale=2 image_yscale=2
with oControl {cutscenename="" cutsceneline= ""}
}

if scenetime=3700 
{sprite_index=mask_none image_blend=c_white x=0 y=0 image_xscale=1 image_yscale=1
	
with actor1 {x=100 y=160 sprite_index=spr_viva_cutscene}

with actor2 {x=160-96 y=180 sprite_index=spr_hina_cutscene image_index=4}
with actor3 {x=160 y=180 sprite_index=spr_sofia_cutscene image_index=0}
with actor4 {x=160+96 y=180 sprite_index=spr_bahati_cutscene image_index=4}

with actor5 {image_speed=0 x=220 y=160 sprite_index=spr_witch_intro image_xscale=-1 image_index=7}
	
with oControl {cutscenename="" cutsceneline= ""}
}

if scenetime=4000
{
with actor1 {sprite_index=spr_viva_talk image_speed=0.25 }

with oControl {cutscenename="VIVA" cutsceneline="I know him. I never wanted to meet him because of the situation, but I guess we have no other choice."
	if global.Language!=0 cutsceneline=languagedialogue[12]
	}
}

if scenetime=4400
{
with actor1 {sprite_index=spr_viva_talk image_speed=0 image_index=0}

with actor5 {image_index=8}

with oControl {cutscenename="KIANDRA" cutsceneline="Well I wish you luck with that. At least I got to meet someone who appreciates my work."
	if global.Language!=0 cutsceneline=languagedialogue[13]
	}
}

if scenetime=4750
{
with actor1 {sprite_index=spr_viva_talk2 image_speed=0.25 }

with oControl {cutscenename="VIVA" cutsceneline="Come on, girls. Stop overreacting. That soup was great."
	if global.Language!=0 cutsceneline=languagedialogue[14]
	}
}

if scenetime=5000
{
with actor1 {image_speed=0 image_index=0}

with oControl {cutscenename="BAHATI" cutsceneline="Viva even put mayo and ketchup on the soup as a condiment. That's... not..."
	if global.Language!=0 cutsceneline=languagedialogue[15]
	}
}

///Splash

if scenetime=5320
{
oControl.stageEndFX=1
}
}
}
}

/////////////DECISION 3
if cutsceneDecmode=2
{
CutsceneStage=rm_stagedesert

with actorscreen
{scenetime=0;
with oControl {//-Blue Oni is lying(Beach)-
cutscenename="KIANDRA" cutsceneline= "Looks like your path leads into the desert..."
}

x=0
y=0

with oControl
switch(global.Language)
{
case 1: ////Portuguese
languagedialogue[1]="Parece que su camino las lleva al desierto…"
languagedialogue[2]="Bien pero… ¿a qué parte exactamente?"
languagedialogue[3]="No sé, ¡descúbranlo ustedes! De hecho… para que se vayan más rápido… haré que el viaje sea corto."
languagedialogue[4]="Vaya viaje rápido… ¡MIS PIES!"
languagedialogue[5]="Hace… calor… demasiado incluso para mí…"
languagedialogue[6]="Acostúmbrate, chica. Es el desierto."
languagedialogue[7]="¡OH miren allá! ¡Debe ser eso!"
cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;	

case 2: ////Portuguese
languagedialogue[1]="Parece que o seu caminho cai em um deserto..."
languagedialogue[2]="Beleza, mas... Onde exatamente?"
languagedialogue[3]="Não sei, descubra por si mesma! Pensando melhor... Vou acelerar essa viagem... Para vocês darem o fora daqui mais rápido."
languagedialogue[4]="É, foi uma viagem rápida. TÔ ACABADA!"
languagedialogue[5]="Está... quente... quente demais até para mim..."
languagedialogue[6]="Acostumem-se, chicas. É o deserto."
languagedialogue[7]="Ei, olha lá! Deve ser aquilo!"

cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;
}

actor8.image_index=0 actor8.specialcheck[3]=12; with actor8 x=xstart;

newscript=function()
{
scenetime+=1;



if scenetime=480
{
with oControl {cutscenename="BAHATI" cutsceneline= "Alright but... Where exactly?"
if global.Language!=0 cutsceneline=languagedialogue[2]
}
}

if scenetime=660
{
with oControl {cutscenename="KIANDRA" cutsceneline= "I don't know, find out for yourself! In fact... Just to get you out of here faster... I'll make this a quick trip."
	if global.Language!=0 cutsceneline=languagedialogue[3]
}
}


if scenetime=1060
{
flashscreen=instance_create_depth(0,0,-1,oAlphaFadeFX) with flashscreen
{image_alpha=0 fadeSpd=0.05 isfading=1 image_xscale=99 image_yscale=99
sprite_index=spr_whitecol image_blend=c_white depth=-4000
}	
with oControl {cutscenename="" cutsceneline=""}
}

if scenetime=1120 {flashscreen.fadeSpd=0 x=0 y=0 actor8.x=9999;
sprite_index=spr_hotdesert image_index=0 vspeed=-0.2
BGactor.sprite_index=spr_cutscene4b BGactor.x=0 BGactor.y=0

}
if scenetime>=1120 flashscreen.image_alpha-=0.1

if scenetime=1300
{x=48 y=32 hspeed=-0.1 vspeed=-0.02
sprite_index=spr_hotdesert image_index=1
with oControl {cutscenename="VIVA" cutsceneline= "Well that's a quick trip. MY FOOT!"
	if global.Language!=0 cutsceneline=languagedialogue[4]
}
}

if scenetime=1500
{
with oControl {cutscenename="HINA" cutsceneline="It's... hot... too hot even for me..."
	if global.Language!=0 cutsceneline=languagedialogue[5]
	}
}

if scenetime=1700
{
with oControl {//SMASH!
cutscenename="SOFIA" cutsceneline="Get used to it, chica. It's the desert."
if global.Language!=0 cutsceneline=languagedialogue[6]
}

}

if scenetime=1900
{sprite_index=spr_hotdesert image_index=2 hspeed=0 x=0 y=0 vspeed=-0.1
with oControl {//SMASH!
cutscenename="BAHATI" cutsceneline="OH hey look over there! That must be it!"
if global.Language!=0 cutsceneline=languagedialogue[7]
}
}


if scenetime=2120
{
oControl.stageEndFX=1
}
}
}
}

arcade_saving(CutsceneStage)