///@description Decision Results
canSkipCutscene=2
actorscreen.scenetime=0
timeline_speed=0

/////////////DECISION 1
if cutsceneDecmode=0
{
CutsceneStage=rm_stageswamp

with actorscreen
{scenetime=0;


sprite_index=mask_none
with oControl
{
{cutscenename="VIVA" cutsceneline=  "What about the one from the swamp?"}	

}
x=0
y=0

with oControl
switch(global.Language)
{
case 1: ////Portuguese
languagedialogue[1]="¿Qué hay de la del pantano?"
languagedialogue[2]="Recordamos haber compartido un lazo con una mística del pantano… aún podemos sentir su presencia allí. ¡Rápido! ¡Las teletransportaremos ahora!"
languagedialogue[3]="Suena pegajoso. Me gusta cómo suena."
languagedialogue[4]="¡Y allá van!"
languagedialogue[5]="ESPERA, no estamos-"
languagedialogue[6]="...listas."
languagedialogue[7]="Wow, es buena."
languagedialogue[8]="Está muy oscuro aquí…"
languagedialogue[9]="Da igual. Vamos a encontrar a esa mística. Apuesto a que es una bruja."
cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;	

case 2: ////Portuguese
languagedialogue[1]="Então você tem um amigo nos pântanos?"
languagedialogue[2]="Recordo-me de ter compartilhado profundo laço com um ser místico nos pântanos... Sinto ainda sua presença lá. Depressa! Levar-vos-ei até lá agora!"
languagedialogue[3]="Lugares quentes e úmidos. Os meus favoritos."
languagedialogue[4]="E ireis vós todos em partença!"
languagedialogue[5]="ESPERA nós não estamos-"
languagedialogue[6]="...pronta."
languagedialogue[7]="Nossa quanta eficiência."
languagedialogue[8]="Tá um baita breu aqui..."
languagedialogue[9]="Tanto faz. Vamos achar essa tal pessoa mística. Certeza que é uma bruxa."
cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;
}

with actor1 {sprite_index=spr_viva_talk image_speed=0.25}

newscript=function()
{
scenetime+=1;

if scenetime=180
{
with actor1 {image_index=0 image_speed=0}
with actor5 {sprite_index=spr_pharaoh_talk3 image_speed=0.25}

with oControl
{
with oControl {cutscenename="HATHOR" cutsceneline=  "We recall sharing a bond with a mystic in the swamps... We can sense their presence still there. Quickly! We will teleport you there now!"
	if global.Language!=0 cutsceneline=languagedialogue[2]
	}
}
}

if scenetime=600
{
with actor5 {image_index=0 image_speed=0}
with actor4 {sprite_index=spr_sofia_opening image_speed=0.25}

with oControl
{
with oControl {cutscenename="SOFIA" cutsceneline="Sounds sticky. I like the sound of it."
	if global.Language!=0 cutsceneline=languagedialogue[3]
	}
}
}

if scenetime=780
{
with actor4 {image_index=0 image_speed=0}
with actor5 {sprite_index=spr_pharaoh_magic
newscript=function() {image_index+=0.25 if image_index>=5 image_index=3}
}	

with oControl
{
cutscenename="HATHOR" cutsceneline= "And away you all will go!"
if global.Language!=0 cutsceneline=languagedialogue[4]
}
}

if scenetime=860
{
with actor1 {sprite_index=spr_viva_wildtake image_speed=0 image_index=0}
with actor2 {sprite_index=spr_hina_wildtake image_speed=0 image_index=0}
with actor3 {sprite_index=spr_bahati_wildtake image_speed=0 image_index=0}
with actor4 {sprite_index=spr_sofia_wildtake image_speed=0 image_index=0}

with oControl {cutscenename="VIVA" cutsceneline="WAIT we're not-"
	if global.Language!=0 cutsceneline=languagedialogue[5]
	}
}

if scenetime=1060
{PlaySound(snd_magic2)
with actor1 {sprite_index=spr_viva_point image_speed=0 image_index=2}
with actor2 {sprite_index=spr_hina_point image_speed=0 image_index=2}
with actor3 {sprite_index=spr_bahati_point image_speed=0 image_index=2}
with actor4 {sprite_index=spr_sofia_point image_speed=0 image_index=2}	

flashscreen=instance_create_depth(0,0,-1,oAlphaFadeFX) with flashscreen
{image_alpha=1 fadeSpd=-0.025 isfading=1 image_xscale=99 image_yscale=99
sprite_index=spr_whitecol image_blend=c_white depth=-4000
}		

layer_set_visible("SwampBG1",1)	
layer_set_visible("SwampBG2",1)	

with actor5 x=999
	
with oControl {cutscenename="VIVA" cutsceneline="...ready..."
	if global.Language!=0 cutsceneline=languagedialogue[6]
	}
}

if scenetime=1260
{
with oControl {cutscenename="HINA" cutsceneline="Wow she's good."
	if global.Language!=0 cutsceneline=languagedialogue[7]
	}
}

if scenetime=1560
{
with actor1 {sprite_index=spr_viva_point image_speed=0 image_index=0}
with actor2 {sprite_index=spr_hina_cutscene image_speed=0 image_index=1}
with actor3 {sprite_index=spr_bahati_lookaround image_speed=0 image_index=2}
with actor4 {sprite_index=spr_sofia_talk3 image_speed=0 image_index=0}	

with oControl {cutscenename="BAHATI" cutsceneline="It sure is dark in here..."
	if global.Language!=0 cutsceneline=languagedialogue[8]
	}
}

if scenetime=1820
{
with actor1 {sprite_index=spr_viva_move image_speed=0.25 image_index=0 hspeed=2}
with actor2 {sprite_index=spr_hina_move image_speed=0.25 image_index=0 hspeed=2}
with actor3 {sprite_index=spr_bahati_move image_speed=0.25 image_index=0 hspeed=2}
with actor4 {sprite_index=spr_sofia_move image_speed=0.25 image_index=0 hspeed=2}	

with oControl {cutscenename="VIVA" cutsceneline="Whatever. Let's find this mystic person. Bet she's a witch."
	if global.Language!=0 cutsceneline=languagedialogue[9]
	}
}

if scenetime=2320
{
oControl.stageEndFX=1
}
}
}
}

