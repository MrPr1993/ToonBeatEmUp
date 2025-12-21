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
cutscenename="ANNA MARI" cutsceneline= "This one leads to the swamp. There's a good neighbor of mine who treats undead well."
}
x=0
y=0

with oControl
switch(global.Language)
{
case 1: ////Portuguese
languagedialogue[1]="Esta lleva al pantano. Allí vive una buena vecina mía que trata bien a los no-muertos."

languagedialogue[2]="¿Al pantano? Genial… No puedo esperar a caminar entre lodo…"

languagedialogue[3]="Ohhhh, suena baboso…"

languagedialogue[4]="Vamos chicas. Nada de quejarse, mejor terminemos con esto."

languagedialogue[5]="¡Yo digo que venga! He corrido por varios pantanos, ¡síganme!"

languagedialogue[6]="¿Qué quieres decir con eso…?"

languagedialogue[7]="¿Qué? ¿Nunca fueron a peleas de lodo?"

languagedialogue[8]="..."

languagedialogue[9]="Sigamos."

languagedialogue[10]="…ups. Olvidé decirles que ella no es muy sociable. Ni modo."

cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;
case 2: ////Portuguese
languagedialogue[1]="Esta porta conduz ao pântano. Lá habita uma boa vizinha minha muito cordial para com os mortos-vivos.."

languagedialogue[2]="O pântano? Ótimo... Mal posso esperar pra nadar na lama..."

languagedialogue[3]="Ohhhh, baita lameira né..."

languagedialogue[4]="Anda gente. Sem tempo pra reclamar, quanto mais cedo isso acabar melhor!"

languagedialogue[5]="Manda ver! Só Deus entende mais de brejo que eu, sigam-me os bons!"

languagedialogue[6]="Como assim entende de brejo...?"

languagedialogue[7]="Ué? Nunca ouviu falar de luta na lama antes?"

languagedialogue[8]="..."

languagedialogue[9]="Vamos andando."

languagedialogue[10]="...Oops. Esqueci-me de avisá-las que ela não é muito afeita à convivência. Paciência."

cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;
}

newscript=function()
{
scenetime+=1;

if scenetime=clamp(scenetime,0,1000)
{
with oControl {SceneX-=2; SceneX=clamp(SceneX,32,999999) __view_set( e__VW.XView, 0, SceneX )}
}

if scenetime=320
{
with actor1 {sprite_index=spr_viva_talk2 image_speed=0.25}

with oControl
{
cutscenename="VIVA" cutsceneline= "The swamp? Great... Can't wait to trudge through muck..."
if global.Language!=0 cutsceneline=languagedialogue[2]
}
}

if scenetime=740
{
with actor1 {image_index=0 image_speed=0}
with actor2 {sprite_index=spr_hina_talk2 image_speed=0.25}

with oControl
{
cutscenename="HINA" cutsceneline= "Ohhhh, sounds gooey..."
if global.Language!=0 cutsceneline=languagedialogue[3]
}
}

if scenetime=920
{
with actor2 {image_index=0 image_speed=0}
with actor3 {sprite_index=spr_bahati_talk image_speed=0.25}	

with oControl
{
cutscenename="BAHATI" cutsceneline= "Now now, girls. No time to whine, might as well get it over with!"
if global.Language!=0 cutsceneline=languagedialogue[4]
}
}

if scenetime=1260
{
with actor3 {image_index=0 image_speed=0}
with actor4 {sprite_index=spr_sofia_talk2 image_speed=0.25}	

with oControl {cutscenename="SOFIA" cutsceneline= "I say bring it on! I've run through my fair share of swamps, so follow me!"
	if global.Language!=0 cutsceneline=languagedialogue[5]
	}
}

if scenetime=1560
{
with actor4 {image_index=0 image_speed=0}
with actor1 {sprite_index=spr_viva_cutscene image_index=1}	

with oControl {cutscenename="VIVA" cutsceneline="What do you mean by that...?"
	if global.Language!=0 cutsceneline=languagedialogue[6]
	}
}

if scenetime=1760
{
with actor4 {sprite_index=spr_sofia_win2 image_index=3}

with oControl {cutscenename="SOFIA" cutsceneline="What? Never gone to mud fights before?"
	if global.Language!=0 cutsceneline=languagedialogue[7]
	}
}

if scenetime=1960
{
with oControl {cutscenename="VIVA" cutsceneline="..."
	if global.Language!=0 cutsceneline=languagedialogue[8]
	}
}

////
if scenetime=2020
{///Walk away
with oControl {cutscenename="VIVA" cutsceneline="Let's keep going."
	if global.Language!=0 cutsceneline=languagedialogue[9]
	}

with actor1 {sprite_index=spr_viva_move image_speed=0.25 hspeed=2}
with actor2 {sprite_index=spr_hina_move image_speed=0.25 hspeed=2}
with actor3 {sprite_index=spr_bahati_move image_speed=0.25 hspeed=2}
with actor4 {sprite_index=spr_sofia_move image_speed=0.25 hspeed=2}
}

if scenetime>=2020
if actor1.x>actor5.x actor5.image_xscale=1

if scenetime=2220
with oControl {cutscenename="ANNA MARI" cutsceneline="...oops. I forgot to tell them she's not a people person. Oh well."
	if global.Language!=0 cutsceneline=languagedialogue[10]
	}

if scenetime=2520
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
cutscenename="ANNA MARI" cutsceneline= "This leads to a carnival. I'd go myself but... Ducks give me the vapors..."
}
x=0
y=0

