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

actor8.specialcheck[0]=1 actor8.image_index=0 actor8.x=0 actor8.y=y

scenetime=80
with oControl
{
//-Red Oni is lying(Swamp)-
cutscenename="CIRCE" cutsceneline= "I see... Your destiny lies in a big cornfield."
}

with oControl
switch(global.Language)
{
case 1: ////Portuguese
languagedialogue[1]="Veo… que su destino yace en un gran campo de maíz."
languagedialogue[2]="¿El campo de maíz? ¡Pero es un caminata larguísima!"
languagedialogue[3]= "Es nuestra única pista, Sofía. ¿No quieres recuperar tu tesoro antes de que se pierda para siempre?"
languagedialogue[4]= "Ughhhhh… Bien, vamos…"
languagedialogue[5]="Tengo la sensación real de que estoy olvidando algo…"
languagedialogue[6]="Ah..."
languagedialogue[7]= "Bueno, ya no es mi problema."

cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;

case 2: ////Portuguese
languagedialogue[1]="Entendo... Seu destino está em um grande milharal."
languagedialogue[2]="O milharal? Mas é uma caminhada tão longa!"
languagedialogue[3]="É nossa única pista, Sofia. Você não quer perder seu tesouro para sempre, quer?"
languagedialogue[4]="Ughhhhhh... Tudo bem, vamos lá..."
languagedialogue[5]="Por que estou com a sensação de que estou esquecendo algo..."
languagedialogue[6]="Ah..."
languagedialogue[7]="Bem, isso não é mais problema meu."

cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;
}

