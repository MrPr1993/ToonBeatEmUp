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

with oControl
{
//-Red Oni is lying(Swamp)-
cutscenename="VIVA" cutsceneline=  "Obviously the red one is lying! I mean horn waxing? Really?"
}
x=0
y=0

with oControl
switch(global.Language)
{
case 2: ////Portuguese
languagedialogue[1]="Óbvio que a vermelha é a mentirosa! Encerar chifres? Sério?"
languagedialogue[2]="Cada um vive a vida que tem, Viva..."
languagedialogue[3]="Ha! Então essa é a sua resposta, hein? Tudo bem... Olhe ali."
languagedialogue[4]="Isso é... um brejo?"
languagedialogue[4]="Aé, nossas ninjas foram contratados para caçá-las, então saudades não será um problema!"
cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;
}

newscript=function()
{
scenetime+=1;

if scenetime=200
{
with oControl
{
cutscenename="BAHATI" cutsceneline=  "We don't know how they live their lives, Viva..."
if global.Language!=0 cutsceneline=languagedialogue[2]
}
}

if scenetime=400
{
with actor8 {specialcheck[1]=1}	

with oControl
{
cutscenename="FUKUKIJO" cutsceneline=  "Ha! So that's your answer, huh? Alright then... Look over there."
if global.Language!=0 cutsceneline=languagedialogue[3]
}
}

if scenetime=620
{
with actor8 {specialcheck[5]=1}	

with oControl
{
cutscenename="BAHATI" cutsceneline=  "Is that... A swamp?"
if global.Language!=0 cutsceneline=languagedialogue[4]
}
}

if scenetime=700 hspeed=0

if scenetime=860
{PlaySound(snd_hit2) image_speed=0.25 sprite_index=spr_redsmack x=0 y=0 with actor8 {specialcheck[0]=0}	

with oControl {quakeFXTime=20 cutscenename="" cutsceneline= ""}
}

if scenetime=920
{hspeed=0 x=0 y=0
sprite_index=spr_dojocasinobuild image_speed=0 image_index=0

layer_set_visible("BTG2",0)
layer_set_visible("BTG1",0)
layer_set_visible("BGcity",0)

}

if scenetime=1000
{with oControl quakeFXTime=10
with actor1 {sprite_index=spr_byetent2 shadow=-1 x=160 y=160 hspeed=-8 vspeed=-8 isDepth=0 depth=-2800}
PlaySound(snd_explosion)
with actor5 {sprite_index=spr_oni_stand image_index=0 image_speed=0 x=1400 y=160}
with actor6 {sprite_index=spr_oni_talk image_index=0 image_speed=0 x=1600 y=188}
}



if scenetime=1260
{
	
with oControl {//SMASH!
cutscenename="FUKUKIJO" cutsceneline=  "Oh yeah, our ninjas were hired to hunt you down, so don't think you've seen the last of them!"
if global.Language!=0 cutsceneline=languagedialogue[5]
}
}


if scenetime=1620
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
scenetime=100
with oControl
{
//-Both are lying(Carnival)-
cutscenename="VIVA" cutsceneline= "This is a waste of time... Let's just get out of here."
}
x=0
y=0

with oControl
switch(global.Language)
{
case 2: ////Portuguese
languagedialogue[1]="Isso é perda de tempo... Vamos dar o fora daqui."
languagedialogue[2]="É, tá óbvio que tão se aproveitando da nossa nobreza!"
languagedialogue[3]="Olha pessoal, um festival está acontecendo aqui perto!"
languagedialogue[4]="Uhh, madames...?"
languagedialogue[5]="“Hmph! AZAR DE VOCÊS!"
languagedialogue[6]="VOCÊS DEVERIAM TER ENTRADO NA BRINCADEIRA!!!"
languagedialogue[7]="É uma pena, irmã."
languagedialogue[8]="Sim. Agora nossos funcionários serão as pedras em seus no caminhos."

cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;
}

newscript=function()
{
scenetime+=1;


if scenetime=480
{
with oControl {cutscenename="SOFIA" cutsceneline="Yeah, clearly they're both messing with us!"
	if global.Language!=0 cutsceneline=languagedialogue[2]
	}
}

if scenetime=660
{
with oControl {cutscenename="HINA" cutsceneline= "Oh look, everyone, the carnival's up nearby!"
	if global.Language!=0 cutsceneline=languagedialogue[3]
	}
}

if scenetime=860
{
with oControl {cutscenename="BAHATI" cutsceneline= "Uhh, girls...?"
	if global.Language!=0 cutsceneline=languagedialogue[4]
	}
}

if scenetime=1060
{
with actor8 {specialcheck[1]=2 specialcheck[2]=2}	

with oControl {cutscenename="FUKUKIJO & SHOKIJO" cutsceneline= "Hmph! TOUGH LUCK!"
	if global.Language!=0 cutsceneline=languagedialogue[5]
	}
}

if scenetime=1300
{////They walk off
with actor8 {specialcheck[0]=0}	
PlaySound(snd_hit2) image_speed=0.25
	sprite_index=spr_bothsmack
with oControl {quakeFXTime=20 cutscenename="" cutsceneline=""}
}

if scenetime=1500
{hspeed=0 x=0 y=0
sprite_index=spr_dojocasinobuild image_speed=0 image_index=0

layer_set_visible("BTG2",0)
layer_set_visible("BTG1",0)
layer_set_visible("BGcity",0)
}

if scenetime=1600
{with oControl quakeFXTime=10
with actor1 {sprite_index=spr_byetent2 shadow=-1 x=160 y=160 hspeed=0 vspeed=-8 isDepth=0 depth=-2800}
PlaySound(snd_explosion)
with actor5 {sprite_index=spr_oni_stand x=14000 y=160}
with actor6 {sprite_index=spr_oni_stand x=16000 y=188}

with oControl {//KERSMASH!
cutscenename="BAHATI" cutsceneline=  "YOU SHOULD HAVE PLAYED ALONG!!!"
if global.Language!=0 cutsceneline=languagedialogue[6]
}
}

//if scenetime=2000 {sprite_index=mask_none}

if scenetime=1950
{
with oControl {cutscenename="FUKUKIJO" cutsceneline="That's quite a shame, sister."
	if global.Language!=0 cutsceneline=languagedialogue[7]
	}
}


if scenetime=2100
{
with oControl {cutscenename="SHOKIJO" cutsceneline="Yes. Now they'll have to face our employees on the way there."
	if global.Language!=0 cutsceneline=languagedialogue[8]
	}
}


if scenetime=2420
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

with oControl
{
//-Red Oni is lying(Swamp)-
cutscenename="HINA" cutsceneline= "Blue! Blue is the liar!"
}
x=0
y=0

with oControl
switch(global.Language)
{
case 2: ////Portuguese
languagedialogue[1]="Óbvio que a vermelha é a mentirosa! Encerar chifres? Sério?"
languagedialogue[2]="Azul! A Azul é a mentirosa!"
languagedialogue[3]="Hã?! Como você sabe disso?"
languagedialogue[4]="Tem uma história sobre isso! A Oni Azul finge ser má para que sua irmã possa ser a heróina!"
languagedialogue[5]="Hmm... Então essa é a sua resposta? Muito bem... Olhem para cá."
languagedialogue[6]="Oh, a praia está tão linda esta noite!"
languagedialogue[7]="Bom lembrar, nossos funcionários também estão atrás de vocês, mais cedo ou mais tarde vocês irão se encontrar."

cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;
}

newscript=function()
{
scenetime+=1;

if scenetime=120
{
with oControl
{
cutscenename="SOFIA" cutsceneline="Huh?! What makes you so sure?"
if global.Language!=0 cutsceneline=languagedialogue[2]
}
}

if scenetime=340
{
with oControl
{
cutscenename="HINA" cutsceneline= "We have a story about this! The blue oni puts on an evil facade so their sibling can be a hero!"
if global.Language!=0 cutsceneline=languagedialogue[3]
}
}

if scenetime=860
{
	
with actor8 {specialcheck[2]=1}	

with oControl {cutscenename="SHOKIJO" cutsceneline="Hmm... So that is your answer? Very well... Look this way."
if global.Language!=0 cutsceneline=languagedialogue[4]

	}
}

if scenetime=1060
{
with actor8 {specialcheck[5]=-1}		

with oControl
{
cutscenename="HINA" cutsceneline= "Oh, the beach looks pretty tonight!"
if global.Language!=0 cutsceneline=languagedialogue[5]
}
}

if scenetime=1240 hspeed=0

if scenetime=1300
{PlaySound(snd_hit2) image_speed=0.25 sprite_index=spr_bluesmack x=0 y=0 with actor8 {specialcheck[0]=0}	

with oControl {quakeFXTime=20 cutscenename="" cutsceneline= ""}
}

if scenetime=1360
{hspeed=0 x=0 y=0
sprite_index=spr_dojocasinobuild image_speed=0 image_index=0

layer_set_visible("BTG2",0)
layer_set_visible("BTG1",0)
layer_set_visible("BGcity",0)
}

if scenetime=1440
{with oControl quakeFXTime=10
with actor1 {sprite_index=spr_byetent2 shadow=-1 x=160 y=160 hspeed=8 vspeed=-8 isDepth=0 depth=-2800}
PlaySound(snd_explosion)
with actor5 {sprite_index=spr_oni_stand x=14000 y=160}
with actor6 {sprite_index=spr_oni_stand x=16000 y=188}
}

if scenetime=1600
{
//sprite_index=mask_none
}

if scenetime=1680
{with oControl {//SMASH!
cutscenename="FUKUKIJO" cutsceneline=  "Oh yes, our employees are also out after you, so expect them to show up sooner than later."
if global.Language!=0 cutsceneline=languagedialogue[6]
}
}


if scenetime=2020
{
oControl.stageEndFX=1
}
}
}
}

arcade_saving(CutsceneStage)

