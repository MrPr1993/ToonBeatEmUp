//background_
if cutscenePlaying=0
{
instance_create_depth(-999,-999,-1,oTextBox)

global.UnlockCutscene[11]=1 feats_check(43);

with oControl
{
CDtextT="WHAT RIDE WILL!\nYOU PICK?"
CDtextA="THE CLAM!"
CDtextB="THE SEAHORSES!"
CDtextC="THE SPOUT"

cutscenename=""
cutsceneline=""
}

SceneX=0
__view_set( e__VW.XView, 0, SceneX )
SceneY=0
__view_set( e__VW.XView, 0, SceneY )

actorscreen=instance_create_depth(160,480,-1,oCameoChar) with actorscreen
{sprite_index=spr_cutscene5a0 image_speed=0.25 anim=9999 isDepth=0 depth=-3000 shadow=-1;

actorBG=instance_create_depth(0,0,-1,oCameoChar) with actorBG
{sprite_index=spr_cutscene5a anim=9999 isDepth=0 depth=16777210 shadow=-1;}

actor1=instance_create_depth(1186,170,-1,oCameoChar) with actor1
{sprite_index=spr_viva_cutscene image_index=0 anim=9999}
actor2=instance_create_depth(1150,144,-1,oCameoChar) with actor2
{sprite_index=spr_hina_point image_index=0 anim=9999}
actor3=instance_create_depth(1146,160,-1,oCameoChar) with actor3
{sprite_index=spr_bahati_cutscene image_index=1 anim=9999}
actor4=instance_create_depth(1176,188,-1,oCameoChar) with actor4
{sprite_index=spr_sofia_taunt3 image_index=0 anim=9999}
actor5=instance_create_depth(11215,170,-1,oCameoChar) with actor5
{sprite_index=spr_harpy_dizzy anim=9999 image_xscale=-1}

actor6=instance_create_depth(11215+120,170,-1,oCameoChar) with actor6
{sprite_index=spr_mermaidcutscene_clam anim=9999 image_xscale=-1}

actor7=instance_create_depth(11215,180,-1,oCameoChar) with actor7
{sprite_index=spr_mermaidcutscene_seahorse anim=9999 image_speed=0.2 image_xscale=-1}

actor8=instance_create_depth(11215-110,170,-1,oCameoChar) with actor8
{sprite_index=spr_mermaidcutscene_pool shadow=-1; anim=9999 isDepth=0 depth=1000 image_xscale=-1}



if global.CutsceneSkip=0 with oControl canSkipCutscene=1

with oControl
{musicplaystart(msc_gallery)
cutscenename="PRINCE" cutsceneline= "Hahahahahaha! Congratulations on a fight well won, my dear Viva and friends!"
}

newscript=function()
{
scenetime+=1;


if scenetime<=2
if global.CutsceneSkip=1 {audio_stop_all() global.CutsceneSkip=0 canSkipCutscene=1 scenetime=6000}

if scenetime<340 {y=lerp(y,240,0.1)}
if scenetime=340
{sprite_index=spr_cutscene5a1 actorBG.sprite_index=spr_cutscene5a image_speed=0 image_index=0
with oControl
{
cutscenename="PRINCE"
cutsceneline="Don't be shy, my guests! Eat up!"
if global.Language!=0 cutsceneline=languagedialogue[2]
} x=0
y=0 vspeed=-0.2
}

if scenetime=540
{sprite_index=spr_cutscene5a2 image_index=0 vspeed=0 x=0 y=0 actorBG.image_index=1
with oControl
{
cutscenename="SOFIA"
cutsceneline= "Viva you never told us this royal fishman hunk was your cousin! What was up with you?"
if global.Language!=0 cutsceneline=languagedialogue[3]
}

specialdraw=function()
{
if scenetime<1260
draw_sprite(sprite_index,0,x,y)
else draw_sprite(sprite_index,1,x,y)
draw_sprite(spr_cutscene5a2,2,x+240+specialcheck[0],y)
}
}
if scenetime=clamp(scenetime,1260,1300) specialcheck[0]-=3;

if scenetime=1000
{with oControl
{cutscenename="VIVA" cutsceneline= "Simple, I find him obnoxious."
	if global.Language!=0 cutsceneline=languagedialogue[4]
	}
}

if scenetime=1260
{
actorBG.hspeed=-0.25	
with oControl
{image_index=1
cutscenename="PRINCE" cutsceneline= "Oh, my slim cousin of mine..."
if global.Language!=0 cutsceneline=languagedialogue[5]
}
hspeed=-2 
}

if scenetime=1300 {hspeed=0 actorBG.hspeed=0}

if scenetime=1540
{sprite_index=spr_cutscene5a3 image_index=1 vspeed=0 x=0 y=0 specialcheck[0]=0 actorBG.image_index=2 actorBG.x=0;
with oControl
{
cutscenename="PRINCE" cutsceneline= "I'm terribly sorry that my people attacked you so suddenly, but they needed to test you!"
if global.Language!=0 cutsceneline=languagedialogue[6]
}

specialdraw=function()
{
if scenetime=clamp(scenetime,1540,2430) {specialcheck[0]++; if specialcheck[0]>=30 image_index+=0.1; if image_index=3 image_index=1}
specialcheck[2]++; if specialcheck[2]>=80 {specialcheck[2]=0 specialcheck[3]++; specialcheck[4]=4}
draw_sprite(spr_cutscene5a4,specialcheck[3],320,specialcheck[4]) specialcheck[4]=lerp(specialcheck[4],0,0.1)
draw_sprite(spr_cutscene5a3,0,0,0)
draw_sprite(sprite_index,image_index,0,0)
}
}

if scenetime=2040
{
with oControl
{cutscenename="VIVA" cutsceneline= "As you usually do to protect your kingdom, huh?"
	if global.Language!=0 cutsceneline=languagedialogue[7]
	}
}

if scenetime=2340
{
with oControl
{cutscenename="PRINCE" cutsceneline= "As a custom! This is a warrior's country after all."
	if global.Language!=0 cutsceneline=languagedialogue[8]
	}
}

if scenetime=2640
{image_index=3
with oControl
{cutscenename="PRINCE" cutsceneline= "Although... What brings you here anyway?"
	if global.Language!=0 cutsceneline=languagedialogue[9]
	}
}

if scenetime=2940
{
with oControl
{cutscenename="PRINCE" cutsceneline= "And how is that diamond I gave you, cousin?"
	if global.Language!=0 cutsceneline=languagedialogue[10]
	}
}

if scenetime=3140 {audio_stop_all() PlaySound(snd_splash5)}
if scenetime=clamp(scenetime,3140,3440) {
	
	image_index+=0.5; if image_index>=6 image_index=4}

if scenetime=3440
{
specialdraw=-1;

sprite_index=spr_cutscene5a2 image_index=3 x=0 y=0 actorBG.image_index=3
with oControl
{
cutscenename="VIVA" cutsceneline= "Oh yeah... I can... about that..."
if global.Language!=0 cutsceneline=languagedialogue[11]
}
}

if scenetime=3840
{
flashscreen=instance_create_depth(0,0,-1,oAlphaFadeFX) with flashscreen
{image_alpha=0 fadeSpd=0.02 isfading=1 image_xscale=99 image_yscale=99
sprite_index=spr_whitecol image_blend=c_black depth=-4000
}
}

if scenetime=clamp(scenetime,3960,4040) if flashscreen.image_alpha>=2
{x=160; y=320; sprite_index=spr_cutscene5a5; image_index=0; actorBG.image_index=4
	
PlaySound(snd_explosion2) PlaySound(msc_mystery)
	
with flashscreen {fadeSpd=0 image_alpha=0}
scenetime=4050 actorBG.image_index=4

with oControl
{quakeFXTime=10;
cutscenename="PRINCE" cutsceneline= "Sweet scallops this is terrible! That diamond is enchanted! Terrible things could happen with the wrong hands!"
if global.Language!=0 cutsceneline=languagedialogue[12]
}
} else scenetime=3970;

if scenetime=clamp(scenetime,3970,4390)
{y=lerp(y,192,0.1)
}

if scenetime=4400
{image_index=1; actorBG.image_index=5 audio_stop_all()
with oControl
{
cutscenename="HINA" cutsceneline= "Does he always do that?"
if global.Language!=0 cutsceneline=languagedialogue[13]
}
}

if scenetime=4600
{image_index=2
with oControl
{
cutscenename="VIVA" cutsceneline= "Yeah, most of the time. Prince, do you have any way to help us?"
if global.Language!=0 cutsceneline=languagedialogue[14]
}
}

if scenetime=4900
{specialcheck[0]=321; 
with oControl
{
cutscenename="PRINCE" cutsceneline= "Of course! Quickly! We must pursue those fiends posthaste! My servants and I will send you on your way!"
if global.Language!=0 cutsceneline=languagedialogue[15]
}

specialdraw=function()
{
draw_self();

draw_sprite_ext(spr_whitecol,0,specialcheck[0],0,21,20,0,c_black,1)
}

}

if scenetime=clamp(scenetime,5500,5600)
{scenetime=5540
specialcheck[0]-=8;
if specialcheck[0]<=0 {scenetime=6000-60 with oControl canSkipCutscene=0}
}

if scenetime=6000
{actorBG.sprite_index=mask_none
sprite_index=mask_none

with actor1 {x=0; image_speed=0.25 sprite_index=spr_viva_move; hspeed=2}
with actor2 {x=0; image_speed=0.25 sprite_index=spr_hina_move; hspeed=2}
with actor3 {x=0; image_speed=0.25 sprite_index=spr_bahati_move; hspeed=2}
with actor4 {x=0; image_speed=0.25 sprite_index=spr_sofia_move; hspeed=2}
with actor5 {x=60; image_speed=0.25 sprite_index=spr_prince_move; image_xscale=1 hspeed=2}

with actor6 {x=400+56}
with actor7 {x=520 }
with actor8 {x=640-32}

with oControl
{
cutscenename="PRINCE" cutsceneline= "Alright, cousin. You have a choice between these rides. Which one will you take?"
if global.Language!=0 cutsceneline=languagedialogue[16]
}
}

if scenetime=6120
{
with actor1 {image_speed=0 sprite_index=spr_viva_stand; hspeed=0}
with actor2 {image_speed=0 sprite_index=spr_hina_stand; hspeed=0}
with actor3 {image_speed=0 sprite_index=spr_bahati_stand; hspeed=0}
with actor4 {image_speed=0 sprite_index=spr_sofia_stand; hspeed=0}
with actor5 {image_speed=0.25 sprite_index=spr_prince_talk; image_xscale=-1 hspeed=0}
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
CDtextT="¿QUÉ TRANSPORTE\nELEGIRÁN?"
CDtextA="¡LA ALMEJA!"
CDtextB="¡LOS CABALLITOS DE MAR!"
CDtextC="¡EL GEISER!"

languagedialogue[1]="¡Jajajajajaja! ¡Felicidades por una pelea bien ganada, mi querida Viva y amigas!"
languagedialogue[2]="¡No sean tímidas, invitadas mías! ¡Coman, coman!"
languagedialogue[3]= "Viva, ¡nunca nos dijiste que este rey pez tan guapote era tu primo! ¿Qué te pasaba?"
languagedialogue[4]="Simple: lo encuentro insoportable."
languagedialogue[5]="Oh, mi esbelta prima…"
languagedialogue[6]= "Lamento muchísimo que mi gente las atacara tan repentinamente, ¡pero debían ponerlas a prueba!"
languagedialogue[7]="Como siempre haces para proteger tu reino, ¿eh?"
languagedialogue[8]="¡Es tradición! Este es un país de guerreros, después de todo."
languagedialogue[9]="Aunque… ¿qué las trae por aquí?"
languagedialogue[10]="¿Y cómo está el diamante que te di, prima?"
languagedialogue[11]= "Ah sí… yo… sobre eso…"
languagedialogue[12]="¡Santas vieiras, esto es terrible! ¡Ese diamante está encantado! ¡Cosas horribles pueden pasar en manos equivocadas!"
languagedialogue[13]= "¿Siempre hace eso?"
languagedialogue[14]="Sí, casi siempre. Príncipe, ¿tienes alguna manera de ayudarnos?"
languagedialogue[15]="¡Por supuesto! ¡Rápido! ¡Debemos perseguir a esos malhechores cuanto antes! ¡Mis sirvientes y yo las enviaremos en su camino!"
languagedialogue[16]="Muy bien, prima. Tienes que elegir uno de estos transportes. ¿Cuál tomarán?"
cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;
case 2: ////Portuguese
CDtextT="QUAL MONTARIA VOCÊ\nVAI ESCOLHER?"
CDtextA="A AMÊIJOA!!"
CDtextB="O CAVALO-MARINHO!"
CDtextC="O GÊISER"

languagedialogue[1]="Hahahahaha! Meus parabéns pela bela conquista, minha querida Viva e suas amigas!"
languagedialogue[2]="Não sejam timidas, convidadas! deleitem-se!"
languagedialogue[3]="Viva você nunca disse pra gente que esse galã tritão da realeza era seu primo! O que você tinha na cabeça?"
languagedialogue[4]="Simples, ei acho ele um Mala sem alça."
languagedialogue[5]="Ora, minha magricela prima..."
languagedialogue[6]="Sinto muitissimo que meu povo tenha atacado vocês repentinamente, mas eles tinham que testá-las!"
languagedialogue[7]="É o seu jeito de proteger seu reino, não é?"
languagedialogue[8]="De facto! Afinal, este é um país de guerreiros."
languagedialogue[9]="Mas de todo modo... o que a traz aqui?"
languagedialogue[10]="E como está aquele diamante que eu lhe presenteei, prima?"
languagedialogue[11]="Ah, sim... Então... sobre isso..."
languagedialogue[12]="Santa Anfitrite, isso é terrível! Este diamante é encantado! Desastres podem ocorrer quando em mãos erradas!"
languagedialogue[13]="Ele é sempre assim?"
languagedialogue[14]="Sim, quase sempre. Príncipe, você tem alguma maneira de nos ajudar?"
languagedialogue[15]="Claro! Rápido! Precisamos perseguir esses demônios imediatamente! Meus servos e eu vamos ajudá-las a partir!"
languagedialogue[16]="Certo, priminha. Você pode escolher qulaquer uma dessa montarias. Qual você prefere?"
cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;
}

}
