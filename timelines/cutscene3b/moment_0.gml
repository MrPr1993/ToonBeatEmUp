//background_
if cutscenePlaying=0
{
instance_create_depth(-999,-999,-1,oTextBox)

global.UnlockCutscene[6]=1 feats_check(43);

with oControl
{
CDtextT="WHICH DOOR\nWILL YOU GO?"
CDtextA="GREEN DOOR."
CDtextB="RED DOOR."
CDtextC="BLUE DOOR."



cutscenename="VIVA" cutsceneline="Huh?! Where'd that haughty ghost get off to?"

}


SceneX=0
__view_set( e__VW.XView, 0, SceneX )
SceneY=0
__view_set( e__VW.XView, 0, SceneY )

actorscreen=instance_create_depth(160,192,-1,oCameoChar) with actorscreen
{sprite_index=spr_whereisghost anim=9999 isDepth=0 depth=-3000 shadow=-1; x=0 y=0

musicplaystart(msc_weird)

actor1=instance_create_depth(1186,170,-1,oCameoChar) with actor1
{sprite_index=spr_viva_cutscene image_index=0 anim=9999}
actor2=instance_create_depth(1150,144,-1,oCameoChar) with actor2
{sprite_index=spr_hina_point image_index=0 anim=9999}
actor3=instance_create_depth(1146,160,-1,oCameoChar) with actor3
{sprite_index=spr_bahati_cutscene image_index=1 anim=9999}
actor4=instance_create_depth(1176,188,-1,oCameoChar) with actor4
{sprite_index=spr_sofia_taunt3 image_index=0 anim=9999}
actor5=instance_create_depth(3200-64,170,-1,oCameoChar) with actor5
{sprite_index=spr_ghost_move image_index=10 anim=9999 image_xscale=-1 specialcheck[6]=spr_ghost_head
	specialdraw=function()
	{

	var headX=0; var headY=0; var headfacespr=specialcheck[6]; var headfaceimg=specialcheck[7];
	if sprite_index=spr_ghost_stand {headX=10 headY=-90}
	if sprite_index=spr_ghost_move {headX=20 headY=-88}	
	draw_sprite_ext(sprite_index,image_index,round(x),round(y+z),image_xscale,image_yscale,0,c_white,0.8)
	draw_sprite_ext(headfacespr,headfaceimg,round(x+headX*image_xscale),round(y+z+headY),image_xscale,image_yscale,0,c_white,0.8)	
	}
	}

actor6=instance_create_depth(11215,170,-1,oCameoChar) with actor6
{sprite_index=spr_spookydoor anim=9999 shadow=-1; image_index=0; image_xscale=1}

actor7=instance_create_depth(11215,180,-1,oCameoChar) with actor7
{sprite_index=spr_spookydoor anim=9999 shadow=-1; image_index=1; image_xscale=1}

actor8=instance_create_depth(11215,170,-1,oCameoChar) with actor8
{sprite_index=spr_spookydoor anim=9999 shadow=-1; image_index=2; image_xscale=1}

actBG1=instance_create_depth(11215,170,-1,oCameoChar) with actBG1
{sprite_index=spr_spookydoor anim=9999 shadow=-1; image_xscale=1}

if global.CutsceneSkip=0 with oControl canSkipCutscene=1

sprite_index=spr_whereisghost
hspeed=0.15 x=-64 y=0
specialdraw=function()
{
draw_sprite(spr_allblackscreen,0,0,0)
draw_sprite_ext(spr_whereisghost,1,round(x-128),round(y),1,1,0,c_white,specialcheck[6])
draw_self()
}

newscript=function()
{
scenetime+=1;

if scenetime<=2
if global.CutsceneSkip=1 {audio_stop_all() global.CutsceneSkip=0 canSkipCutscene=1 scenetime=6000}

if scenetime<=1739
if scenetime>=640 specialcheck[6]=lerp(specialcheck[6],0.8,0.001)

if scenetime=380
{
//with actor1 {x=64}
//with actor2 {x=64}
//with actor3 {x=64}
//with actor4 {x=64}
//with actor5 {x=320-64}
	
 scenetime=600
with oControl
{
cutscenename="BAHATI" cutsceneline= "She was just here a second ago!"
if global.Language!=0 cutsceneline=languagedialogue[2]
}
}

if scenetime=800
{

	
with oControl
{cutscenename="HINA" cutsceneline= "Umm... Girls...?"
	if global.Language!=0 cutsceneline=languagedialogue[3]
}
scenetime=860
}

if scenetime=940
{with oControl
{
cutscenename="VIVA" cutsceneline="Not now, Hina. Now where did she have gone off to...?"
if global.Language!=0 cutsceneline=languagedialogue[4]
}
}

if scenetime=1340
{
with oControl
{
cutscenename="HINA" cutsceneline= "Girls...?"
if global.Language!=0 cutsceneline=languagedialogue[5]
}
scenetime=1360
}

if scenetime=1440
{
with oControl
{
cutscenename="SOFIA" cutsceneline= "Not now Hina, can't you see we're trying to catch that specter?"
if global.Language!=0 cutsceneline=languagedialogue[6]
}
}
if scenetime=1740
{audio_stop_all()
with oControl
{
cutscenename="ANNAMARI" cutsceneline= "Fufufu... You..."
if global.Language!=0 cutsceneline=languagedialogue[7]
}
scenetime=1860
}
if scenetime=2040
{specialcheck[6]=0 hspeed=0 PlaySound(snd_hit3)
specialdraw=function() {  draw_self();}; x=32

sprite_index=spr_ghostslash image_speed=0

with oControl
{quakeFXTime=10
cutscenename="ANNAMARI" cutsceneline= "FOOLS!"
if global.Language!=0 cutsceneline=languagedialogue[8]
}
}

if scenetime=clamp(scenetime,2040,2339) x=lerp(x,0,0.1)

if scenetime=2120
{
flashscreen=instance_create_depth(0,0,-1,oAlphaFadeFX) with flashscreen
{image_alpha=0 fadeSpd=0.05 isfading=1 image_xscale=99 image_yscale=99
sprite_index=spr_whitecol image_blend=c_black depth=-4000
}
}

if scenetime=2340
{with flashscreen{image_alpha=1 fadeSpd=-0.05}
specialdraw=function()
{

draw_sprite(spr_allblackscreen,0,0,0)
draw_sprite_ext(spr_cutscene3b3,2,round(x+150),round(y),1,1,0,c_white,specialcheck[6])
draw_sprite_ext(spr_cutscene3b3,3,round(x-60),round(y),1,1,0,c_white,specialcheck[6])
draw_self()
}	

musicplaystart(msc_scary)

sprite_index=spr_cutscene3b3 image_index=0
x=180 y=182
with oControl
{
//CHOP
cutscenename="ANNAMARI" cutsceneline= "OOOOHOHOHOHO! Serves you lot right for thinking you could put a damper on my joyous haunting! The living cannot harm the dead!"
if global.Language!=0 cutsceneline=languagedialogue[9]
}

}

if scenetime=clamp(scenetime,2780,2879) specialcheck[6]=lerp(specialcheck[6],0.8,0.05)

if scenetime=2780
{sprite_index=spr_cutscene3b3 image_index=1 audio_stop_all()
with oControl
{
cutscenename="ANNAMARI" cutsceneline= "OHOHOH-oh...?"
if global.Language!=0 cutsceneline=languagedialogue[10]
}
}

if scenetime=2880
{
with oControl
{
cutscenename="SOFIA" cutsceneline= "The living huh...?"
if global.Language!=0 cutsceneline=languagedialogue[11]
}
}

if scenetime=3040
{scenetime=3180
with oControl
{
cutscenename="VIVA" cutsceneline= "Well we're not living right now..."
if global.Language!=0 cutsceneline=languagedialogue[12]
}
}
if scenetime=3400
{
with oControl
{
cutscenename="ANNAMARI" cutsceneline= "...Oh dear..."
if global.Language!=0 cutsceneline=languagedialogue[13]
}
}
if scenetime=3500
{sprite_index=spr_allblackscreen x=0 y=0 specialdraw=function() {draw_sprite(spr_allblackscreen,0,0,0) draw_self()}
with oControl
{
cutscenename="" cutsceneline= "" ///Beating ensues
}
}

if scenetime=3510 PlaySound(snd_hit)
if scenetime=3560 PlaySound(snd_hit2)
if scenetime=3600 PlaySound(snd_hit5)

if scenetime=3640
{sprite_index=spr_beatghost image_index=0 x=0 y=0 image_alpha=0.8
	
musicplaystart(msc_training)
	
with oControl
{quakeFXTime=10
cutscenename="ANNAMARI" cutsceneline= "I GIVE! I'm sorry! I only haunted this place so to vent my frustrations after some FILTHY thieves rushed in and stole my family heirloom!"
if global.Language!=0 cutsceneline=languagedialogue[14]
}
}
if scenetime=4140
{
with oControl
{
cutscenename="BAHATI" cutsceneline= "Your family heirloom...?"
if global.Language!=0 cutsceneline=languagedialogue[15]
}
}
if scenetime=4300
{
with oControl
{
cutscenename="HINA" cutsceneline= "Just like us...."
if global.Language!=0 cutsceneline=languagedialogue[16]
}
}

if scenetime=4540
{image_index=1
with oControl
{
cutscenename="ANNAMARI" cutsceneline= "Let's... make a deal since we're in the same issue... I revive you all, and you'll get back my heirloom along with yours!"
if global.Language!=0 cutsceneline=languagedialogue[17]
}
}
if scenetime=5130
{
with oControl
{
cutscenename="VIVA" cutsceneline= "Wait how are you..."
if global.Language!=0 cutsceneline=languagedialogue[18]
}
scenetime=5200
}



if scenetime=5300
{sprite_index=spr_allblackscreen image_index=0 image_alpha=1 x=0 y=0 specialdraw=-1;
	audio_stop_all()
with oControl
{
cutscenename="" cutsceneline= ""
}
}
if scenetime=5380
{sprite_index=spr_putheadback image_index=0 image_alpha=1 PlaySound(snd_steal)
with oControl
{
cutscenename="VIVA" cutsceneline= "OH. So unconfortable for my neck..."
if global.Language!=0 cutsceneline=languagedialogue[19]
}
}
if scenetime=5760
{
with oControl
{
cutscenename="BAHATI" cutsceneline= "Well, where the thieves went, miss Annamari?"
if global.Language!=0 cutsceneline=languagedialogue[20]
}
}

if scenetime=6000
{audio_stop_all()
sprite_index=mask_none

specialdraw=-1;

with actor1 {x=0-140; image_speed=0.25 sprite_index=spr_viva_move; hspeed=2}
with actor2 {x=-33-140; image_speed=0.25 sprite_index=spr_hina_move; hspeed=2}
with actor3 {x=32-140; image_speed=0.25 sprite_index=spr_bahati_move; hspeed=2}
with actor4 {x=0-140-32; image_speed=0.25 sprite_index=spr_sofia_move; hspeed=2}
with actor5 {x=32; image_speed=0.25 sprite_index=spr_ghost_move; image_xscale=1 hspeed=2}

with actor6 {x=400+32}
with actor7 {x=520 }
with actor8 {x=640-32}

with oControl
{
cutscenename="ANNAMARI" cutsceneline= "They kinda spread out into my spooky doors... so you should pick which one."}
if global.Language!=0 cutsceneline=languagedialogue[21]
}

if scenetime=6120
{
with actor1 {image_speed=0 sprite_index=spr_viva_stand; hspeed=0}
with actor2 {image_speed=0 sprite_index=spr_hina_stand; hspeed=0}
with actor3 {image_speed=0 sprite_index=spr_bahati_stand; hspeed=0}
with actor4 {image_speed=0 sprite_index=spr_sofia_stand; hspeed=0}
with actor5 {image_speed=0 sprite_index=spr_ghost_stand; image_xscale=-1 hspeed=0}
}

if scenetime=clamp(scenetime,6000,6300) specialcheck[0]-=8;

if scenetime=clamp(scenetime,6120,6300)
{
with oControl {SceneX+=2; __view_set( e__VW.XView, 0, SceneX )}
}

if scenetime=6350
{
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
CDtextT="¿QUÉ PUERTA\nELEGIRÁN?"
CDtextA="PUERTA VERDE."
CDtextB="PUERTA ROJA."
CDtextC="PUERTA AZUL."

languagedialogue[1]="¿Huh? ¿A dónde se fue ese fantasma altanero?"

languagedialogue[2]="¡Si estaba aquí hace un segundo!"

languagedialogue[3]="Umm… Chicas…?"

languagedialogue[4]="Ahora no, Hina. ¿Dónde se habrá escondido…?"

languagedialogue[5]="Chicas…?"

languagedialogue[6]="Ahora no, Hina, ¿no ves que intentamos atrapar a ese espectro?"

languagedialogue[7]="Fufufu… Ustedes…"

//(Annamari decapitates them!)

languagedialogue[8]="¡INSENSATAS!"

languagedialogue[9]= "¡OOOOHOHOHOHO! ¡Eso les pasa por creer que podían arruinar mi encantadora ronda de apariciones! ¡Los vivos no pueden dañar a los muertos!"

languagedialogue[10]="OHOHOH— ¿oh…?" //(the divas’ ghosts surround her)

languagedialogue[11]="Pues nosotras no estamos vivas ahora mismo…"

languagedialogue[12]="Não estou me sentindo tão viva..."

languagedialogue[13]="…Oh cielos…"

//(beatdown ensues)

languagedialogue[14]="¡ME RINDO! ¡Lo siento! ¡Solo embrujaba este lugar para desahogar mis frustraciones después de que UNOS LADRONES ASQUEROSOS irrumpieran y robaran la reliquia de mi familia!"

languagedialogue[15]="¿Tu reliquia familiar…?"

languagedialogue[16]="Igual que nosotras…"

languagedialogue[17]= "Hagamos… un trato dado que tenemos el mismo problema… Yo las revivo, y ustedes recuperan mi reliquia junto con la suya."

languagedialogue[18]="Espera, ¿cómo vas a—?"

//(Annamari brings them back to life putting their head back and using duct tape)

languagedialogue[19]="AH. Qué incómodo para mi cuello…"

languagedialogue[20]="Bueno, ¿a dónde fueron los ladrones, señorita Annamari?"

languagedialogue[21]="Se dispersaron por mis puertas espeluznantes… así que tendrán que elegir una."

cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;	

case 2: ////Portuguese
CDtextT="VOCÊ IRÁ ESCOLHER\nQUAL PORTA?"
CDtextA="PORTA VERDE."
CDtextB="PORTA VERMELHA."
CDtextC="PORTA AZUL."

languagedialogue[1]="Huh?! Pra onde que o fantasma foi?"

languagedialogue[2]="Ela tava aqui faz um segundinho atrás!"

languagedialogue[3]="Umm... Meninas...?"

languagedialogue[4]="Agora não, Hina. Onde que ela se meteu...?"

languagedialogue[5]="Meninas...?"

languagedialogue[6]="Calma Hina, não tá vendo que estamos procurando aquela assombração?"

languagedialogue[7]="Fufufu... Todas..."

//(Annamari decapitates them!)

languagedialogue[8]="TOLAS!"

languagedialogue[9]="OOOOHOHOHOHO! Bem te serve por pensardes que conteriam meu jubiloso assombro! Nenhum sopro dos vivos ferirá os que habitam além do véu da morte."

languagedialogue[10]="OHOHOH-oh...?" //(the divas’ ghosts surround her)

languagedialogue[11]="Os vivos né...?"

languagedialogue[12]="Não estou me sentindo tão viva..."

languagedialogue[13]="...Oh céus..."

//(beatdown ensues)

languagedialogue[14]="RENDO-ME! Suplico clemência! Assombrei este solar apenas para extravasar amargas aflições graças a vis ladrões que furtaram a herança sagrada de minha família!"

languagedialogue[15]="Sua herança de família...?"

languagedialogue[16]="Que nem a gente..."

languagedialogue[17]="Façamos... um acordo visto que nossas questões se entrelaçam.... Eu ressuscito a todos vós e em retorno vós restituís minha herança e também a vossa!"

languagedialogue[18]="Peraí como que você vai..."

//(Annamari brings them back to life putting their head back and using duct tape)

languagedialogue[19]="AI! Meu pescoço não tá confortável não..."

languagedialogue[20]="Então, onde que os ladrões foram, dama Annamari?"

languagedialogue[21]="Eles se espalharam pelas minhas portas assombradas... então cabe a vós escolher qual delas seguir."

cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;
}



}



