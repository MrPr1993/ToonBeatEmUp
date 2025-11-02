///@description Decision Results
canSkipCutscene=2
actorscreen.scenetime=0
timeline_speed=0

/////////////DECISION 1
if cutsceneDecmode=0
{
CutsceneStage=rm_stage4

with actorscreen
{scenetime=0; shadow=-1;
	
specialdraw=function()
{
draw_sprite_ext(spr_whitecol,0,0,0,99,99,0,c_black,1)
draw_sprite(spr_cutscene2a2,2,160,y)
draw_sprite(spr_cutscene2a2,0,160,y)
}

sprite_index=mask_none
with oControl
{
cutscenename="VIVA" cutsceneline="WE NEED TO JUMP!"
}

with oControl
switch(global.Language)
{
case 2: ////Portuguese
languagedialogue[1]="TEMOS QUE DAR O FORA DAQUI!"
languagedialogue[2]="É PRA JÁ! A ÚLTIMA É MULHER DO PADRE!"
languagedialogue[3]="ABANDONAR O NAVIO!"
languagedialogue[4]="E LÁ VAI ELE..."
languagedialogue[5]="..O JEITO VAI TER QUE SER NADANDO."
languagedialogue[6]="OLHA! TEM TERRA FIRME BEM ALÍ!"
languagedialogue[7]="ÓTIMO! VAMOS PRA LÁ! CALMA... ONDE QUE TÁ..."
languagedialogue[8]="AH. UMA DE NÓS VAI TER QUE FAZER BOCA A BOCA."
languagedialogue[9]="BLBLBBLLBLBLALSBLB."
languagedialogue[10]="OH ESQUECE. ELA TÁ RESPIRANDO. EU ACHO..."

cutsceneline=languagedialogue[1]
break;
}

newscript=function()
{
scenetime+=1;

if scenetime=120
{
with oControl
{
cutscenename="SOFIA" cutsceneline="YOU DON'T HAVE TO TELL ME TWICE!"
if global.Language!=0 cutsceneline=languagedialogue[2]
}
}

if scenetime=340
{
with oControl
{
with oControl {cutscenename="VIVA" cutsceneline="ABANDON SHIP!"
	if global.Language!=0 cutsceneline=languagedialogue[3]
	}
}
}

if scenetime=420
{
with actor1 x=999
with actor2 x=999
with actor3 x=999
with actor4 x=999
with actor5 x=9000

with oControl {cutscenename="" cutsceneline=""}
specialdraw=-1; x=0 y=0
sprite_index=spr_allblackscreen image_xscale=1 image_yscale=1
}

if scenetime=480
{
layer_set_visible("ShipBG",1)	

with oControl
{
cutscenename="" cutsceneline= ""
}
specialdraw=-1;
x=0 hspeed=-16
sprite_index=spr_allblackscreen image_xscale=1
}

if scenetime=520
{PlaySound(snd_jump)

with actor1 {sprite_index=spr_viva_jump1 x=160-64 image_index=1 y=200 z=-200 newscript=function(){z+=8}}
with actor2 {sprite_index=spr_hina_jump1 x=160-40 image_index=1 y=200 z=-240 newscript=function(){z+=8}}
with actor3 {sprite_index=spr_bahati_jump1 x=160+64 image_index=1 y=200 z=-230 newscript=function(){z+=8}}
with actor4 {sprite_index=spr_sofia_jump1 x=160+40 image_index=1 y=200 z=-210 newscript=function(){z+=8}}
}

if scenetime=600 PlaySound(snd_splash2)

if scenetime=640
{
y=0
x=320 hspeed=-16
sprite_index=spr_allblackscreen image_xscale=24
}

if scenetime=720
{sprite_index=spr_lookshipgo layer_set_visible("ShipBG",0)	
x=0 y=0 hspeed=0
image_xscale=1
with oControl {cutscenename="BAHATI" cutsceneline="AND THERE IT GOES..."
	if global.Language!=0 cutsceneline=languagedialogue[4]
	}
}

if scenetime=860
{with oControl {cutscenename="VIVA" cutsceneline="..SO WE GOT TO SWIM."
	if global.Language!=0 cutsceneline=languagedialogue[5]
	}
}

if scenetime=1060
{hspeed=-2
with oControl {cutscenename="SOFIA" cutsceneline="HEY I SEE LAND OVER THERE!"
		if global.Language!=0 cutsceneline=languagedialogue[6]
	}
}

if scenetime=1100 hspeed=0

if scenetime=1220
{
with oControl {cutscenename="VIVA" cutsceneline="GREAT! LET'S GO THERE! WAIT... WHERE'S..."
		if global.Language!=0 cutsceneline=languagedialogue[7]
	}
}

if scenetime=1420
{image_index=1 PlaySound(snd_splash1)

flashFX(x,0,0,spr_hinasplash,0,0.25,30,1,1,c_white,1) 
with fx {isDepth=0 depth=-3005}

with oControl {cutscenename="" cutsceneline=""}
}

if scenetime=1720
{
with oControl {cutscenename="VIVA" cutsceneline="OH. ONE OF US HAS TO DO MOUTH TO MOUTH."
			if global.Language!=0 cutsceneline=languagedialogue[8]
	}
}

if scenetime=1900
{
with oControl {cutscenename="HINA" cutsceneline="BLBLBBLLBLBLALSBLB."
			if global.Language!=0 cutsceneline=languagedialogue[9]
	}
}
if scenetime=2100
{
with oControl {cutscenename="VIVA" cutsceneline="OH NEVER MIND SHE'S BREATHING. I THINK..."
			if global.Language!=0 cutsceneline=languagedialogue[10]
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
CutsceneStage=rm_stage3

with actorscreen
{scenetime=0;
sprite_index=spr_grabdawheel image_index=1
with oControl
{
cutscenename="VIVA" cutsceneline="WE GOTTA TAKE THE WHEEL!"
}
x=0
y=0

with oControl
switch(global.Language)
{
case 2: ////Portuguese
languagedialogue[1]="NÓS VAMOS PEGAR O LEME!"
languagedialogue[2]="TIPO ASSIM?"
languagedialogue[3]="MEU DEUS! NÃO É ISSO O QUE ELA QUERIA DIZER!"
languagedialogue[4]="PARABÉNS ALECRIM DOURADO!"
languagedialogue[5]="VALEU."
languagedialogue[6]="ELA ESTÁ SENDO SARCÁSTICA!"
languagedialogue[7]="AHHHHH CUIDADO! A GENTE VAI BATER!"
languagedialogue[8]="AAAAAAAAAAAAAAAAAAAHHHHHHH!!!!"

cutsceneline=languagedialogue[1]
break;
}



newscript=function()
{
scenetime+=1;

if scenetime=360
{PlaySound(snd_metalbreakl)
specialdraw=function()
{
draw_sprite_ext(spr_whitecol,0,0,0,99,99,0,c_black,1)
draw_sprite(sprite_index,image_index,160,y)
}

sprite_index=spr_grabdawheel image_index=2
with oControl {quakeFXTime=10; cutscenename="HINA" cutsceneline="LIKE THIS?"
	if global.Language!=0 cutsceneline=languagedialogue[2]
	}
}

if scenetime=560
{
with oControl {cutscenename="BAHATI" cutsceneline="OH MY GOSH! THAT'S NOT WHAT SHE MEANT!"
	if global.Language!=0 cutsceneline=languagedialogue[3]
	}
}

if scenetime=1060
{
with oControl {cutscenename="SOFIA" cutsceneline="WELL THIS IS JUST GREAT!"
	if global.Language!=0 cutsceneline=languagedialogue[4]
	}
}

if scenetime=1300
{
with oControl {cutscenename="HINA" cutsceneline="THANK YOU."
	if global.Language!=0 cutsceneline=languagedialogue[5]
	}
}

if scenetime=1500
{
with oControl {cutscenename="VIVA" cutsceneline="SHE WAS BEING SARCASTIC!"
	if global.Language!=0 cutsceneline=languagedialogue[6]
	}
}

if scenetime=1750
{image_index=3
with oControl {cutscenename="VIVA" cutsceneline="AHHHHH LOOK OUT! WE'RE GONNA CRASH!"
	if global.Language!=0 cutsceneline=languagedialogue[7]
	}
}

if scenetime=1800 {PlaySoundNoStackPitch(snd_tremor,0.5) oControl.quakeFXTime=400}

if scenetime>=2000 {image_index+=0.25 if image_index>=6 image_index=4}

if scenetime=2000
{
with oControl {cutscenename="DIVAS" cutsceneline="AAAAAAAAAAAAAAAAAAAHHHHHHH!!!!"
	if global.Language!=0 cutsceneline=languagedialogue[8]
	}
}

if scenetime=2220
{
oControl.stageEndFX=1
}
}
}
}

/////////////DECISION 3
if cutsceneDecmode=2
{shadow=-1;
CutsceneStage=rm_stage5

with actorscreen
{scenetime=0;

specialdraw=-1;

with oControl {cutscenename="" cutsceneline=""}
sprite_index=spr_wakerosy image_index=0
x=0
y=0

with oControl
switch(global.Language)
{
case 2: ////Portuguese
languagedialogue[1]="HUH?! TU?! MAS POR QUE TU..."
languagedialogue[2]="NÃO É HORA PRA BATER NO MEU LINDO ROSTO! TEM NINGUÉM NO LEME!"
languagedialogue[3]="ACK, CARAMBOLAS! SAIAM DA FRENTE!"
languagedialogue[4]="ENTÃO VOCÊ NÃO TAVA JUNTO COM ELES?"
languagedialogue[5]="NEM PENSAR! EU ESTAVA OCUPADA MANDANDO OS CLANDESTINOS QUE ENFESTIARAM O MEU PRECIOSO NAVIO PRO BELELÉU."
languagedialogue[6]="QUE BOM QUE DEMOS UM JEITO NISSO. E ESTOU FELIZ QUE ESTÁ NOS DANDO UMA MÃOZINHAS."
languagedialogue[7]="SEM DÚVIDA, BAHATI! EU SOU SUA MAIOR FÃ!"
languagedialogue[8]="ISSO EXPLICA MUITA COISA. ENTÃO, O NAVIO ESTÁ INDO PARA ONDE?"
languagedialogue[9]="EM DIREÇÃO AO PORTO PRÓXIMO DAQUELE TAL DOJO CASINO. MÁS LÍNGUAS DIZEM QUE UMA GALERA SUSPEITA ANDA POR LÁ RECENTEMENTE."
languagedialogue[10]="ENTÃO É LÁ QUE IREMOS ENCONTRAR PRA ONDE NOSSOS TESOUROS FORAM LEVADOS."
languagedialogue[11]="LEGAL! MAL POSSO ESPERAR PRA VARRER O CHÃO COM ESSAS NINJAS!"

//cutsceneline=languagedialogue[1]
break;
}

newscript=function()
{
scenetime+=1;

if scenetime=120
{image_index=1 scenetime=320
with oControl {quakeFXTime=10 PlaySound(snd_hit) PlaySound(snd_franki2)}

}

if scenetime=420
{image_index=2
with oControl {cutscenename="ROSY" cutsceneline="HUH?! YOU?! WHY YOU..."
	if global.Language!=0 cutsceneline=languagedialogue[1]
	}
}

if scenetime=660
{image_index=3
with oControl {cutscenename="VIVA" cutsceneline="NO TIME TO BEAT MY PRETTY FACE IN! THERE'S NO ONE ON THE WHEEL!"
		if global.Language!=0 cutsceneline=languagedialogue[2]
	}

musicplaystart(msc_action)

}

if scenetime=960
{scenetime=1060
with oControl {cutscenename="ROSY" cutsceneline="ACH, CRAP! OUTTA MY WAY!"
	if global.Language!=0 cutsceneline=languagedialogue[3]
	}
}

if scenetime=1260
{sprite_index=spr_allblackscreen audio_stop_all()
layer_hspeed("BGsky",0)
with oControl {cutscenename="" cutsceneline=""}

with actor5 {sprite_index=spr_franki_talk}
}

if scenetime=1460 hspeed=-16

if scenetime=1660
{
with actor1 {sprite_index=spr_viva_talk2 image_speed=0.1}

with oControl {cutscenename="VIVA" cutsceneline="SO YOU AREN'T WORKING WITH THEM?"
		if global.Language!=0 cutsceneline=languagedialogue[4]
	}
}

if scenetime=1900
{
with actor1 {image_index=0 image_speed=0}
with actor5 {sprite_index=spr_franki_talk image_speed=0.1}

with oControl {cutscenename="ROSY" cutsceneline="HECK NO! I WAS BUSY KICKING OUT STOWAWAYS THAT GOT ALL OVER MY PRECIOUS SHIP."
		if global.Language!=0 cutsceneline=languagedialogue[5]
	}
}

if scenetime=2200
{
with actor5 {image_index=0 image_speed=0}
with actor3 {sprite_index=spr_bahati_talk2 image_speed=0.1}

with oControl {cutscenename="BAHATI" cutsceneline="WELL I'M GLAD WE MANAGED TO SETTLE THIS ISSUE. AND I'M HAPPY YOU'RE GIVING US A HAND."
		if global.Language!=0 cutsceneline=languagedialogue[6]
	}
}

if scenetime=2550
{
with actor3 {image_index=0 image_speed=0}
with actor5 {sprite_index=spr_franki_taunt image_speed=0.1}

with oControl {cutscenename="ROSY" cutsceneline="OF COURSE, BAHATI! I'M YOUR BIGGEST FAN!"
		if global.Language!=0 cutsceneline=languagedialogue[7]
	}
}

if scenetime=2800
{
with actor5 {image_index=0 image_speed=0}
with actor4 {sprite_index=spr_sofia_talk image_speed=0.1}	

with oControl {cutscenename="SOFIA" cutsceneline="THAT EXPLAINS A LOT. SO, WHERE IS THIS SHIP HEADING?"
		if global.Language!=0 cutsceneline=languagedialogue[8]
	}
}

if scenetime=3100
{
with actor4 {image_index=0 image_speed=0}
with actor5 {sprite_index=spr_franki_talk image_speed=0.1}		

with oControl {cutscenename="ROSY" cutsceneline="IT'S HEADING TO THE PORT NEAR THAT DOJO CASINO PLACE. I DID HEAR THERE ARE SHADY PEOPLE SHOWING UP THERE RECENTLY."
		if global.Language!=0 cutsceneline=languagedialogue[9]	
	}
}

if scenetime=3560
{
with actor5 {image_index=0 image_speed=0}
with actor1 {sprite_index=spr_viva_talk image_speed=0.1}		

with oControl {cutscenename="VIVA" cutsceneline="THEN THAT'S WHERE WE GOTTA GO TO FIND WHERE OUR TREASURE'S TAKEN."
		if global.Language!=0 cutsceneline=languagedialogue[10]
	}
}

if scenetime=3860
{
with actor1 {image_index=0 image_speed=0}
with actor4 {sprite_index=spr_sofia_opening image_speed=0.1}	

with oControl {cutscenename="SOFIA" cutsceneline="GOOD! I CAN'T WAIT TO BEAT UP SOME NINJAS!"
		if global.Language!=0 cutsceneline=languagedialogue[11]
	}
}

if scenetime=4280
{
oControl.stageEndFX=1
}
}
}
}

arcade_saving(CutsceneStage)