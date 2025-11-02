///@description Decision Results
canSkipCutscene=2
actorscreen.scenetime=0
timeline_speed=0

///Decision 1
if cutsceneDecmode=0
{CutsceneStage=rm_stage4  ///Abandon Ship
with oControl {cutscenename="VIVA" cutsceneline="WE NEED TO GET THE PARACHUTES! BUT THE DOOR'S TOO FAR AWAY..."}

with oControl
switch(global.Language)
{
case 2: ////Portuguese
languagedialogue[1]="PRECISAMOS DAQUELES PARAQUEDAS! MAS A PORTA TÁ NO QUINTO DOS INFERNO..."
languagedialogue[2]="TÁ NA MÃO!"
languagedialogue[3]="MAS COMO QUE TU- BAH. BELEZA. VAMOS SAIR LOGO DAQUI!"
languagedialogue[4]="O AVIÃO CONTINUA CAINDO..."
languagedialogue[5]="ÉEH CERTEZA QUE ELES IRÃO FICAR BEM. ONDE A GENTE VAI ATERRISSAR?"
languagedialogue[6]="UUUH. SINISTRO. VAI SER LÁ MESMO!"

cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;
}

with actorscreen newscript=function()
{scenetime+=1; shadow=-1;

if scenetime=240{ x=0 y=0
with oControl {cutscenename="HINA" cutsceneline="I GOT THEM!"
	if global.Language!=0 cutsceneline=languagedialogue[2]
	}

with oControl
with actor2
{
newscript=function()
	{
	frame_set(0,0,0.1) if AnimFrame=1 sprite_index=spr_hina_igotparachutes
	frame_set(1,0,0.25)	
	frame_set(2,1,0.25)
	frame_set(3,0,0.25)
	frame_set(4,2,0.25)	
	frame_set(5,3,0.25)	
	frame_set(6,3,0.25)
	}

}
}

if scenetime=260
with oControl
{
	with actor1 {hspeed=4 sprite_index=spr_viva_wildtake7 image_index=2}
	with actor3 {hspeed=9 sprite_index=spr_bahati_wildtake7 image_index=2}
	with actor4 {hspeed=9 sprite_index=spr_sofia_wildtake7 image_index=2}
}

if scenetime=262
with oControl {with oCameoChar hspeed=0}

if scenetime=480{ x=0 y=0
with oControl {cutscenename="VIVA" cutsceneline="HOW DID YOU- ERR. ALRIGHT. LET'S HURRY AND GET OFF!"
	if global.Language!=0 cutsceneline=languagedialogue[3]
	}
}

if scenetime=720
{
with oControl {cutscenename="" cutsceneline=""
SceneX=0
__view_set( e__VW.XView, 0, SceneX )
SceneY=0
__view_set( e__VW.XView, 0, SceneY )
}
image_blend=c_black sprite_index=spr_whitecol x=0 y=0
depth=-9999 image_xscale=320 image_yscale=240 scenetime=800
}

if scenetime=920
{image_xscale=1 image_yscale=1 PlaySoundNoStackPitch(snd_carengine,0.5)
with oCameoChar y=9999

flashFX(100,-108,0,spr_planefalling,0,0.1,99999,1,1,c_white,1) fx.isDepth=0 fx.depth=999
fx.hspeed=1 fx.vspeed=1.5 fx.animEnd=0

sprite_index=spr_divasparachute image_speed=0 image_index=0 x=0 y=0 image_blend=c_white
vspeed=0.025


layer_set_visible("Clouds",0)
layer_set_visible("Tiles_1",0)

	
	}

if scenetime=980
{	
with oControl {cutscenename="BAHATI" cutsceneline="THE PLANE'S GOING TO CRASH..."
	if global.Language!=0 cutsceneline=languagedialogue[4]
	}
}

if scenetime=1200
{
with oControl {cutscenename="VIVA" cutsceneline="EHH I'M SURE THEY'LL BE FINE. WHERE ARE WE GOING TO LAND?"
	if global.Language!=0 cutsceneline=languagedialogue[5]
	}
}

if scenetime=1420
{image_index=0 x=0 y=0 hspeed=-0.05 vspeed=0 sprite_index=spr_lookamanor
with oControl {cutscenename="SOFIA" cutsceneline="WOAH. SPOOKY. LET'S LAND THERE!"
	if global.Language!=0 cutsceneline=languagedialogue[6]
	}
}

////END SCENE PART
if scenetime=1600 oControl.stageEndFX=1
}
}
//////
if cutsceneDecmode=1
{CutsceneStage=rm_stage3 ///Jump off the plane


with oControl {
cutscenename=""
cutsceneline=""
layer_set_visible("Tiles_1",0)
layer_set_visible("Clouds",0)

SceneX=0
__view_set( e__VW.XView, 0, SceneX )
SceneY=0
__view_set( e__VW.XView, 0, SceneY )
}

with oControl
switch(global.Language)
{
case 2: ////Portuguese
languagedialogue[1]="O QUE EU TAVA PENSANDO?! NÓS VAMOS MORRER!"
languagedialogue[2]="UÉ, VOCÊ NÃO ACHOU QUE SERIA UM BOM PLANO?"
languagedialogue[3]="SÉRIO ISSO? A GENTE VAI VIRAR PRESUNTO!"
languagedialogue[4]="APENAS SE A GENTE NÃO CAIR EM ALGO QUE AMORTEÇA A QUEDA."
languagedialogue[5]="QUÊ- MAS COMO QUE A GENTE VAI FAZER ISSO?!"
languagedialogue[6]="TENHO MEUS TRUQUES. CONFIA. OLHA SÓ!"
//cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;
}

with actorscreen {shadow=-1 isDepth=0 x=0 y=0 depth=-9999 specialcheck[0]=-320 specialcheck[1]=-320 specialcheck[2]=-320 specialcheck[3]=-320
specialdraw=function()
{image_index+=0.25
draw_sprite(spr_cutscene2bB4,image_index,0,round(specialcheck[3]))
draw_sprite(spr_cutscene2bB3,image_index,0,round(specialcheck[2]))
draw_sprite(spr_cutscene2bB2,image_index,0,round(specialcheck[1]))
draw_sprite(spr_cutscene2bB1,image_index,0,round(specialcheck[0]))

if scenetime<60 {draw_set_color(c_black) draw_rectangle(-999,-999,9999,9999,false) draw_set_color(c_white)}
else
{
if scenetime<1260
{
specialcheck[0]=lerp(specialcheck[0],0+choose(-random(2),random(2)),0.03)
specialcheck[1]=lerp(specialcheck[1],0+choose(-random(2),random(2)),0.04)
specialcheck[2]=lerp(specialcheck[2],0+choose(-random(2),random(2)),0.05)
specialcheck[3]=lerp(specialcheck[3],0+choose(-random(2),random(2)),0.06)
}
else
{
specialcheck[0]+=4
specialcheck[1]+=4
specialcheck[2]+=4
specialcheck[3]+=4
}

}

}
	
newscript=function()
{scenetime+=1;
if scenetime=60{ x=0 y=0
with oControl {cutscenename="VIVA" cutsceneline="WHAT WAS I THINKING?! WE ARE GONNA DIE!"
	if global.Language!=0 cutsceneline=languagedialogue[1]
	}
}
if scenetime=260{ x=0 y=0
with oControl {cutscenename="SOFIA" cutsceneline="WOW, DIDN'T YOU THINK OF A GOOD PLAN?"
	if global.Language!=0 cutsceneline=languagedialogue[2]
	}}

if scenetime=460{ x=0 y=0
with oControl {cutscenename="BAHATI" cutsceneline="YOU SERIOUS? WE ARE GONNA GO SPLAT!"
	if global.Language!=0 cutsceneline=languagedialogue[3]
	}}

if scenetime=680{ x=0 y=0
with oControl {cutscenename="HINA" cutsceneline="NOT UNLESS WE LAND ON SOMETHING TO BREAK OUR FALL."
	if global.Language!=0 cutsceneline=languagedialogue[4]
	}}

if scenetime=1100{ x=0 y=0
with oControl {cutscenename="VIVA" cutsceneline="WHAT- HOW ARE WE GONNA DO THAT?!"
	if global.Language!=0 cutsceneline=languagedialogue[5]
	}}

if scenetime=1260{ x=0 y=0 
with oControl {cutscenename="HINA" cutsceneline="I KNOW A TRICK. TRUST ME. LOOK DOWN!"
	if global.Language!=0 cutsceneline=languagedialogue[6]
	}}

////END SCENE PART
if scenetime=1560 oControl.stageEndFX=1
}
}
}

