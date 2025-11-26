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

with actor1 {sprite_index=spr_viva_talk2 image_speed=0.1}

sprite_index=mask_none
with oControl
{
cutscenename="VIVA" cutsceneline= "Forget it, Her beak's obviously too tight for that info to be worth it. Where's the exit?"
}
x=0
y=0

with oControl
switch(global.Language)
{
case 1: ////Portuguese
languagedialogue[1]= "Olvídenlo, su pico está demasiado apretado para soltar algo útil. ¿Dónde está la salida?"
languagedialogue[2]="¡Pero mira nada más…! ¡Bien! La salida está por el campo de maíz, que la puerta les dé en el trasero al salir."
languagedialogue[3]="¿No quiso decir ‘que no les dé’?"
languagedialogue[4]="No, Hina. Dijo exactamente lo que quería decir."
languagedialogue[5]= "Jejejeh… Esas papanatas no tienen idea de que la gente ha estado desapareciendo por ahí…"
cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;	

case 2: ////Portuguese
languagedialogue[1]="Esquece, esse bico tá selado demais pra essa informação valer a pena. Onde está a saída?"
languagedialogue[2]="Porque eu deveria.... Tá! A saída é pelo milharal, deixem a porta bater nas suas costas ao sair!"
languagedialogue[3]="Você quis dizer pra não deixar?"
languagedialogue[4]="Não, Hina. Ela queria dizer aquilo mesmo."
languagedialogue[5]="Quáquáquá... Essas paspalhonas não fazem ideia de que tem gente desaparecendo por lá..."
cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;
}

