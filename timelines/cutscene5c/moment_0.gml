//background_
if cutscenePlaying=0
{
instance_create_depth(-999,-999,-1,oTextBox)

global.UnlockCutscene[13]=1 feats_check(43);

with oControl
{
CDtextT="MAKE A WISH!\nCHOOSE WISELY!"
CDtextA="SOMEWHERE COOLER."
CDtextB="BE ON LAND."
CDtextC="REACH GREATER HEIGHTS."

cutscenename=""
cutsceneline=""
}

SceneX=0
__view_set( e__VW.XView, 0, SceneX )
SceneY=0
__view_set( e__VW.XView, 0, SceneY )

actorscreen=instance_create_depth(0,0,-1,oCameoChar) with actorscreen
{sprite_index=spr_cutscene5c1 anim=9999 isDepth=0 depth=-3000 shadow=-1; x=0; y=0; image_speed=0.5

actor1=instance_create_depth(1186,170,-1,oCameoChar) with actor1
{sprite_index=spr_viva_cutscene image_index=0 anim=9999}
actor2=instance_create_depth(1150,144,-1,oCameoChar) with actor2
{sprite_index=spr_hina_point image_index=0 anim=9999}
actor3=instance_create_depth(1146,160,-1,oCameoChar) with actor3
{sprite_index=spr_bahati_cutscene image_index=1 anim=9999}
actor4=instance_create_depth(1176,188,-1,oCameoChar) with actor4
{sprite_index=spr_sofia_taunt3 image_index=0 anim=9999}
actor5=instance_create_depth(11215,170,-1,oCameoChar) with actor5
{sprite_index=spr_genie_stand anim=9999 image_xscale=-1}
actor6=instance_create_depth(11215,170,-1,oCameoChar) with actor6
{sprite_index=spr_geniemaster_intro image_index=0 anim=9999 image_xscale=-1}

actor7=instance_create_depth(11215,180,-1,oCameoChar) with actor7
{sprite_index=spr_harpy_dizzy anim=9999 image_xscale=-1}

actor8=instance_create_depth(11215,170,-1,oCameoChar) with actor8
{sprite_index=spr_harpy_dizzy anim=9999 image_xscale=1}

geniewishes=instance_create_depth(11215,170,-1,oCameoChar)
{sprite_index=mask_none isDepth=0 depth=-3001 shadow=-1 image_speed=0}

if global.CutsceneSkip=0 with oControl canSkipCutscene=1

with oControl
{
cutscenename="MR.BURG" cutsceneline="I SURRENDER! PLEASE DON'T HURT MEEE!!!"
}

sprite_index=spr_cutscene5c1 image_speed=0.5

newscript=function()
{
scenetime+=1;


if scenetime<=2
if global.CutsceneSkip=1 {audio_stop_all() global.CutsceneSkip=0 canSkipCutscene=1 scenetime=6000}

if scenetime=340
{sprite_index=spr_geniehug image_speed=0 image_index=0 musicplaystart(msc_profile) PlaySound(snd_steal)
with actor8 {sprite_index=spr_geniewhat x=-160 y=0 shadow=-1 isDepth=0 depth=-3010}	

with oControl
{quakeFXTime=10
cutscenename="HAIFA" cutsceneline= "Please! Do not harm my beloved!"
if global.Language!=0 cutsceneline=languagedialogue[2]
} x=0
y=0
}

if scenetime=540
{ 
with oControl
{
cutscenename="DIVAS" cutsceneline= "'Beloved'?!"
if global.Language!=0 cutsceneline=languagedialogue[3]
}
}

if scenetime=clamp(scenetime,540,639)
{actor8.x=lerp(actor8.x,0,0.1)
}

if scenetime=640
{actor8.sprite_index=mask_none
	sprite_index=mask_none
	
with actor5 {sprite_index=spr_genie_talk image_index=0}
with actor6 {sprite_index=spr_geniemaster_talk image_speed=0.25}
	
with oControl
{
cutscenename="BURGUSON" cutsceneline= "I got lost while lookin' for the rest of the gang... But then I met this beautiful dame and we fell madly in love!"
	if global.Language!=0 cutsceneline=languagedialogue[4]
	}

with actor1 {x=80 y=170 sprite_index=spr_viva_point image_index=2}
with actor2 {x=64 y=144 sprite_index=spr_hina_point image_index=2}
with actor3 {x=56 y=160 sprite_index=spr_bahati_point image_index=2}
with actor4 {x=28 y=188 sprite_index=spr_sofia_point image_index=2}

with actor5 {x=215 y=164}
with actor6 {x=220 y=180}
}



if scenetime=1120
{
with actor5 {sprite_index=spr_genie_talk image_speed=0.25}
with actor6 {sprite_index=spr_geniemaster_talk image_index=0 image_speed=0}

with oControl
{
cutscenename="HAIFA" cutsceneline= "It is true! And if you leave us be, I will grant you one wish."
if global.Language!=0 cutsceneline=languagedialogue[5]
}

}

if scenetime=1340
{
with geniewishes
{x=-320; y=0; specialcheck[0]=-320; isDepth=0 depth=-4000
	sprite_index=spr_geniewishes2 image_speed=0
	newscript=function() {x=lerp(x,specialcheck[0],0.1)}
specialdraw=function()
{
draw_sprite(spr_cutscene5c,0,0,0)

draw_sprite(spr_geniewishes,specialcheck[1],80,0)

draw_sprite(sprite_index,specialcheck[2],round(x),round(y))
}
}

with oControl
{cutscenename="HAIFA" cutsceneline= "I could give you wealth!"
	if global.Language!=0 cutsceneline=languagedialogue[6]
	}
}

if scenetime=1500
{
geniewishes.specialcheck[0]=0

with oControl
{cutscenename="VIVA" cutsceneline= "We... got that? We're rich already."
	if global.Language!=0 cutsceneline=languagedialogue[7]
	}
}

if scenetime=1750
{
geniewishes.specialcheck[0]=-320

with oControl
{cutscenename="HAIFA" cutsceneline= "Oh. What about fame?"
	if global.Language!=0 cutsceneline=languagedialogue[8]
	}
}

if scenetime=1900
{
geniewishes.specialcheck[0]=0 geniewishes.specialcheck[2]=1	

with oControl
{cutscenename="BAHATI" cutsceneline= "We got all the fame we need."
	if global.Language!=0 cutsceneline=languagedialogue[9]
	}
}

if scenetime=2150
{
geniewishes.specialcheck[0]=-320	

with oControl
{cutscenename="HAIFA" cutsceneline= "What about love?! Love is one important thing."
	if global.Language!=0 cutsceneline=languagedialogue[10]
	}
}

if scenetime=2360
{
geniewishes.specialcheck[0]=0 geniewishes.specialcheck[2]=2

with oControl
{cutscenename="SOFIA" cutsceneline= "All covered."
	if global.Language!=0 cutsceneline=languagedialogue[11]
	}
}

if scenetime=2520
{
with oControl
{cutscenename="HINA" cutsceneline= "This is our kind of love."
	if global.Language!=0 cutsceneline=languagedialogue[12]
	}
}

if scenetime=2700
{geniewishes.specialcheck[1]=1
with oControl
{cutscenename="HAIFA" cutsceneline= "...alright."
	if global.Language!=0 cutsceneline=languagedialogue[13]
	}
}

if scenetime=2850
{image_index=1; scenetime=6000 with geniewishes {instance_destroy();}
}

if scenetime=6000
{audio_stop_all()
sprite_index=mask_none

with actor1 {x=80 y=170 sprite_index=spr_viva_cutscene image_index=0}
with actor2 {x=64 y=144 sprite_index=spr_hina_cutscene image_index=1}
with actor3 {x=56 y=160 sprite_index=spr_bahati_cutscene image_index=2}
with actor4 {x=28 y=188 sprite_index=spr_sofia_talk3 image_index=0}

with actor5 {x=215 y=164 sprite_index=spr_genie_talk2 image_speed=0.25}
with actor6 {x=220 y=180 sprite_index=spr_geniemaster_talk image_speed=0 image_index=0}

with oControl
{
cutscenename="HAIFA" cutsceneline= "Just tell me what you need... But choose your words carefully..." 
if global.Language!=0 cutsceneline=languagedialogue[14]
}
}

if scenetime=6300
{
with actor5 {image_speed=0 image_index=0}

with oControl
{
timeline_position=6000-60;
timeline_speed=1
}
}

//cutscenename="SOFIA" cutsceneline= "Viva you never told us this royal fishman hunk was your cousin! What was up with you?"
//cutscenename="VIVA" cutsceneline= "Simple, I find him obnoxious."
//cutscenename="PRINCE" cutsceneline= "I'm terribly sorry that my people attacked you so suddenly, but they needed to test you! Although... What brings you here anyway? And how is that diamond I gave you, Viva?"
//cutscenename="VIVA" cutsceneline= "Err... I can answer both of those questions at once... Thieves are on the run with it and these girls' treasures as well..."
//cutscenename="PRINCE" cutsceneline= "WHAT?! OH SWEET SCALLOPS THIS IS TERRIBLE! That diamond is enchanted! Terrible things could happen with it in the wrong hands! Quickly! We must pursue those fiends posthaste! My servants and I will send you on your way!" 

//MrPr1993 — 09/08/2024 11:21 PM
///Ooh ooh make Viva's reply about the diamond with a very nervous tone 
//Flash Trickstar — 09/08/2024 11:31 PM


if scenetime=57600
{
	with oControl
	{canSkipCutscene=0
cutscenename="VIVA"
cutsceneline="FORGET IT! WE NEED TO THINK HOW TO GET OUTTA THIS!"

timeline_position=5700
timeline_speed=1
}

if scenetime=clamp(scenetime,760,799) scenetime=764

}





//////	


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
CDtextT="¡PIDAN UN DESEO!\n¡ESCOJAN CON SABIDURÍA!"
CDtextA="ALGO MÁS FRESCO."
CDtextB="ESTAR SOBRE TIERRA FIRME."
CDtextC="ALCANZAR MAYORES ALTURAS."

languagedialogue[1]="¡ME RINDO! ¡¡POR FAVOR NO ME LASTIMEN!!"
languagedialogue[2]="¡Por favor! ¡No hagan daño a mi amado!"
languagedialogue[3]="¿¡¿Amado?!?"
languagedialogue[4]="Me perdí buscando al resto de la banda… ¡Pero entonces conocí a esta preciosa dama y nos enamoramos perdidamente!"
languagedialogue[5]="¡Es verdad! Y si nos dejan ir, les concederé un deseo."
languagedialogue[6]="Puedo darles riqueza."
languagedialogue[7]="Eh… ya tenemos eso. Somos ricas."
languagedialogue[8]="Oh… ¿Y fama?"
languagedialogue[9]="Tenemos toda la fama que necesitamos."
languagedialogue[10]="¿Y amor? ¡El amor es muy importante!"
languagedialogue[11]="Todo cubierto."
languagedialogue[12]="Este es nuestro tipo de amor."
languagedialogue[13]="…De acuerdo."
languagedialogue[14]="Solo díganme qué desean… Pero elijan sus palabras con cuidado…"
cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]

break;	

case 2: ////Portuguese
CDtextT="FAÇA UM DESEJO!\nESCOLHA COM SABEDORIA!"
CDtextA="UM LUGAR MAIS FRIO."
CDtextB="ESTAR EM TERRA FIRME."
CDtextC="ALCANÇAR ALTURAS MAIORES."

languagedialogue[1]="EU ME RENDO! POR FAVOR NÃO ME MACHUQUEEEEM!!!"
languagedialogue[2]="Por favor! Não machuquem o meu amado!"
languagedialogue[3]="Amado?!"
languagedialogue[4]="Eu me perdi enquanto procurava o resto da gangue... Mas então conheci essa bela dama e nos apaixonamos loucamente!"
languagedialogue[5]="É verdade! E se nos deixar em paz, eu concederei um desejo."
languagedialogue[6]="Eu poderia lhe dar riqueza!"
languagedialogue[7]="Nós... temos isso? Já somos ricas."
languagedialogue[8]="Ah. E fama?"
languagedialogue[9]="Temos toda a fama que precisamos."
languagedialogue[10]="E amor?! O amor é uma coisa importante."
languagedialogue[11]="Tudo nos conformes."
languagedialogue[12]="Esse é o nosso tipo de amor."
languagedialogue[13]="... tudo bem."
languagedialogue[14]="Apenas diga o que você precisa... Mas escolha suas palavras com cuidado..."
cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]

break;
}


}