newscript=function()
{
scenetime+=1;

if scenetime=320
{sprite_index=mask_none actor8.x=9990
	
with actor4 {sprite_index=spr_sofia_idle image_index=1}
	
with oControl
{
cutscenename="SOFIA" cutsceneline= "The cornfield? But that's such a long walk!"
if global.Language!=0 cutsceneline=languagedialogue[2]
}
}

if scenetime=640
{
with actor3 {sprite_index=spr_bahati_talk image_speed=0.25}

with oControl
{
cutscenename="BAHATI" cutsceneline= "It's our only lead Sofia. You don't want your treasure to be lost forever do you?"
if global.Language!=0 cutsceneline=languagedialogue[3]
}
}

if scenetime=1100
{
with actor3 {image_index=0 image_speed=0}	

with actor1 {sprite_index=spr_viva_idle image_index=1 image_speed=0}	

with oControl
{
//Zombies grab the divas and chuck them out
cutscenename="VIVA" cutsceneline= "Ughhhhhh.... Fine, let's go..."
if global.Language!=0 cutsceneline=languagedialogue[4]
}
}

if scenetime=1280
{
with actor1 {sprite_index=spr_viva_move image_speed=0.25 hspeed=2}
with actor2 {sprite_index=spr_hina_move image_speed=0.25 hspeed=2}
with actor3 {sprite_index=spr_bahati_move image_speed=0.25 hspeed=2}
with actor4 {sprite_index=spr_sofia_move image_speed=0.25 hspeed=2}	

with oControl {cutscenename="" cutsceneline= ""}
}

if scenetime=1520
{with actor5 {sprite_index=spr_seaweed_talk1 image_speed=0 image_index=0}
with oControl {cutscenename="CIRCE" cutsceneline= "Why am I having a real feeling I'm forgetting something..."
	if global.Language!=0 cutsceneline=languagedialogue[5]
	}
}

if scenetime=1720
{with actor5 {sprite_index=spr_seaweed_talk4 image_speed=0 image_index=0}
with oControl {cutscenename="CIRCE" cutsceneline= "Ah..."
	if global.Language!=0 cutsceneline=languagedialogue[6]
	}

with actor6 {sprite_index=spr_octopus_scene3 image_index=2}

}

if scenetime=1880
{
with actor5 {sprite_index=spr_seaweed_move image_xscale=-1 image_speed=0.25 hspeed=-1}
with oControl {cutscenename="CIRCE" cutsceneline="Well it's no longer my problem."
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

/////////////DECISION 2
if cutsceneDecmode=1
{
CutsceneStage=rm_stagemermaid


with actorscreen
{scenetime=0;

actor8.specialcheck[0]=1 actor8.image_index=1 actor8.x=0 actor8.y=y


with oControl
{
//-Both are lying(Carnival)-
cutscenename="CIRCE" cutsceneline= "Hmmm... It seems you must meet with a prince beneath the seas to get closer to your goal..."
}

with oControl
switch(global.Language)
{
case 1: ////Portuguese
languagedialogue[1]= "Hmm… Parece que deben reunirse con un príncipe bajo los mares para acercarse a su meta…"
languagedialogue[2]= "¿Príncipe? Oh cielos… Entonces ¿cómo llegamos allá?"
languagedialogue[3]= "Beban esto y viajar bajo el agua será pan comido."
languagedialogue[4]="Hey, ¡esto está bastante bueno!"
languagedialogue[5]="¡Refrescante!"
languagedialogue[6]="Las enviaré al océano con mi magia, así que allá van~ ¡Tengan un buen viaje!"
languagedialogue[7]="Oh… perdí la oportunidad de ponerles el efecto de cerdita permanente… qué lástima."
cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;	

case 2: ////Portuguese
languagedialogue[1]="Hmmm... Parece que vocês precisam encontrar um príncipe no fundo do mar para se aproximarem do seu objetivo..."
languagedialogue[2]="Príncipe? Nossa... o que vamos fazer para chegar lá?"
languagedialogue[3]="Bebam e verão que viajar debaixo d'água é fácil como roubar doçe de criança."
languagedialogue[4]="Ei, isso é muito bom!"
languagedialogue[5]="Que refrescante!"
languagedialogue[6]="Vou mandar vocês para o oceano com minha magia, então até mais~ Boa viagem!"
languagedialogue[7]="Ah... Perdi a chance de transformar elas em porcos para sempre com essa bebida... que pena."
cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;
}

newscript=function()
{
scenetime+=1;


if scenetime=520
{sprite_index=mask_none actor8.x=9990
	
with actor1 {sprite_index=spr_viva_cutscene image_index=8}
	
with oControl {cutscenename="VIVA" cutsceneline= "Prince? Oh boy.... Well what do we do about getting there?"
	if global.Language!=0 cutsceneline=languagedialogue[2]

}
}

if scenetime=860
{
with actor5 {sprite_index=spr_seaweed_talk2 image_speed=0.25}

with actor1 {sprite_index=spr_viva_drink image_index=0 dust_make(x+19,y+1,z-64,0,0,0)}	
with actor2 {sprite_index=spr_hina_drink image_index=0 dust_make(x+18,y+1,z-69,0,0,0)}	
with actor3 {sprite_index=spr_bahati_drink image_index=0 dust_make(x+26,y+1,z-64,0,0,0)}	
with actor4 {sprite_index=spr_sofia_drink image_index=0 dust_make(x+21,y+1,z-52,0,0,0)}	

with oControl {cutscenename="CIRCE" cutsceneline= "Drink this, and you'll find underwater travel to be a breeze."
	if global.Language!=0 cutsceneline=languagedialogue[3]
}
}

if scenetime=1060
{
with actor5 {sprite_index=spr_seaweed_talk3 image_speed=0 image_index=0}

with oCameoChar if sprite_index=spr_viva_drink or sprite_index=spr_hina_drink or sprite_index=spr_bahati_drink or sprite_index=spr_sofia_drink image_index=1	

with oControl {//Some dubious drinks later...
cutscenename="" cutsceneline= ""
}
}

if scenetime=1080
{
with oCameoChar if sprite_index=spr_viva_drink or sprite_index=spr_hina_drink or sprite_index=spr_bahati_drink or sprite_index=spr_sofia_drink image_index=2	

with oControl {//Some dubious drinks later...
cutscenename="" cutsceneline= ""
}
}

if scenetime=1260
{
with oCameoChar if sprite_index=spr_viva_drink or sprite_index=spr_hina_drink or sprite_index=spr_bahati_drink or sprite_index=spr_sofia_drink image_index=3

with oControl {
cutscenename="VIVA" cutsceneline= "Hey, this is pretty good!"
if global.Language!=0 cutsceneline=languagedialogue[4]
}
}

if scenetime=1400
{////They walk off
with oControl {cutscenename="SOFIA" cutsceneline="Refreshing!"
	if global.Language!=0 cutsceneline=languagedialogue[5]
	}
}

if scenetime=1500
{
with oControl {//KERSMASH!
cutscenename="CIRCE" cutsceneline= "I'm going to send you to the ocean with my magic, so off you go~ Have a safe trip!"
if global.Language!=0 cutsceneline=languagedialogue[6]
}
}

if scenetime=1800
{
with actor5 {image_index=0 sprite_index=spr_seaweed_attack4 newscript=function()
	{

image_index+=0.25 image_index=clamp(image_index,0,6.5)
	}	
	}
	


with oControl {cutscenename="" cutsceneline= ""}
}

if scenetime>=1800 if actor5.image_index>=6
if actor1.x!=9999
{
with actor1 {dust_make(x,y,0,0,0,0) dustmk.sprite_index=spr_smoket x=9999}
with actor2 {dust_make(x,y,0,0,0,0) dustmk.sprite_index=spr_smoket x=9999}
with actor3 {dust_make(x,y,0,0,0,0) dustmk.sprite_index=spr_smoket x=9999}
with actor4 {dust_make(x,y,0,0,0,0) dustmk.sprite_index=spr_smoket x=9999}
}

if scenetime=1900
{with actor5 {newscript=-1; sprite_index=spr_seaweed_talk4 image_index=0}

with oControl {cutscenename="CIRCE" cutsceneline= "Oh... I lost my chance to spike the drinks with the permanent pig effect... shame."
	if global.Language!=0 cutsceneline=languagedialogue[7]
	}
}

///Splash

if scenetime=2200
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
{
scenetime=0;

actor8.specialcheck[0]=1 actor8.image_index=2 actor8.x=0 actor8.y=y

with oControl {//-Blue Oni is lying(Beach)-
cutscenename="CIRCE" cutsceneline= "Ahhh here we are... You must seek an ancient tomb in the desert... There you will find some assistance..."
}


with oControl
switch(global.Language)
{
case 1: ////Portuguese
languagedialogue[1]= "Ahhh, aquí estamos… Deben buscar una tumba antigua en el desierto… Allí encontrarán ayuda…"
languagedialogue[2]="Pero ¿cómo llegamos allá?"
languagedialogue[3]="Está… justo ahí."
languagedialogue[4]="¿Eso siempre estuvo ahí?"
languagedialogue[5]="Sigan ese camino y las llevará de la costa a las dunas."
languagedialogue[6]="Bueno, eso es pan comido. ¡Vamos, chicas!"
languagedialogue[7]="Sí. La rubia está así de flaquita, pobrecita."
cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;
case 2: ////Portuguese
languagedialogue[1]="Ahhh, aqui está... Vocês devem procurar uma tumba antiga no deserto... Lá encontrarão ajuda..."
languagedialogue[2]="Mas como chegaremos lá?"
languagedialogue[3]="É... bem ali."
languagedialogue[4]="Isso sempre esteve aí?"
languagedialogue[5]="Siga essa estrada que ela vai da costa até as dunas!"
languagedialogue[6]="Vai ser mamão com açucar. Vamos lá, meninas!"
languagedialogue[7]="Sim. A loira é tão magrinha, coitada."
cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;
}

newscript=function()
{
scenetime+=1;


if scenetime=520
{sprite_index=mask_none actor8.x=9990

	
with oControl {cutscenename="HINA" cutsceneline= "But how would we get there?"
	if global.Language!=0 cutsceneline=languagedialogue[2]
}
}

if scenetime=660
{
with oControl {cutscenename="CIRCE" cutsceneline= "It's... right over there."
	if global.Language!=0 cutsceneline=languagedialogue[3]

}
scenetime=760
}

if scenetime=clamp(scenetime,800,900)
{with oControl {SceneX+=2 __view_set( e__VW.XView, 0, SceneX )}}

if scenetime=1060
{
with actor1 {sprite_index=spr_viva_wildtake image_index=0}
with actor2 {sprite_index=spr_hina_wildtake image_index=0}	
with actor3 {sprite_index=spr_bahati_wildtake image_index=0}	
with actor4 {sprite_index=spr_sofia_wildtake image_index=0}	

with oControl {SceneX=0 __view_set( e__VW.XView, 0, SceneX )}	

with oControl {cutscenename="VIVA" cutsceneline="Was that ever been there?"
if global.Language!=0 cutsceneline=languagedialogue[4]

	}
}

if scenetime=1260
{
with actor5 {sprite_index=spr_seaweed_talk1 image_speed=0.25}	


with oControl {cutscenename="CIRCE" cutsceneline="Follow that road and it will take you from the shores to the dunes!"
	if global.Language!=0 cutsceneline=languagedialogue[5]
}
}

if scenetime=1500
{
with actor5 {sprite_index=spr_seaweed_talk1 image_index=0 image_speed=0}		

with actor1 {sprite_index=spr_viva_talk image_index=0 image_speed=0.25}	

with oControl {cutscenename="VIVA" cutsceneline="Well that's a piece of cake. Let's go girls!"
	if global.Language!=0 cutsceneline=languagedialogue[6]
	}
}


if scenetime=1700
{
with actor1 {sprite_index=spr_viva_move image_speed=0.25 hspeed=2}
with actor2 {sprite_index=spr_hina_move image_speed=0.25 hspeed=2}
with actor3 {sprite_index=spr_bahati_move image_speed=0.25 hspeed=2}
with actor4 {sprite_index=spr_sofia_move image_speed=0.25 hspeed=2}		

with oControl {//Divas move
cutscenename="" cutsceneline=""}

}

if scenetime=1900
{
with actor5 {sprite_index=spr_seaweed_talk4 image_index=0}

with actor6 {sprite_index=spr_octopus_scene3 image_index=1}
}

if scenetime=2000
{
with actor5 {sprite_index=spr_seaweed_talk1 image_speed=0.1}	

with oControl {//SMASH!
cutscenename="CIRCE" cutsceneline="Yes. The blond one is that skinny, the poor thing."
if global.Language!=0 cutsceneline=languagedialogue[7]
}
}


if scenetime=2320
{
oControl.stageEndFX=1
}
}
}
}

arcade_saving(CutsceneStage)