newscript=function()
{
scenetime+=1;

if scenetime=320
{
with actor1 {sprite_index=spr_viva_talk2 image_speed=0 image_index=0}
	

with actor5 {sprite_index=spr_duck_talk1 image_speed=0 image_index=0}
with oControl
{
cutscenename="DIXIE" cutsceneline= "Why I oughta.... Fine! Exit's through the cornfield, let the door hit yer rears on the way out!"
if global.Language!=0 cutsceneline=languagedialogue[2]
}
}

if scenetime=640
{
with actor1 {sprite_index=spr_viva_move image_speed=0.25 hspeed=2}
with actor2 {sprite_index=spr_hina_move image_speed=0.25 hspeed=2}
with actor3 {sprite_index=spr_bahati_move image_speed=0.25 hspeed=2}
with actor4 {sprite_index=spr_sofia_move image_speed=0.25 hspeed=2}
	

with oControl
{
cutscenename="HINA" cutsceneline=  "You mean 'Don't let it'?"
if global.Language!=0 cutsceneline=languagedialogue[3]
}
}

if scenetime=760
{
with oControl
{
cutscenename="VIVA" cutsceneline= "No, Hina. She means what she said."
if global.Language!=0 cutsceneline=languagedialogue[4]
}
}

if scenetime=900
{
with oControl
{
cutscenename="DIXIE" cutsceneline= "..."
}
}

if scenetime=1060
{with actor5 {sprite_index=spr_duck_move hspeed=-2 image_speed=0.25}
with oControl
{
cutscenename="DIXIE" cutsceneline= "Heheheh... Those palookas got no clue people've been goin' missin' out there..."
if global.Language!=0 cutsceneline=languagedialogue[5]
}
}

if scenetime=1380
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
	
with actor3 {sprite_index=spr_bahati_talk image_speed=0.1}

sprite_index=mask_none
with oControl
{
cutscenename="BAHATI" cutsceneline= "Alright alright, how about we make it up to you and help with the show? Think you could tell us then?"
}
x=0
y=0

with oControl
switch(global.Language)
{
case 1: ////Portuguese
languagedialogue[1]="Bien bien, ¿y si lo compensamos ayudándote con tu show? ¿Nos dirías entonces?"
languagedialogue[2]="¡Aw cielos, de verdad lo harían?! ¡Eso arreglaría todo en un dos por tres!"
languagedialogue[3]="¿¡Estás loca?!"
languagedialogue[4]="Shhhh, confiemos en Bahati."
languagedialogue[5]="Oigan, esta no es la sala de vestuario…"
languagedialogue[6]= "Y ahora, para el gran final… ¡ESTAS DAMAS SE VAN DE VIAJE AL OCÉANO! ¡CORTESÍA DEL CAÑÓN DE DIXIE!"
languagedialogue[7]="¡LO SABÍA! ¡Sabía que no debimos ayudar a ese @#$% pato! Pero si vamos hacia el océano… conozco a alguien a quien podemos visitar…"
cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;	

case 2: ////Portuguese
languagedialogue[1]="Beleza, beleza, que tal compensarmos ajudando com o show? Poderia nos contar depois?"
languagedialogue[2]="Ai poxa, faria isso por mim?! Isso ia resolver tudo num vapt-vupt!"
languagedialogue[3]="Você perdeu a cabeça?!"
languagedialogue[4]="Shhhh, vamos confiar na Bahati nessa."
languagedialogue[5]="Ei, aqui não é o camarim deles."
languagedialogue[6]="E para o grand finale... ESSAS ZÉ RUELAS SERÃO JOGADAS NO OCEANO! CORTESIA DO CANHÃO DIXIE!"
languagedialogue[7]="Eu SABIA que a gente não devia ter ajudado aquela @#$%# pata! Mas se vamos ao oceano... conheço alguém que podemos fazer uma visita..."
cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;
}

newscript=function()
{
scenetime+=1;

if scenetime=380
{
with actor3 {sprite_index=spr_bahati_talk image_index=0 image_speed=0}

with actor5 {sprite_index=spr_duck_talk2 image_speed=0 image_index=0}

with oControl
{
cutscenename="DIXIE" cutsceneline= "Aw shucks, ya mean it?! That'd make this all better lickety split!"
if global.Language!=0 cutsceneline=languagedialogue[2]
}
}

if scenetime=600
{
with actor1 {sprite_index=spr_viva_anger image_index=0}

with oControl
{
cutscenename="VIVA" cutsceneline= "Are you out of your mind?!"
if global.Language!=0 cutsceneline=languagedialogue[3]
}
}

if scenetime=clamp(scenetime,610,639)
{actor2.sprite_index=spr_hina_attack actor2.image_index=0 
actor2.y=lerp(actor2.y,actor1.y,0.1) actor2.x=lerp(actor2.x,actor1.x+12,0.1)
}


if scenetime=640
{PlaySound(snd_steal)
with actor1 {sprite_index=spr_viva_cutscene image_index=6}
with actor2 sprite_index=mask_none
with oControl
{
cutscenename="HINA" cutsceneline= "Shhhh, let's trust Bahati on this."
if global.Language!=0 cutsceneline=languagedialogue[4]
}
}

if scenetime=940
{sprite_index=spr_allblackscreen PlaySound(snd_hitgroundheavy)
	
with oControl
{
cutscenename="" cutsceneline= ""
}
}

if scenetime=980 PlaySound(snd_hitgroundmetal)

if scenetime=1040
{sprite_index=spr_allblackscreen
with oControl
{cutscenename="VIVA" cutsceneline= "Hey this isn't their costume room."
	if global.Language!=0 cutsceneline=languagedialogue[5]
	}
}

if scenetime=1260
{sprite_index=spr_gotchacannon musicplaystartpitch(msc_carnival,1.25)
vspeed=-0.1	

with oControl
{
cutscenename="DIXIE" cutsceneline= "And now for the grand finale... THESE DAMES ARE GOIN' ON A TRIP TO THE OCEAN! COURTESY OF THE DIXIE CANNON!"
if global.Language!=0 cutsceneline=languagedialogue[6]
}
}

if scenetime=1620
{sprite_index=spr_byetent image_index=0 x=0 y=0 vspeed=0 audio_stop_all()
with oControl
{
cutscenename="" cutsceneline= ""
}
}

if scenetime=1700
{sprite_index=spr_byetent x=0 y=0 PlaySound(snd_explosion) image_index=1

flashFX(124,120,0,spr_explosion4,0,0.25,30,1,1,c_white,1) with fx
{isDepth=0 depth=-3004}
	
flashFX(124,120,0,spr_byetent2,0,0,9999,1,1,c_white,1) with fx
{isDepth=0 depth=-3005 hspeed=24 vspeed=-12}
	
with oControl
{quakeFXTime=10
cutscenename="" cutsceneline= ""
}
}

if scenetime=1860
{actor5.y=9999 sprite_index=mask_none ///124, 120

layer_set_visible("BTG1",0)
layer_set_visible("BTG2",0)
layer_set_visible("BGAudience",0)


with actor1 {z=-32 sprite_index=spr_viva_cannonball image_index=7 x=-160 shadow=-1 image_speed=0.25}
with actor2 {z=-32 sprite_index=spr_hina_cannonball image_index=7 x=-160 y-=32 shadow=-1 image_speed=0.25}
with actor3 {z=-32 sprite_index=spr_bahati_cannonball image_index=7 x=-160 y+=24 shadow=-1 image_speed=0.25}
with actor4 {z=-32 sprite_index=spr_sofia_cannonball image_index=7 x=-160 y+=48 shadow=-1 image_speed=0.25}

with oControl
{

cutscenename="VIVA" cutsceneline= "I KNEW we shouldn't have helped that @#$% duck! But if we're going to the ocean... I know someone we can pay a visit..."
if global.Language!=0 cutsceneline=languagedialogue[7]

}
}

if scenetime>=1860
{
specialcheck[1]+=1
specialcheck[2]+=0.8
specialcheck[3]+=1.2
specialcheck[4]+=0.9

with actor1 {hspeed=0 x=lerp(x+lengthdir_x(4,oControl.actorscreen.specialcheck[1]),160,0.1)}
with actor2 {hspeed=0 x=lerp(x+lengthdir_x(4,oControl.actorscreen.specialcheck[2]),160-4,0.1)}
with actor3 {hspeed=0 x=lerp(x+lengthdir_x(4,oControl.actorscreen.specialcheck[3]),160+8,0.1)}
with actor4 {hspeed=0 x=lerp(x+lengthdir_x(4,oControl.actorscreen.specialcheck[4]),160-12,0.1)}
}

if scenetime>=2260
{

	
with oCameoChar vspeed+=0.1

if actor1.y<=270 scenetime=2265
}

if scenetime=2270 PlaySound(snd_splash2)

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
CutsceneStage=rm_stagedesert

with actorscreen
{scenetime=0; BGspr.sprite_index=spr_quackBG BGspr.image_index=1
x=0 y=0
sprite_index=spr_hitherface PlaySound(snd_hit) PlaySound(snd_duck11)
with oControl
{quakeFXTime=10
cutscenename="" cutsceneline= ""
}
x=70
y=0

with oControl
switch(global.Language)
{
case 1: ////Portuguese
languagedialogue[1]="…Son despreciables…"
languagedialogue[2]= "Bien, tuve que encargarme del trabajo de mi jefe porque él se fue de cacería de tesoros… creo que a algún lugar del desierto del Sahara."
languagedialogue[3]="¡El desierto! ¡En marcha, chicas!"
languagedialogue[4]="¡Ya voy! ¡TAAAAXIIIIII!"
//cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;
case 2: ////Portuguese
languagedialogue[1]="...Suas asquerosas..."
languagedialogue[2]="Tá, tive que assumir o trampo da chefia aqui porque foram atrás de um tesouro, acho que era em algum lugar no deserto do Saara."
languagedialogue[3]="O deserto! Vamos nessa, meninas!"
languagedialogue[4]="É pra já! TAXIIIIII!"
//cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;
}

scenetime=120

specialdraw=function()
{hspeed=0 image_speed=0
if scenetime<280
image_index+=0.2
else
image_index=2

draw_sprite(sprite_index,0,x,y)
if scenetime<340
draw_sprite(spr_hitherface2,image_index,x,y)
else
draw_sprite(spr_hitherface2,4,x,y)
}

newscript=function()
{
scenetime+=1;

if scenetime=340
{
with oControl
{
cutscenename="DIXIE" cutsceneline= "...Yer' despicable..."
if global.Language!=0 cutsceneline=languagedialogue[1]
}
}

if scenetime=560
{
	
with actor1 {sprite_index=spr_viva_attack image_index=0}
with actor2 {sprite_index=spr_hina_attack image_index=0}
with actor3 {sprite_index=spr_bahati_attack image_index=0}
with actor4 {sprite_index=spr_sofia_taunt3 image_index=0}

	with actor5 {sprite_index=spr_duck_tbeakflip image_index=0 image_speed=0}
BGspr.sprite_index=mask_none
specialdraw=-1 sprite_index=mask_none

with oControl
{
cutscenename="DIXIE" cutsceneline= "Fine, I had to take over my boss's job here cuz he ran off on a treasure hunt, think it was somewhere in the sahara desert."
if global.Language!=0 cutsceneline=languagedialogue[2]
}
}

if scenetime=980
{
with actor1 {sprite_index=spr_viva_talk2 image_index=0 image_speed=0.1}	

with oControl
{
cutscenename="VIVA" cutsceneline= "The desert! Let's get moving, ladies!"
if global.Language!=0 cutsceneline=languagedialogue[3]
}
}

if scenetime=1140
{
with actor1 {image_index=0 image_speed=0}

with actor4 {sprite_index=spr_sofia_win image_index=2}

with oControl
{
cutscenename="SOFIA" cutsceneline= "Already on it! TAXIIIIII!"
if global.Language!=0 cutsceneline=languagedialogue[4]
}
}

if scenetime=1300
{actor6.sprite_index=spr_taxidesert actor6.hspeed=8 actor6.y=192 actor6.x=-200 actor6.image_xscale=1

PlaySound(snd_carengine3)	

with oControl
{
cutscenename="" cutsceneline= ""
}
}

if scenetime=1340 {actor6.hspeed=0 PlaySound(snd_carengine2)}

if scenetime=1350
{
with actor1 {sprite_index=spr_viva_move image_speed=0.25}
with actor2 {sprite_index=spr_hina_move image_speed=0.25}
with actor3 {sprite_index=spr_bahati_move image_speed=0.25}
with actor4 {sprite_index=spr_sofia_move image_speed=0.25}

}

if scenetime>=1350 and scenetime<=1400
{
actor1.x=lerp(actor1.x,actor6.x,0.1)
actor2.x=lerp(actor2.x,actor6.x,0.1)
actor3.x=lerp(actor3.x,actor6.x,0.1)
actor4.x=lerp(actor4.x,actor6.x,0.1)

actor1.y=lerp(actor1.y,actor6.y-2,0.1)
actor2.y=lerp(actor2.y,actor6.y-2,0.1)
actor3.y=lerp(actor3.y,actor6.y-2,0.1)
actor4.y=lerp(actor4.y,actor6.y-2,0.1)

}

if scenetime=1400 {actor6.hspeed=8 PlaySound(snd_carengine)
	actor1.y=999 actor2.y=999 actor3.y=999 actor4.y=999
	}

if scenetime=1520
{
oControl.stageEndFX=1
}
}
}
}

arcade_saving(CutsceneStage)