if cutsceneDecmode=2
{CutsceneStage=rm_stage5 ///Grab the harpy
with oControl {cutscenename="VIVA" cutsceneline="THE HARPY! LET'S GRAB HER AND HANG ON TO THEM!"}

with oControl
switch(global.Language)
{
case 2: ////Portuguese
languagedialogue[1]="A HARPIA! PEGUEM ELA E MONTEM EM CIMA!"
languagedialogue[2]="SHOW DE BOLA!"
languagedialogue[3]="VÂNDALOS! SUGIRO QUE EXPLIQUEM SUAS PRETENSÕES ANTES QUE EU OS CONDENE A UMA FATAL QUEDA!"
languagedialogue[4]="NÓS?! VOCÊ QUE VEIO PRA CIMA!"
languagedialogue[5]="CERTAMENTE! CONTRA MELIANTES SUJOS COMO VÓS. OS QUAIS INVADIRAM O MEU NINHO PARA USURPAR DOS INDEFESOS!"
languagedialogue[6]="AH... VOCÊ MIROU NA GALERA ERRADA, MADAME. NÓS TAMBÉM FOMOS ROUBADOS!"
languagedialogue[7]="ELES LEVARAM O MEU TESOURO."
languagedialogue[8]="NOSSOS TESOUROS!!!"
languagedialogue[9]="OH, QUANTO CONSTRAGIMENTO! SENDO ASSIM, PEÇO PERDÃO. ME PERMITIRIAM REPARAR MEUS ATOS CONTRA VÓS LEVANDO-LHES À LOCALIDADE ONDE OS VÂNDALOS PODEM ESTAR?"
languagedialogue[10]="E QUE LUGAR SERIA?"
languagedialogue[11]="TAL CASINO TEM UMA SEGURANÇA ROBUSTA, MAS É UM LOCAL ONDE SERÃO CAPAZES DE ENCONTRAR INDÍCIOS SOBRE ONDE SUAS PRECIOSIDADES FORAM LEVADAS."
languagedialogue[12]="ENTÃO VAMOS LÁ. VAI SER MAMÃO COM AÇUCAR, NÃO É?"
cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;
}

with actor1 {sprite_index=spr_viva_point image_index=0 image_xscale=1}
with actor2 {sprite_index=spr_hina_point image_index=0 image_xscale=1}
with actor3 {sprite_index=spr_bahati_point image_index=0 image_xscale=1}
with actor4 {sprite_index=spr_sofia_point image_index=0 image_xscale=1}

with actorscreen newscript=function()
{scenetime+=1; shadow=-1;
if scenetime=240{ x=0 y=0
with oControl {cutscenename="BAHATI" cutsceneline="I GOT THIS!"
	if global.Language!=0 cutsceneline=languagedialogue[2]
	}
}



if scenetime=480
{sprite_index=spr_allblackscreen x=0 y=0 image_xscale=999
with oControl {cutscenename="" cutsceneline=""}

}

if scenetime=680{ x=0 y=0 hspeed=-16 image_xscale=1 sprite_index=mask_none
	
with oControl
{
with actor5
{x=160 y=150 z=-300 shadow=-1;
sprite_index=spr_divasonharpy image_speed=0.1 image_xscale=1
}
SceneX=0
__view_set( e__VW.XView, 0, SceneX )
SceneY=0
__view_set( e__VW.XView, 0, SceneY )
}
	
with oControl {
layer_set_visible("Tiles_1",0)
layer_set_visible("Clouds",0)
	
	cutscenename="HARPILDA" cutsceneline="WELL I NEVER! YOU BETTER ANSWER ME WHAT ARE YOU DOING BEFORE I SHAKE YOU ALL OFF OF ME!"
	if global.Language!=0 cutsceneline=languagedialogue[3]
	}
}

if scenetime>=680
{
layer_hspeed("Backgrounds_1",-1)	

with oControl
actor5.z=lerp(actor5.z,70,0.1)
}

if scenetime=1000{ 
with oControl {cutscenename="VIVA" cutsceneline="WE?! YOU ATTACKED US FIRST!"
	if global.Language!=0 cutsceneline=languagedialogue[4]
	}
}
if scenetime=1220{ 
with oControl {cutscenename="HARPILDA" cutsceneline="OF COURSE! YOU NO GOOD THIEVES WENT INTO MY TURF TO STEAL FROM THE WEAK!"
	if global.Language!=0 cutsceneline=languagedialogue[5]
	}
}
if scenetime=1520{
with oControl {cutscenename="BAHATI" cutsceneline="OH... YOU MAY HAVE GOTTEN THE WRONG PEOPLE, MA'AM. WE GOT ROBBED TOO!"
	if global.Language!=0 cutsceneline=languagedialogue[6]
	}
}
if scenetime=1820{ 
with oControl {cutscenename="VIVA" cutsceneline="THEY STOLE MY TREASURE."
	if global.Language!=0 cutsceneline=languagedialogue[7]
	}
}
if scenetime=1920{ 
with oControl {cutscenename="SOFIA" cutsceneline="OUR TREASURE!!!"
	if global.Language!=0 cutsceneline=languagedialogue[8]
	}
}
if scenetime=2120{ 
with oControl {cutscenename="HARPILDA" cutsceneline="OH, WELL THAT’S EMBARRASSING. WELL, I DO APOLOGIZE. MAYBE I CAN MAKE IT UP TO YOU DEARIES BY TAKING YOU TO ONE PLACE THEY MIGHT HAVE SHOWN UP MOSTLY?"
	if global.Language!=0 cutsceneline=languagedialogue[9]
	}
}
if scenetime=2620{ 
with oControl {
	with actor5 sprite_index=spr_divasonharpy2
	cutscenename="HINA" cutsceneline="WHAT PLACE IS IT?"
	if global.Language!=0 cutsceneline=languagedialogue[10]
	}
}
if scenetime=2780{ 
with oControl {cutscenename="HARPILDA" cutsceneline="THAT CASINO HAS TOUGH SECURITY, BUT THAT’S ONE PLACE WHERE YOU CAN FIND CLUES FOR WHERE YOUR PRECIOUS THINGS GOT TAKEN TO."
	if global.Language!=0 cutsceneline=languagedialogue[11]
	}
}
if scenetime=3180{ x=0 y=0 sprite_index=spr_dojocasinoplace hspeed=-0.1
with oControl {cutscenename="VIVA" cutsceneline="THEN LET'S GO. HOW HARD CAN IT BE?"
	if global.Language!=0 cutsceneline=languagedialogue[12]
	}
}

////END SCENE PART
if scenetime=3400 oControl.stageEndFX=1
}
}

arcade_saving(CutsceneStage)

//cutscenename="VIVA"
//cutsceneline="WHAT?!"