/////////////DECISION 2
if cutsceneDecmode=1
{
CutsceneStage=rm_stagecarnival

with actorscreen
{scenetime=0;

sprite_index=mask_none
with oControl
{
cutscenename="VIVA" cutsceneline=  "Come on, Hina, we don't have time to listen to this fossil, besides, I saw them running off toward a carnival."
}
x=0
y=0

with oControl
switch(global.Language)
{
case 1: ////Portuguese
languagedialogue[1]="Vamos, Hina, no tenemos tiempo para escuchar a este fósil, además las vi correr hacia un carnaval."
languagedialogue[2]= "¿¡FÓSIL!? ¡¡CÓMO TE ATREVES!! OYE, ¿A DÓNDE-?"
languagedialogue[3]="¿Carnaval~? Ohh, ¿tendrán juegos divertidos?"
languagedialogue[4]="Oooh, ¿habrá un juego de fuerza?"
languagedialogue[5]="¡Quiero montar el toro más grande!"
languagedialogue[6]="Concéntrense, chicas. Concéntrense…"
languagedialogue[7]="..."
languagedialogue[8]="¿Carn-e-val?"
languagedialogue[9]="¿Cuánto tiempo estuve fuera?"
cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;	

case 2: ////Portuguese
languagedialogue[1]="Qualé, Hina, nós não temos tempo para ouvir esse fóssil. Sem contar que eu vi eles entrando em um parque de diversões."
languagedialogue[2]="Fóssil?! COMO OUSAIS VÓS TAL AFRONTA?! Ei! Onde estais —"
languagedialogue[3]="Parque~? Ohh, será que lá tem alguma brincadeira gostosa de se jogar?"
languagedialogue[4]="Oooh tem algum teste de força lá?"
languagedialogue[5]="Eu quero quebrar recordes na tourada!"
languagedialogue[6]="Foco, garotas. Foco..."
languagedialogue[7]="..."
languagedialogue[8]="Par-qi?"
languagedialogue[9]="Por quantas eras me fui?"
cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;
}

with actor1 {sprite_index=spr_viva_talk2 image_speed=0.25}

newscript=function()
{
scenetime+=1;


if scenetime=460
{
with actor5 {sprite_index=spr_pharaoh_talk4 image_speed=0.25}

with oControl {cutscenename="HATHOR" cutsceneline=  "Fossil?! HOW DARE YOU!! Hey! Where are you-"
	if global.Language!=0 cutsceneline=languagedialogue[2]
	}

with actor1 {sprite_index=spr_viva_move image_speed=0.25 hspeed=2}
with actor2 {sprite_index=spr_hina_move image_speed=0.25 hspeed=2}
with actor3 {sprite_index=spr_bahati_move image_speed=0.25 hspeed=2}
with actor4 {sprite_index=spr_sofia_move image_speed=0.25 hspeed=2}
}

if scenetime=580 with actor5 {image_xscale=1}

if scenetime=660
{
with actor5 {image_index=0 image_speed=0}	

with oControl {cutscenename="HINA" cutsceneline=  "Carnival~? Ohh, I wonder if they have any fun games there?"
	if global.Language!=0 cutsceneline=languagedialogue[3]
	}
}

if scenetime=860
{
with oControl {cutscenename="BAHATI" cutsceneline="Oooh will there be a strength game?"
	if global.Language!=0 cutsceneline=languagedialogue[4]
	}
}

if scenetime=1060
{
with oControl {cutscenename="SOFIA" cutsceneline="I wanna ride the biggest bull!"
	if global.Language!=0 cutsceneline=languagedialogue[5]
	}
}

if scenetime=1300
{
with oControl {cutscenename="VIVA" cutsceneline="Focus, girls. Focus..."
	if global.Language!=0 cutsceneline=languagedialogue[6]
	}
}

if scenetime=1500
{
with actor5 {sprite_index=spr_pharaoh_talk}

with oControl {cutscenename="HATHOR" cutsceneline="..."
	if global.Language!=0 cutsceneline=languagedialogue[7]
	}
}

if scenetime=1750
{
with actor5 {sprite_index=spr_pharaoh_cutscene2 image_index=1}

with oControl {cutscenename="HATHOR" cutsceneline="Carn-e-val?"
	if global.Language!=0 cutsceneline=languagedialogue[8]
	}
}

if scenetime=2000
{
with oControl {cutscenename="HATHOR" cutsceneline="How long was I even gone?"
	if global.Language!=0 cutsceneline=languagedialogue[9]
	}
}

if scenetime=2320
{
oControl.stageEndFX=1
}
}
}
}

