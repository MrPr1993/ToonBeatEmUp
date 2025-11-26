//background_
if cutscenePlaying=0
{
instance_create_depth(-999,-999,-1,oTextBox)

//brend=instance_create_depth(0,0,-10000,oCameoChar) with brend {anim=9999 sprite_index=bg_border2}

global.UnlockCutscene[19]=1 feats_check(43);

with oControl
{canSkipCutscene=0
CDtextT="THE PLANE'S GOING DOWN!\nWHAT YOU'LL DO?!"
CDtextA="GET THE PARACHUTES!"
CDtextB="JUMP OFF THE PLANE!"
CDtextC="USE THE HARPY!"

cutscenename=""
cutsceneline=""
}

SceneX=0
__view_set( e__VW.XView, 0, SceneX )
SceneY=0
__view_set( e__VW.XView, 0, SceneY )

actorscreen=instance_create_depth(160,480,-1,oCameoChar) with actorscreen
{sprite_index=spr_ending1a anim=9999 isDepth=0 depth=-3000 shadow=-1;
	x=0; y=0;
	
actor1=instance_create_depth(86,1709,-1,oCameoChar) with actor1
{sprite_index=spr_viva_cutscene image_index=0 anim=9999}
actor2=instance_create_depth(50,1449,-1,oCameoChar) with actor2
{sprite_index=spr_hina_point image_index=0 anim=9999}
actor3=instance_create_depth(46,1609,-1,oCameoChar) with actor3
{sprite_index=spr_bahati_cutscene image_index=1 anim=9999}
actor4=instance_create_depth(76,1889,-1,oCameoChar) with actor4
{sprite_index=spr_sofia_taunt3 image_index=0 anim=9999}
actor5=instance_create_depth(215,1709,-1,oCameoChar) with actor5
{sprite_index=spr_harpy_dizzy anim=9999 image_xscale=-1}
oCameoChar.x+=160;

x=0

specialdraw=function()
{
if scenetime<500
draw_sprite(spr_ending1b,0,0,0)

draw_sprite_ext(sprite_index,image_index,round(x),round(y),1,1,0,c_white,1)

if scenetime<500
draw_sprite(spr_ending1a,image_index,0,0)

if scenetime<120
draw_sprite_ext(spr_whitecol,0,0,0,88,88,0,c_black,1)
}

newscript=function()
{scenetime+=1;

if scenetime=120
{image_index=0
with oControl
{cutscenename="VIVA"
cutsceneline="...WHERE IS IT?"
if global.Language!=0 cutsceneline=languagedialogue[1]
PlaySound(snd_hitground) quakeFXTime=10
}
}

if scenetime=240
{image_index=1
with oControl
{cutscenename="VIVA"
cutsceneline="WHERE IS IT?!"
if global.Language!=0 cutsceneline=languagedialogue[2]
PlaySound(snd_hitground) quakeFXTime=10
}
}

if scenetime=320
{image_index=2
with oControl
{cutscenename=""
cutsceneline=""
PlaySound(snd_hitground) quakeFXTime=10
}
}

if scenetime=380
{image_index=2 musicplayonce(msc_intro)
with oControl
{cutscenename="VIVA"
cutsceneline="MY DIAMOND!"
if global.Language!=0 cutsceneline=languagedialogue[3]
}
}

if scenetime=500
{sprite_index=spr_ending1c
vspeed=-0.05
with oControl
{cutscenename="SOFIA"
cutsceneline="WE GOT OUR STUFF BACK!"
if global.Language!=0 cutsceneline=languagedialogue[4]
}
}

if scenetime=740
{
with oControl
{cutscenename="BAHATI"
cutsceneline="SAFE AND SOUND!"
if global.Language!=0 cutsceneline=languagedialogue[5]
}
}

if scenetime=960
{
with oControl
{cutscenename="HINA"
cutsceneline="SO MUCH WORK... BUT IT WAS WORTH IT!"
if global.Language!=0 cutsceneline=languagedialogue[6]
}
}

if scenetime=1200
{vspeed=0; PlaySound(snd_carengine)
sprite_index=spr_divasseecops image_index=0 x=0 y=0

with oControl
{cutscenename=""
cutsceneline=""
}
}

if scenetime=1300
{scenetime=1400 
with actor1 {sprite_index=spr_divasseecops hspeed=4 image_index=1 x=-320 y=0 shadow=-1 }
with actor2 {sprite_index=spr_divasseecops hspeed=-6 image_index=2 x=600 y=0 shadow=-1 }
}

if scenetime=1475 {actor1.hspeed=0 PlaySound(snd_carengine2)}
if scenetime=1500 {scenetime=1760 actor2.hspeed=0 PlaySound(snd_carengine2)}



if scenetime=1860
{vspeed=0 y=0
actor1.y=9999
actor2.y=9999 PlaySound(snd_break2)
sprite_index=spr_incomingcops image_index=0
with oControl
{cutscenename="CHIEF" quakeFXTime=10
cutsceneline="ALRIGHT, ALRIGHT, EVERYONE, SPREAD OUT!"
if global.Language!=0 cutsceneline=languagedialogue[7]
}
}

if scenetime=2100
{vspeed=0 y=0 sprite_index=spr_incomingcops image_index=1
with oControl
{cutscenename="VIVA"
cutsceneline="OH, SO THE CAVALRY'S FINALLY HERE. WHERE HAVE ALL OF YOU BEEN?"
if global.Language!=0 cutsceneline=languagedialogue[8]
}
}

//////////////////////////
//////////ENDING 2 - JAIL
if scenetime=2400 and global.Ending=1
{scenetime=0 specialdraw=-1;
audio_stop_all()
vspeed=0 x=0 y=0
actor1.y=9999
actor2.y=9999 PlaySound(snd_break2)
sprite_index=spr_vivacuffs image_index=0

with oControl
{cutscenename="" quakeFXTime=10
cutsceneline=""
}

with oControl
switch(global.Language)
{
case 2: ////Portuguese
languagedialogue[1]="O quê?! Por que estamos sendo algemadas?!"
languagedialogue[2]="Vocês estão presas por várias acusações de invasão e destruição de propriedade privada e pública!"
languagedialogue[3]=" Vocês têm o direito de permanecerem caladas!"
languagedialogue[4]="Puxa... Nós fizemos uma bagunça e tanto..."
languagedialogue[5]="So pode ser brincadeira..."
languagedialogue[6]="Você acha que eles permitem espetáculos na prisão?"
languagedialogue[7]="ESPERA! DEVE HAVER ALGUM ERRO! FORAM OS LADRÕES QUE DESTRUÍRAM TUDO! ESPEREM, SEUS IDIOTAS!!!"
languagedialogue[8]="QUERO UM ADVOGADO! VOCÊS TÊM IDEIA DE QUEM EU SOU?! QUERO FALAR COM O SEU SUPERVISOR!"
//cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;
}

newscript=function()
{
scenetime++;

if scenetime=120
{musicplayonce(msc_countdown)
with oControl
{cutscenename="VIVA"
cutsceneline="W-What?! Why are WE getting cuffed?!"
if global.Language!=0 cutsceneline=languagedialogue[1]
}
}

if scenetime=340
{
sprite_index=spr_divasarrest
with oControl
{cutscenename="CHIEF"
cutsceneline="You ladies are under arrest for numerous counts of trespassing and destruction of private AND public property!"
if global.Language!=0 cutsceneline=languagedialogue[2]
}
}

if scenetime=780
{
with oControl
{cutscenename="CHIEF"
cutsceneline="You have the right to remain silent!!"
if global.Language!=0 cutsceneline=languagedialogue[3]
}
}

if scenetime=clamp(scenetime,440,1299)
if sprite_index=spr_divasarrest {x-=0.1 x=clamp(x,-150,0)}

if scenetime=1000
{
with oControl
{cutscenename="BAHATI"
cutsceneline="Oh... We DID do quite a bit of damage..."
if global.Language!=0 cutsceneline=languagedialogue[4]
}
}

if scenetime=1200
{
with oControl
{cutscenename="SOFIA"
cutsceneline= "You've gotta be kidding..."
if global.Language!=0 cutsceneline=languagedialogue[5]
}
}

if scenetime=1350
{
sprite_index=spr_divasinvan x=0 y=0 oControl.quakeFXTime=10 PlaySound(snd_break2)
with oControl
{cutscenename=""
cutsceneline= ""
}
}

if scenetime=1400
{
with oControl
{cutscenename="HINA"
cutsceneline= "Do you think they'll let us perform for the prison?"
if global.Language!=0 cutsceneline=languagedialogue[6]
}
}

if scenetime=1650
{
with oControl
{cutscenename="VIVA"
cutsceneline= "WAIT! THERE HAS TO BE SOME MISTAKE! THE THIEVES WERE THE ONES WRECKING EVERYTHING! WAIT, YOU MORONS!!!"
if global.Language!=0 cutsceneline=languagedialogue[7]
}
}

if scenetime=2000
{
with oControl
{cutscenename="VIVA"
cutsceneline= "I WANT A LAWYER! DO YOU HAVE ANY IDEA WHO I AM?! I WANT YOUR SUPERVISOR!"
if global.Language!=0 cutsceneline=languagedialogue[8]
}
}

if scenetime=2200
{actor1.depth=depth-1 actor2.depth=depth-1
with actor1 {sprite_index=spr_policedoor image_index=0 x=-160 y=0 shadow=-1 }
with actor2 {sprite_index=spr_policedoor image_index=1 x=320+160 y=0 shadow=-1 }
}

if scenetime=clamp(scenetime,2200,9999)
{
if actor1.x<-1 actor1.x+=8 else {actor1.x=0 if actor1.specialcheck[9]=0 with actor1 {audio_stop_all() specialcheck[9]=1 PlaySound(snd_hitgroundmetal) oControl.quakeFXTime=10}}

actor2.x=160-actor1.x
}

if scenetime=2350
{CutsceneStage=rm_creditscene
with oControl
stageEndFX=1
}

//cutscenename="VIVA" cutsceneline= "W-What?! Why are WE getting cuffed?!"
//cutscenename="COP" cutsceneline= "You ladies are under arrest for numerous counts of trespassing and destruction of private AND public property! You have the right to remain silent!"
//cutscenename="BAHATI" cutsceneline= "Oh... We DID do quite a bit of damage..."
///cutscenename="SOFIA" cutsceneline= "You've gotta be kidding..."
//Yeet into police truck
//cutscenename="HINA" cutsceneline= "Do you think they'll let us perform for the prison?"
//cutscenename="VIVA" cutsceneline= "WAIT! THERE HAS TO BE SOME MISTAKE! THE THIEVES WERE THE ONES WRECKING EVERYTHING! WAIT, YOU MORONS!!!"
//cutscenename="VIVA" cutsceneline= "I WANT A LAWYER! DO YOU HAVE ANY IDEA WHO I AM?! I WANT YOUR SUPERVISOR!"


}
}



///////////////////////////////////
if scenetime=2400
{vspeed=0 y=0
with oControl
{cutscenename="CHIEF"
cutsceneline="DON'T BLAME US, MA'AM. WE'VE BEEN BUSY TRACKING DOWN THE MOOKS ALL THE WAY HERE."
if global.Language!=0 cutsceneline=languagedialogue[9]
}
}

if scenetime=2700
{vspeed=0 y=0
scenetime=2800

with oControl
{cutscenename="CHIEF"
cutsceneline="NOW LET US TAKE IT FROM HERE."
if global.Language!=0 cutsceneline=languagedialogue[10]
}
}

if scenetime=2900
{
flashend=instance_create_depth(0,0,-1,oCameoChar) with flashend
{shadow=-1 image_alpha=0 image_blend=c_black sprite_index=spr_whitecol isDepth=0 depth=-3010 image_xscale=99 image_yscale=99 anim=9999 newscript=function() {image_alpha+=0.025} }

}

if scenetime=3000
{
with flashend
{newscript=function() {image_alpha-=0.025}}
	
vspeed=0 x=0 y=0 hspeed=-0.1 sprite_index=spr_copssearch image_index=0
with oControl
{cutscenename=""
cutsceneline=""
}
}

if scenetime=3600
{vspeed=0 y=0 hspeed=0 x=0 scenetime=3700

sprite_index=spr_nowthatsover image_index=0
	
with oControl
{cutscenename="HINA"
cutsceneline="WELL NOW THAT'S OVER."
if global.Language!=0 cutsceneline=languagedialogue[11]
}
}

if scenetime=3900
{scenetime=4200
with oControl
{cutscenename="BAHATI"
cutsceneline="NEXT TIME WE'LL HAVE TO KEEP THEM UNDER TIGHTER WRAPS."
if global.Language!=0 cutsceneline=languagedialogue[12]
}
}

////////////////////////////////////////////////
/////////////////ENDING 3 - ANGER
////////////
////////////

if scenetime=2400 and global.Ending=2
{
with oControl
switch(global.Language)
{
case 2: ////Portuguese
languagedialogue[1]="O quê?! Por que estamos sendo algemadas?!"
languagedialogue[2]="Vocês estão presas por várias acusações de invasão e destruição de propriedade privada e pública!"
languagedialogue[3]=" Vocês têm o direito de permanecerem caladas!"
languagedialogue[4]="Puxa... Nós fizemos uma bagunça e tanto..."
languagedialogue[5]="So pode ser brincadeira..."
languagedialogue[6]="Você acha que eles permitem espetáculos na prisão?"
languagedialogue[7]="ESPERA! DEVE HAVER ALGUM ERRO! FORAM OS LADRÕES QUE DESTRUÍRAM TUDO! ESPEREM, SEUS IDIOTAS!!!"
languagedialogue[8]="QUERO UM ADVOGADO! VOCÊS TÊM IDEIA DE QUEM EU SOU?! QUERO FALAR COM O SEU SUPERVISOR!"

//Bahati: "É MELHOR MANTER NOSSOS OLHOS AFIADOS PARA A PRÓXIMA VEZ."

//Viva: “Sim. Sim...” (fist shaking)

//Hina: “...Viva?”

//Viva: “Pois é... Todos aqueles... Obstáculos... Incluindo todas as vezes que fui espancada... Humilhada...”

//(Viva loses it)
//Viva: POR QUE SEMPRE COMIGO?! O QUE EU FIZ PARA MERECER TANTO CASTIGO?!”

//Bahati: “Essa não... Ela está perdendo o controle...”

//(gets closer to camera)
//Viva: “É CLARO QUE ESTOU PERDENDO O CONTROLE!!! POR QUE VOCÊS TRÊS NÃO SOFRERAM TANTO QUANTO EU?!”

//Sofia: “Se acalma! Isso Já é passado!”

//Viva: (calms down) “verdade... Você está certa... Mas...”
//Viva: (gets angry again) “EU NÃO TERIA ME MACHUCADO TANTO SE VOCÊ TIVESSEM ESCOLHIDO UMA ROTA MELHOR!!! VEM AQUI!!!”

//(Viva attacks the camera)


//cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;
}
}

//All's Well That Ends Well dialogue until after "OUR TREASURES!!!"
//cutscenename="BAHATI" cutsceneline= "We can finally rest easy, after all those obstacles..."
//cutscenename="VIVA" cutsceneline= "Right... All those... Obstacles... Including all the times I got smacked around... Humiliated... WHY WAS IT ALWAYS ME?! WHAT DID I DO TO DESERVE ALL THAT PAIN?!"
//cutscenename="HINA" cutsceneline= "Uh oh... She's losing it..."
//cutscenename="VIVA" cutsceneline= "YOU'RE DAMN RIGHT I'M LOSING IT!!! HOWCOME YOU THREE DIDN'T GET HORRIBLY BRUTALIZED AS MUCH AS I DID?!"
//cutscenename="SOFIA" cutsceneline= "Calm down! It's all over now!"
//cutscenename="VIVA" cutsceneline= "Right... You're right... Still..."
//Viva is rapidly approaching your location
//cutscenename="VIVA" cutsceneline= "I WOULDN'T HAVE GOTTEN ALL THOSE LUMPS IF YOU PICKED A BETTER ROUTE!!! C'MERE!!!"
//Camera crash
//cutscenename="VIVA" cutsceneline= "OOF!"

////////////
////////////
//////////////ENDING 1
if scenetime=4550
{vspeed=0 y=0 sprite_index=spr_nowthatsover image_index=1
with oControl
{cutscenename="VIVA"
cutsceneline="And uh..."
if global.Language!=0 cutsceneline=languagedialogue[13]
}
}

if scenetime=4750 ////Cleaning up
{vspeed=0 y=0 sprite_index=spr_nowthatsover image_index=2
	
with oControl
{cutscenename=""
cutsceneline=""
}
}

if scenetime=clamp(scenetime,4750,4950)
{
if specialcheck[9]=0 {dust_make(random_range(64,320-64),random_range(64,320-64),0,0,0,0)
with dustmk {sprite_index=spr_dustmid isDepth=0 depth=-3002} 

specialcheck[9]=2

if specialcheck[8]=0 {PlaySoundNoStack(snd_steal) specialcheck[8]=4} else specialcheck[8]-=1;

} else specialcheck[9]-=1
}

if scenetime=4950
{vspeed=0 y=0 sprite_index=spr_nowthatsover image_index=3
with oControl
{cutscenename="VIVA"
cutsceneline="So girls! What do you want to do now?"
if global.Language!=0 cutsceneline=languagedialogue[14]
}
}

if scenetime=5400
{vspeed=0 y=0
with oControl
{cutscenename="SOFIA"
cutsceneline="Chica, you know what we do."
if global.Language!=0 cutsceneline=languagedialogue[15]
}
}

if scenetime=5700
{vspeed=0 y=0 scenetime=5850
with oControl
{cutscenename="VIVA"
cutsceneline="Well how about it? Ready to get the show back on?"
if global.Language!=0 cutsceneline=languagedialogue[16]
}
}

if scenetime=5900
{
with flashend
{image_alpha=0 image_blend=c_black sprite_index=spr_whitecol isDepth=0 depth=-3010 image_xscale=99 image_yscale=99 anim=9999 newscript=function() {image_alpha+=0.01} }

}

if scenetime=6300
{PlaySound(snd_1up)
sprite_index=spr_divasletsparty

with flashend {image_alpha=1 image_blend=c_white newscript=function() {image_alpha-=0.1}}	

vspeed=0 y=-192
with oControl
{cutscenename="DIVAS"
cutsceneline="LET'S PARTY!"
if global.Language!=0 cutsceneline=languagedialogue[17]
}

}
if scenetime>=6300 {y=lerp(y,-32,0.1)}

if scenetime=6600
{CutsceneStage=rm_creditscene
with oControl
stageEndFX=1
}



///-All's Well that Ends Well-
//cutscenename="VIVA" cutsceneline= "Urgh.... That was a rough landing... Anyone find our stuff?"
//cutscenename="BAHATI" cutsceneline= "Be patient, there's alot of rubble to dig through."
//cutscenename="HINA" cutsceneline= "I called the police to take the baddies away!"
//cutscenename="SOFIA" cutsceneline= "Aha! Here we are!"
//Gleam
//cutscenename="DIVAS" cutsceneline= "OUR TREASURES!!!"
//cutscenename="VIVA" cutsceneline= "Finally! My beautiful diamond, safe and sound!" 
//cutscenename="HINA" cutsceneline= "So much work... But it was worth it!"
//cutscenename="BAHATI" cutsceneline= "Next time we'll have to keep them under tighter wraps."
//cutscenename="SOFIA" cutsceneline= "Well how about it? Ready to get the show back on?"
//cutscenename="DIVAS" cutsceneline= "LET'S PARTY!!!"

//-Viva Las Rage-as-
//All's Well That Ends Well dialogue until after "OUR TREASURES!!!"
//cutscenename="BAHATI" cutsceneline= "We can finally rest easy, after all those obstacles..."
//cutscenename="VIVA" cutsceneline= "Right... All those... Obstacles... Including all the times I got smacked around... Humiliated... WHY WAS IT ALWAYS ME?! WHAT DID I DO TO DESERVE ALL THAT PAIN?!"
//cutscenename="HINA" cutsceneline= "Uh oh... She's losing it..."
//cutscenename="VIVA" cutsceneline= "YOU'RE DAMN RIGHT I'M LOSING IT!!! HOWCOME YOU THREE DIDN'T GET HORRIBLY BRUTALIZED AS MUCH AS I DID?!"
//cutscenename="SOFIA" cutsceneline= "Calm down! It's all over now!"
//cutscenename="VIVA" cutsceneline= "Right... You're right... Still..."
//Viva is rapidly approaching your location
//cutscenename="VIVA" cutsceneline= "I WOULDN'T HAVE GOTTEN ALL THOSE LUMPS IF YOU PICKED A BETTER ROUTE!!! C'MERE!!!"
//Camera crash
//cutscenename="VIVA" cutsceneline= "OOF!"
//-Jail Songbirds-
//All's Well That Ends Well dialogue for first 4 lines. Suddenly cuffed.
//cutscenename="VIVA" cutsceneline= "W-What?! Why are WE getting cuffed?!"
//cutscenename="COP" cutsceneline= "You ladies are under arrest for numerous counts of trespassing and destruction of private AND public property! You have the right to remain silent!"
//cutscenename="BAHATI" cutsceneline= "Oh... We DID do quite a bit of damage..."
///cutscenename="SOFIA" cutsceneline= "You've gotta be kidding..."
//Yeet into police truck
//cutscenename="HINA" cutsceneline= "Do you think they'll let us perform for the prison?"
//cutscenename="VIVA" cutsceneline= "WAIT! THERE HAS TO BE SOME MISTAKE! THE THIEVES WERE THE ONES WRECKING EVERYTHING! WAIT, YOU MORONS!!!"
//cutscenename="VIVA" cutsceneline= "I WANT A LAWYER! DO YOU HAVE ANY IDEA WHO I AM?! I WANT YOUR SUPERVISOR!"

//Door shut



if scenetime=7600
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

CutsceneStage=rm_creditscene
canSkipCutscene=2
cutscenePlaying=1

with oControl
switch(global.Language)
{
case 1: ////Portuguese
languagedialogue[1]="¿…DÓNDE ESTÁ?"
languagedialogue[2]="¿¡DÓNDE ESTÁÁÁ?!"
languagedialogue[3]="¡MI DIAMANTE!"
languagedialogue[4]="¡RECUPERAMOS NUESTRAS COSAS!"
languagedialogue[5]="¡SANAS Y SALVAS!"
languagedialogue[6]="TANTÍSIMO TRABAJO… ¡PERO VALIÓ LA PENA!"
languagedialogue[7]="¡A VER, A VER, TODOS A SUS POSICIONES!"
languagedialogue[8]="OH, ASÍ QUE POR FIN LLEGA LA CABALLERÍA. ¿DÓNDE HAN ESTADO?"
languagedialogue[9]="NO NOS CULPE, SEÑORA. ANDÁBAMOS SIGUIENDO A ESOS MATONES HASTA AQUÍ."
languagedialogue[10]="AHORA DÉJENOS A NOSOTROS."
languagedialogue[11]="BUENO, SE ACABÓ."
languagedialogue[12]="LA PRÓXIMA VEZ LOS VIGILAMOS MEJOR."
languagedialogue[13]="Y eh..."
languagedialogue[14]="Entonces, chicas, ¿qué quieren hacer ahora?"
languagedialogue[15]="Chica… tú sabes."
languagedialogue[16]="Bueno, ¿y qué tal? ¿Listas para retomar el show?"
languagedialogue[17]="¡¡A FIESTAR!!"
//cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;
case 2: ////Portuguese
languagedialogue[1]="... ONDE ESTÁ?"
languagedialogue[2]="ONDE ESTÁ?!"
languagedialogue[3]="MEU DIAMANTE!"
languagedialogue[4]="RECUPERAMOS NOSSAS COISAS!"
languagedialogue[5]="SÃS E SALVAS!"
languagedialogue[6]="BAITA TRABALHEIRA... MAS VALEU A PENA!"
languagedialogue[7]="TUDO BEM, TUDO BEM, PESSOAL, CIRCULANDO!"
languagedialogue[8]="AH, ENFIM CHEGOU A CAVALARIA. ONDE VOCÊS ESTAVAM?"
languagedialogue[9]="NÃO NOS CULPE, SENHORA. ESTÁVAMOS OCUPADOS RASTREANDO OS BANDIDOS ATÉ AQUI."
languagedialogue[10]="AGORA DEIXEM CONOSCO."
languagedialogue[11]="BEM, AGORA CHEGOU AO FIM."
languagedialogue[12]="É MELHOR MANTER NOSSOS OLHOS AFIADOS PARA A PRÓXIMA VEZ."
languagedialogue[13]="e hmm..."
languagedialogue[14]="Então, meninas! O que vocês querem fazer agora?"
languagedialogue[15]="Chica, você sabe o que fazemos."
languagedialogue[16]="Bem, o que acham? Prontas para voltar ao espetáculo?"
languagedialogue[17]="HOJE É FESTA!"
//cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;
}

}


arcade_saving(rm_opening)