with oControl
switch(global.Language)
{
case 1: ////Portuguese
languagedialogue[1]="Esta lleva a un carnaval. Iría yo misma, pero… los patos me dan desmayos…"

languagedialogue[2]="¿Patos? ¿En serio…?"

languagedialogue[3]="¿¡Carnaval?! ¡Ohhh me encantan los carnavales! ¡Vamos, VAMOS!"

languagedialogue[4]="Es como si olvidara por completo que nos acaban de decapitar…"

languagedialogue[5]="Siempre mirando hacia adelante, esa chica. Será mejor seguirle el paso."


languagedialogue[6]="Bueno, al menos esto me distrae de ti. Tampoco dabas tanto miedo."

languagedialogue[7]= "¿¡AH, NO!?!"

languagedialogue[8]="¿Dónde está Viva?"

languagedialogue[9]="Muy bien chicas, vámonos al carnaval."

languagedialogue[10]="…¿Siempre fue tan pálida?"
cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;	

case 2: ////Portuguese
languagedialogue[1]="Esta leva a uma festividade. Eu mesmo iria, se não fosse pelo detalhe que... patos me assombram..."

languagedialogue[2]="Patos? Sério...?"

languagedialogue[3]="Festival?! Ohhh Eu amo uma boa festança! Vamo nessa vamo!"
languagedialogue[4]="É como se a nossa decapitação nunca tivesse acontecido pra ela..."

languagedialogue[5]="Essa garota, sempre aproveitando o agora. Acho que é melhor nos apressar!"


languagedialogue[6]="O Lado bom é que agora você é uma preocupação a menos. Você assusta bem pouco pra um fantasma também."

languagedialogue[7]= "AH É MESMO?"

languagedialogue[8]="Ei onde tá a Viva?"

languagedialogue[9]="Okay madames vamos pro festival."

languagedialogue[10]="...ela sempre foi pálida assim?"
cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;
}