/////////////DECISION 3
if cutsceneDecmode=2
{
CutsceneStage=rm_stagebeach

with actorscreen
{scenetime=0;
with oControl {cutscenename="HATHOR" cutsceneline="We befriended someone quite powerful in the odyssey days. We can teleport you to her domain with ease."}
sprite_index=mask_none
x=0
y=0

with oControl
switch(global.Language)
{
case 1: ////Portuguese
languagedialogue[1]= "Hicimos amistad con alguien bastante poderosa en los días de la odisea. Podemos teletransportarlas a su dominio con facilidad."
languagedialogue[2]="¿En serio? Podría ser útil."
languagedialogue[3]="¡POR SUPUESTO! ¡SOY UNA DIOSA!"
languagedialogue[4]="¿Y qué esperamos entonces? ¡Teletranspórtanos!"
languagedialogue[5]="Muy bien. Les deseamos suerte y esperaremos su regreso…"
languagedialogue[6]="¡AY! ¿NO PODÍA TELETRANSPORTARNOS MÁS CERCA DEL SUELO?!"
cutsceneline=languagedialogue[1]

//if global.Language!=0 cutsceneline=languagedialogue[1]
break;	

case 2: ////Portuguese
languagedialogue[1]="Fizemos amizade com alguém de grande poder nos tempos da Odisseia. Com facilidade, vos levaremos ao seu domínio."
languagedialogue[2]="Sério? Seria uma ajuda e tanto."
languagedialogue[3]="CLARO! SOU UMA DEUSA!"
languagedialogue[4]="Então o que estamos esperando? Manda a gente pra lá!"
languagedialogue[5]="Muito bem. Desejamos-vos sorte e aguardaremos o vosso regresso..."
languagedialogue[6]="AW?! por que não teleportou a gente no chão?!"
cutsceneline=languagedialogue[1]

//if global.Language!=0 cutsceneline=languagedialogue[1]
break;
}

with actor5 {sprite_index=spr_pharaoh_talk image_speed=0.25}

newscript=function()
{
scenetime+=1;


if scenetime=460
{
with actor5 {image_index=0 image_speed=0}	
with actor3 {sprite_index=spr_bahati_talk image_speed=0.25}	

with oControl {cutscenename="BAHATI" cutsceneline= "Is that so? Could be helpful."
	if global.Language!=0 cutsceneline=languagedialogue[2]
	}
}

if scenetime=620
{
with actor3 {image_index=0 image_speed=0}	
with actor5 {sprite_index=spr_pharaoh_talk3 image_speed=0.25}		

with oControl {cutscenename="HATHOR" cutsceneline="OF COURSE! I'M A GODDESS!"
	if global.Language!=0 cutsceneline=languagedialogue[3]
	}
}

if scenetime=860
{
with actor5 {image_index=0 image_speed=0}	
with actor4 {sprite_index=spr_sofia_talk2 image_speed=0.25}

with oControl {cutscenename="SOFIA" cutsceneline= "Well what are we waiting for? Teleport away!"
	if global.Language!=0 cutsceneline=languagedialogue[4]
	}
}

if scenetime=1060
{
with actor4 {image_index=0 image_speed=0}

with oControl {cutscenename="HATHOR" cutsceneline= "Very well. We wish you luck and will await your return..."
	if global.Language!=0 cutsceneline=languagedialogue[5]
	}
}

if scenetime=1160
{
with actor5 {sprite_index=spr_pharaoh_magic
newscript=function() {image_index+=0.25 if image_index>=5 image_index=3}
}
}

if scenetime=1300
{PlaySound(snd_magic2)
layer_set_visible("BeachBG1",1)	
layer_set_visible("BeachBG2",1)

flashscreen=instance_create_depth(0,0,-1,oAlphaFadeFX) with flashscreen
{image_alpha=1 fadeSpd=-0.025 isfading=1 image_xscale=99 image_yscale=99
sprite_index=spr_whitecol image_blend=c_white depth=-4000
}	

with oControl {cutscenename="" cutsceneline=""}

with actor5 x=999
with actor1 {x=92-16 z-=200 vspeed=0 sprite_index=spr_viva_hit image_index=17 ground=0 spdZ=-8 hspeed=0 anim=9999
newscript=function(){if !ground spdZ+=0.45 z+=spdZ if z>=0 {if anim!=9998 
	{PlaySound(snd_hitgroundheavy) 
PlaySound(snd_viva11)
PlaySound(snd_hina10)
PlaySound(snd_bahati8)
PlaySound(snd_sofia9)
	hspeed=0 
	}
	z=0 ground=1} if ground{vspeed=0 anim=9998}
if anim=9998	{frame_set(0,19,0.25) frame_set(1,20,0.25)	frame_set(2,21,0.1)
	frame_set(3,21,0.1)	frame_set(4,21,0.1)	frame_set(5,22,0.25) frame_set(6,23,0.25)
	if AnimFrame=7 {AnimFrame=8 image_xscale=-1 sprite_index=spr_viva_dizzy image_index=0}}}}
	
with actor2 {x=92+16 z-=200 vspeed=0 sprite_index=spr_hina_hit image_index=17 ground=0 spdZ=-9 hspeed=0 anim=9999
newscript=function(){if !ground spdZ+=0.45 z+=spdZ if z>=0 {if anim!=9998 hspeed=0 z=0 ground=1} if ground{vspeed=0 anim=9998}
if anim=9998	{frame_set(0,19,0.25) frame_set(1,20,0.25)	frame_set(2,21,0.1)
	frame_set(3,21,0.1)	frame_set(4,21,0.1)	frame_set(5,22,0.25) frame_set(6,23,0.25)
	if AnimFrame=7 {AnimFrame=8 image_xscale=-1 sprite_index=spr_hina_dizzy image_index=0}}}}
	
with actor3 {x=92-32 z-=200 vspeed=0 sprite_index=spr_bahati_hit image_index=17 ground=0 spdZ=-8.5 hspeed=0 anim=9999
newscript=function(){if !ground spdZ+=0.45 z+=spdZ if z>=0 {if anim!=9998 hspeed=0 z=0 ground=1} if ground{vspeed=0 anim=9998}
if anim=9998	{frame_set(0,19,0.25) frame_set(1,20,0.25)	frame_set(2,21,0.1)
	frame_set(3,21,0.1)	frame_set(4,21,0.1)	frame_set(5,22,0.25) frame_set(6,23,0.25)
	if AnimFrame=7 {AnimFrame=8 image_xscale=-1 sprite_index=spr_bahati_dizzy image_index=0}}}}
	
with actor4 {x=92+32 z-=200 vspeed=0 sprite_index=spr_sofia_hit image_index=17 ground=0 spdZ=-9 hspeed=0 anim=9999
newscript=function(){if !ground spdZ+=0.45 z+=spdZ if z>=0 {if anim!=9998 hspeed=0 z=0 ground=1} if ground{vspeed=0 anim=9998}
if anim=9998	{frame_set(0,19,0.25) frame_set(1,20,0.25)	frame_set(2,21,0.1)
	frame_set(3,21,0.1)	frame_set(4,21,0.1)	frame_set(5,22,0.25) frame_set(6,23,0.25)
	if AnimFrame=7 {AnimFrame=8 image_xscale=-1 sprite_index=spr_sofia_dizzy image_index=0}}}}

with actor1 {x=160-24 y=160}
with actor2 {x=160+24 y=160}
with actor3 {x=160-64 y=160}
with actor4 {x=160+64 y=160}
}

if scenetime=clamp(scenetime,1301,1350)
{scenetime=1310
if actor1.ground {oControl.quakeFXTime=10 scenetime=1500}
}

if scenetime=1650
{
with actor1 {sprite_index=spr_viva_anger image_speed=0.25}

with oControl {cutscenename="VIVA" cutsceneline="OW?! Can't she teleport us lower?!"
	if global.Language!=0 cutsceneline=languagedialogue[6]
	}

}

if scenetime=1920
{
oControl.stageEndFX=1
}
}
}
}


arcade_saving(CutsceneStage)