newscript=function()
{
scenetime+=1;

if scenetime=clamp(scenetime,0,1000)
{
with oControl {SceneX-=2; SceneX=clamp(SceneX,32,999999) __view_set( e__VW.XView, 0, SceneX )}
}

if scenetime=520
{
with actor4 {sprite_index=spr_sofia_talk3 image_speed=0.25}

with oControl {cutscenename="SOFIA" cutsceneline= "Ducks? Really...?"
	if global.Language!=0 cutsceneline=languagedialogue[2]
	}
}

if scenetime=660
{
with actor4 {image_index=0 image_speed=0}	

with actor2 {sprite_index=spr_hina_cutscene image_index=5}	

with oControl {cutscenename="HINA" cutsceneline= "Carnival?! Ohhh I love a good carnival! Let's go let's GO!"
	if global.Language!=0 cutsceneline=languagedialogue[3]
	}
}

if scenetime=860
{
with actor2 {sprite_index=spr_hina_run image_speed=0.25 hspeed=4}

with actor1 {sprite_index=spr_viva_talk2 image_speed=0.25}
	
with oControl {cutscenename="VIVA" cutsceneline= "It's like she completely forgot we were just beheaded..."
	if global.Language!=0 cutsceneline=languagedialogue[4]
	}
}

if scenetime=1060
{
with actor1 {image_index=0 image_speed=0}
with actor3 {sprite_index=spr_bahati_talk image_speed=0.25}
		

with oControl {cutscenename="BAHATI" cutsceneline= "Always looking ahead, that girl. Guess we best keep up!"
	if global.Language!=0 cutsceneline=languagedialogue[5]
	}
}

if scenetime=1300
{////They walk off
with oControl {cutscenename="" cutsceneline=""}

with actor2 {sprite_index=spr_hina_move image_speed=0.25 hspeed=2}
with actor3 {sprite_index=spr_bahati_move image_speed=0.25 hspeed=2}
with actor4 {sprite_index=spr_sofia_move image_speed=0.25 hspeed=2}
}

if scenetime=1500
{
with actor1 {sprite_index=spr_viva_opening image_speed=0.25}	

with oControl {cutscenename="VIVA" cutsceneline="Well, at least this can get me out of focusing on you. You weren't that scary anyways."
	if global.Language!=0 cutsceneline=languagedialogue[6]
	}
}

if scenetime=1850
{
with actor1 {sprite_index=spr_viva_opening image_speed=0 image_index=0}	

with actor5 {hspeed=-0.1 specialcheck[6]=spr_ghost_head_taunt}
with oControl {cutscenename="ANNA MARI" cutsceneline="OH REALLY?"
	if global.Language!=0 cutsceneline=languagedialogue[7]
	}
}

if scenetime=2000
{
	
layer_set_visible("TilesCarnival",1)	
layer_set_visible("BTG1",0)	
layer_set_visible("BTG2",0)	
layer_set_visible("BTG3",0)	

with actor1 {x=-96}
with actor2 {x=200 sprite_index=spr_hina_stand image_speed=0 hspeed=0}
with actor3 {x=200 sprite_index=spr_bahati_talk2 image_speed=0.25 hspeed=0}
with actor4 {x=200 sprite_index=spr_sofia_stand image_speed=0 hspeed=0}	
with actor5 y=-999
with oControl {cutscenename="BAHATI" cutsceneline="Hey where's Viva?"
	if global.Language!=0 cutsceneline=languagedialogue[8]
	}
}

if scenetime=2300
{
with oControl {cutscenename="VIVA" cutsceneline="Okay girls let's go to the carnival."
	if global.Language!=0 cutsceneline=languagedialogue[9]
	}
with actor1 {x=oControl.camX-32 sprite_index=spr_viva_movespook image_speed=0.25 hspeed=2}

with actor2 {x=200 sprite_index=spr_hina_cutscene image_index=2 image_speed=0 hspeed=0 image_xscale=-1}
with actor3 {x=200 sprite_index=spr_bahati_cutscene image_index=3 image_speed=0 hspeed=0 image_xscale=-1}
with actor4 {x=200 sprite_index=spr_sofia_cutscene image_index=1 image_speed=0 hspeed=0 image_xscale=-1}	
}

if scenetime>=2300
{
if actor1.x=actor2.x {actor2.image_xscale=1 actor3.image_xscale=1 actor4.image_xscale=1}
}

if scenetime=2600
{
with actor4 {sprite_index=spr_sofia_talk3 image_speed=0.25}

with oControl {cutscenename="SOFIA" cutsceneline="...was she even that pale?"
	if global.Language!=0 cutsceneline=languagedialogue[10]
	}
}


if scenetime=2820
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
with oControl {cutscenename="ANNA MARI" cutsceneline= "This one leads to a beach. A sea witch lives there. Maybe you can get her to help you?"
}
sprite_index=mask_none
x=0
y=0

with oControl
switch(global.Language)
{
case 1: ////Portuguese
languagedialogue[1]="Esta lleva a una playa. Allí vive una bruja marina. Quizá logren que las ayude."

languagedialogue[2]= "Un paseo por la playa suena bien, la verdad. Menos mal que tengo traje de baño debajo."

languagedialogue[3]= "¡No vamos a nadar! Vamos a buscar a una bruja, ¡en marcha!"

languagedialogue[4]="Igual podemos disfrutar la vista en el camino. El mar se ve tan bonito de noche…"

languagedialogue[5]="Manténganse alertas… Si vamos de noche, seguro habrá tipos raros esperando."

languagedialogue[6]="Ah esperen, no traje traje de baño. Oh bueno."

languagedialogue[7]="Ah, como en los viejos tiempos…"
cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;	

case 2: ////Portuguese
languagedialogue[1]="Esta leva a uma praia. Lá reside uma bruxa do mar. Talvez consigas convencê-la a prestar auxílio?"

languagedialogue[2]="Um passeio na praia até que seria legal. Valeu a pena ter vestido biquíni por baixo."

languagedialogue[3]="Nós não vamos lá pra nadar! Foco, temos uma bruxa pra caçar!"

languagedialogue[4]="Pelo menos vamos pra aproveitar a vista no caminho! O oceano fica um espetáculo à noite..."

languagedialogue[5]="Fiquem atentas... Se vai estar de noite, deve ter um monte de esquisitões esperando."

languagedialogue[6]="Ô peraí. O meu biquíni não tá aqui. Tenso hein."

languagedialogue[7]="Ah... como nos áureos dias de outrora..."
cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;
}

newscript=function()
{
scenetime+=1;

if scenetime=clamp(scenetime,0,1000)
{
with oControl {SceneX-=2; SceneX=clamp(SceneX,32,999999) __view_set( e__VW.XView, 0, SceneX )}
}

if scenetime=520
{
with actor4 {sprite_index=spr_sofia_opening image_speed=0.25}		

with oControl {cutscenename="SOFIA" cutsceneline= "A walk on the beach sounds good, actually. Lucky I have my swimsuit underneath."
	if global.Language!=0 cutsceneline=languagedialogue[2]
}
}

if scenetime=860
{
with actor1 {sprite_index=spr_viva_talk3 image_speed=0.25}	
with actor4 {image_index=0 image_speed=0}		

with oControl {cutscenename="VIVA" cutsceneline= "We're not going there to swim! Come on, we got a witch to catch!"
	if global.Language!=0 cutsceneline=languagedialogue[3]
}
}

if scenetime=1160
{
with actor1 {image_index=0 image_speed=0}	
with actor2 {sprite_index=spr_hina_opening image_speed=0.25}		

with oControl {cutscenename="HINA" cutsceneline= "Atleast we can enjoy the view on the way! The ocean's so pretty at night..."
if global.Language!=0 cutsceneline=languagedialogue[4]
	}
}

if scenetime=1460
{
with actor2 {image_index=0 image_speed=0}
with actor3 {sprite_index=spr_bahati_talk image_speed=0.25}	

with oControl {cutscenename="BAHATI" cutsceneline= "Stay sharp... If we're going at dark, there's bound to be some creeps waiting."
	if global.Language!=0 cutsceneline=languagedialogue[5]
	}
}

if scenetime=1800
{
with actor1 {sprite_index=spr_viva_run image_speed=0.25 hspeed=4}
with actor2 {sprite_index=spr_hina_run image_speed=0.25 hspeed=4}
with actor3 {sprite_index=spr_bahati_run image_speed=0.25 hspeed=4}
with actor4 {sprite_index=spr_sofia_run image_speed=0.25 hspeed=4}	
	
with oControl {cutscenename="" cutsceneline=""}
}

if scenetime=1850
{
with oControl {cutscenename="SOFIA" cutsceneline="Oh hold on. I haven't  brought a swimsuit. oh well."
	if global.Language!=0 cutsceneline=languagedialogue[6]
	}

}

if scenetime=2150
{
with actor5 {image_xscale=-1 hspeed=-1}
with oControl {cutscenename="ANNA MARI" cutsceneline="Ah, just like the old days..."
	if global.Language!=0 cutsceneline=languagedialogue[7]
	}
}

if scenetime=2350
{
oControl.stageEndFX=1
}
}
}
}

arcade_saving(CutsceneStage)

