///@description Decision Results
canSkipCutscene=2
actorscreen.scenetime=0
timeline_speed=0

///Decision 1
if cutsceneDecmode=0
{CutsceneStage=rm_stage4  ///Abandon Ship
with oControl {cutscenename="BAHATI" cutsceneline="LADIES, WE GOT TO BE HONEST TO THE SHERIFF SO WE'LL TELL THE TRUTH."}

with oControl
switch(global.Language)
{
case 2: ////Portuguese
languagedialogue[1]="CHEGA DE ESPETÁCULO, MADAMES, VAMOS FALAR A VERDADE PARA A XERIFE."
languagedialogue[2]="NENHUMA SANTA ALMA PAGOU O BILHETE?"
languagedialogue[3]="NÃO... NENHUMA."
languagedialogue[4]="HONESTIDADE?! É TUDO O QUE VOCÊ TEM?!"
languagedialogue[5]="FOI MAL EU NÃO ACHEI QUE ELA REALMENTE IRIA NOS JOGAR PRA FORA DOS TRILHOS DESSE JEITO!"
languagedialogue[6]="TANTO FAZ. JÁ NÃO TINHA COMO CONTINUAR NAQUELE TREM MESMO."
languagedialogue[7]="TAMO ONDE...?"
cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;
}

with actor3 {sprite_index=spr_bahati_talk image_speed=0.1}
with actorscreen newscript=function()
{scenetime+=1;
if scenetime=240{ x=0 y=0
with oControl {with actor3 {image_speed=0 image_index=0} with actor5 {sprite_index=spr_twoheads_shoot image_index=0} cutscenename="DOLORES" cutsceneline="NONE OF YOU HAVE TICKETS DO YOU?"
if global.Language!=0 cutsceneline=languagedialogue[2]
}
}

if scenetime=480{ x=0 y=0 
with oControl {with actor3 {sprite_index=spr_bahati_cutscene image_index=2} cutscenename="BAHATI" cutsceneline="NO... WE DON'T."
if global.Language!=0 cutsceneline=languagedialogue[3]
}



}

if scenetime=660
{
with oControl { cutscenename="" cutsceneline=""
SceneX=0
__view_set( e__VW.XView, 0, SceneX )
SceneY=0
__view_set( e__VW.XView, 0, SceneY )
}
image_blend=c_black sprite_index=spr_whitecol x=0 y=0
depth=-9999 image_xscale=320 image_yscale=240
}

if scenetime=740
{
layer_set_visible("SpookyPart1",1)
layer_set_visible("SpookyPart2",1)
layer_set_visible("SpookyPart3",1)

PlaySound(snd_viva11)
PlaySound(snd_hina10)
PlaySound(snd_bahati8)
PlaySound(snd_sofia9)

sprite_index=mask_none
	with oControl
	{with actorC1 x=999 with actorC2 x=999 with actor5 x=999
with actor1 {x=92-16 y=-8+64 y-=170 z-=80 vspeed=6.1 sprite_index=spr_viva_hit image_index=17 ground=0 spdZ=-8 hspeed=5/4 anim=9999
newscript=function(){if !ground spdZ+=0.45 z+=spdZ if z>=0 {if anim!=9998 {hspeed=0 PlaySoundNoStack(snd_hitground)} z=0 ground=1} if ground{vspeed=0 anim=9998}
if anim=9998	{frame_set(0,19,0.25) frame_set(1,20,0.25)	frame_set(2,21,0.1)
	frame_set(3,21,0.1)	frame_set(4,21,0.1)	frame_set(5,22,0.25) frame_set(6,23,0.25)
	if AnimFrame=7 {AnimFrame=8 image_xscale=-1 sprite_index=spr_viva_anger image_speed=0.25 image_index=0}}}}
	
with actor2 {x=92+16 y=-8+64 z-=80 y-=170 vspeed=5.9 sprite_index=spr_hina_hit image_index=17 ground=0 spdZ=-9 hspeed=6.5/4 anim=9999
newscript=function(){if !ground spdZ+=0.45 z+=spdZ if z>=0 {if anim!=9998 {hspeed=0 PlaySoundNoStack(snd_hitground)} z=0 ground=1} if ground{vspeed=0 anim=9998}
if anim=9998	{frame_set(0,19,0.25) frame_set(1,20,0.25)	frame_set(2,21,0.1)
	frame_set(3,21,0.1)	frame_set(4,21,0.1)	frame_set(5,22,0.25) frame_set(6,23,0.25)
	if AnimFrame=7 {AnimFrame=8 image_xscale=-1 sprite_index=spr_hina_point image_index=0}}}}
	
with actor3 {x=92-32 y=-8+64 z-=80 y-=170 vspeed=5.5 sprite_index=spr_bahati_hit image_index=17 ground=0 spdZ=-8.5 hspeed=4/4 anim=9999
newscript=function(){if !ground spdZ+=0.45 z+=spdZ if z>=0 {if anim!=9998 {hspeed=0 PlaySoundNoStack(snd_hitground)} z=0 ground=1} if ground{vspeed=0 anim=9998}
if anim=9998	{frame_set(0,19,0.25) frame_set(1,20,0.25)	frame_set(2,21,0.1)
	frame_set(3,21,0.1)	frame_set(4,21,0.1)	frame_set(5,22,0.25) frame_set(6,23,0.25)
	if AnimFrame=7 {AnimFrame=8 image_xscale=-1 sprite_index=spr_bahati_badend image_index=0}}}}
	
with actor4 {x=92+32 y=-8+64 z-=80 y-=170 vspeed=5 sprite_index=spr_sofia_hit image_index=17 ground=0 spdZ=-9 hspeed=5/4 anim=9999
newscript=function(){if !ground spdZ+=0.45 z+=spdZ if z>=0 {if anim!=9998 {hspeed=0 PlaySoundNoStack(snd_hitground)} z=0 ground=1} if ground{vspeed=0 anim=9998}
if anim=9998	{frame_set(0,19,0.25) frame_set(1,20,0.25)	frame_set(2,21,0.1)
	frame_set(3,21,0.1)	frame_set(4,21,0.1)	frame_set(5,22,0.25) frame_set(6,23,0.25)
	if AnimFrame=7 {AnimFrame=8 image_xscale=-1 sprite_index=spr_sofia_point image_index=0}}}}
}
	}

if scenetime>=930
if scenetime<=960 if oControl.actor1.ground=1 scenetime=970

if scenetime=980
{
with oControl {cutscenename="VIVA" cutsceneline="HONESTY?! THAT'S WHAT YOU GOT?!"
	if global.Language!=0 cutsceneline=languagedialogue[4]
	}
}

if scenetime=1200
{
with oControl {with actor1 {image_speed=0 image_index=0} with actor3 {image_speed=0.1} cutscenename="BAHATI" cutsceneline="I'M SORRY I DIDN'T THINK SHE COULD ACTUALLY THROW US OFF LIKE THAT EVEN IN THAT STATE!"
if global.Language!=0 cutsceneline=languagedialogue[5]
}
}

if scenetime=1620
{

with oControl {
with actor1 {sprite_index=spr_viva_talk2 image_index=0}
with actor2 {sprite_index=spr_hina_lookaround image_index=2}
with actor3 {image_speed=0 image_index=0}
with actor4 {sprite_index=spr_sofia_lookaround image_index=0}	
cutscenename="VIVA" cutsceneline="OH NO MATTER. WE HAD NO WAY TO STAY ON THE TRAIN ANYWAY."
if global.Language!=0 cutsceneline=languagedialogue[6]
}
}

if scenetime=1920
{
x=0 y=-48 vspeed=-0.5 depth=-999 isDepth=0 vspeed=0.1
sprite_index=spr_lookamansion image_blend=c_white image_xscale=1 image_yscale=1
with oControl {cutscenename="" cutsceneline=""}
}

if scenetime=2120
{

with oControl {cutscenename="VIVA" cutsceneline="WHERE ARE WE...?"
	if global.Language!=0 cutsceneline=languagedialogue[7]
	}
}

////END SCENE PART
if scenetime=2300 oControl.stageEndFX=1
}
}
//////
if cutsceneDecmode=1
{CutsceneStage=rm_stage3 ///Jump off the plane


with oControl {
SceneX=0
__view_set( e__VW.XView, 0, SceneX )
SceneY=0
__view_set( e__VW.XView, 0, SceneY )
}

with oControl
switch(global.Language)
{
case 2: ////Portuguese
languagedialogue[1]="ABRE O BICO! MEU RELÓGIO NÃO DOR-"
languagedialogue[2]="PÉ NA TÁBUA!"
languagedialogue[3]="BANDO DE CABA SAFAD-"
languagedialogue[4]="EU VOU PEGAR O CARVÃO!"
languagedialogue[5]="VOU BOTAR MAIS LENHA NA FOGUEIRA."
languagedialogue[6]="TEM CERTEZA QUE VOCÊS SABEM O QUE ESTÃO FAZENDO?!"
languagedialogue[7]="AHHHHH NÃO TEMOS NADICA DE NADA!"
languagedialogue[8]="AAAAAAAAAAAAAAAAAAAHHHHHHH!!!!"
//cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;
}

with actorscreen {isDepth=0 x=0 y=0 depth=-9999 specialcheck[0]=-320 specialcheck[1]=-320 specialcheck[2]=-320 specialcheck[3]=-320
	
newscript=function()
{scenetime+=1;
if scenetime=60{ x=0 y=0
with oControl {cutscenename="DOLORES" cutsceneline="C'MON! I DON'T HAVE ALL DAY AND-"
	if global.Language!=0 cutsceneline=languagedialogue[1]
	}
}
if scenetime=140{ x=0 y=0
with oControl {cutscenename="VIVA" cutsceneline="QUICK RUSH EM'!"
	if global.Language!=0 cutsceneline=languagedialogue[2]
	}

with oControl
{PlaySound(snd_swing5)
with actor1 {sprite_index=spr_viva_run image_speed=0.25 hspeed=4}
with actor2 {sprite_index=spr_hina_run image_speed=0.25 hspeed=4}
with actor3 {sprite_index=spr_bahati_run image_speed=0.25 hspeed=4}
with actor4 {sprite_index=spr_sofia_run image_speed=0.25 hspeed=4}

	with actor5 {sprite_index=spr_twoheads_hit image_index=24}
	with actorC1 {sprite_index=spr_cowboy_hit image_index=24}	
	with actorC2 {sprite_index=spr_cowboy_hit image_index=24}

}

}

if scenetime=180{ x=0 y=0
	with oControl
	{quakeFXTime=10 PlaySound(snd_hit) PlaySound(snd_twoheads1) PlaySound(snd_enemy3)
	with actor5 {sprite_index=spr_twoheads_hit image_index=24}
	with actorC1 {sprite_index=spr_cowboy_hit image_index=24}	
	with actorC2 {sprite_index=spr_cowboy_hit image_index=24}	
	
with oCameoChar {
if sprite_index=spr_twoheads_hit or sprite_index=spr_cowboy_hit {spdZ=-9
newscript=function()
{hspeed=-8
image_index=15 spdZ+=0.45 z+=spdZ; image_speed=0.2
}
}
}
	
	}

with oControl {
	flashscreen=instance_create_depth(0,0,-1,oAlphaFadeFX) with flashscreen
{image_alpha=0 fadeSpd=0.05 isfading=1 image_xscale=99 image_yscale=99
sprite_index=spr_whitecol image_blend=c_black depth=-4000
}
	
	cutscenename="DOLORES" cutsceneline="YA NO GOOD-"
	if global.Language!=0 cutsceneline=languagedialogue[3]
	}}

if scenetime=270
with oControl
{with flashscreen instance_destroy();
with BLACKFX
{y=0 hspeed=0 sprite_index=spr_allblackscreen
x=-1
}
}
if scenetime=300{


with oCameoChar {x=-999 y=-999}	

with oControl
with BLACKFX
{
layer_set_visible("TrainPart1",0)
layer_set_visible("TrainPart2",0)
layer_set_visible("Sky2",1)
	
y=0 hspeed=-4 image_xscale=1
x=0
}

x=-500*4 y=193 sprite_index=spr_trainzoom hspeed=0.5*4

specialdraw=function() {
draw_sprite(sprite_index,0,x+320*0,y)
draw_sprite(sprite_index,1,x+320*1,y)
draw_sprite(sprite_index,2,x+320*2,y)
draw_sprite(sprite_index,3,x+320*3,y)
draw_sprite(sprite_index,4,x+320*4,y)
draw_sprite(sprite_index,5,x+320*5,y)
}

with oControl {cutscenename="SOFIA" cutsceneline="I CALL DIBS ON THE COAL!"
	if global.Language!=0 cutsceneline=languagedialogue[4]
	}}

if scenetime=420{
with oControl {cutscenename="HINA" cutsceneline="I'LL GIVE IT MORE FIRE."
	if global.Language!=0 cutsceneline=languagedialogue[5]
	}}

if scenetime=540{
with oControl {cutscenename="BAHATI" cutsceneline="HEY ARE YOU SURE YOU KNOW WHAT YOU'RE DOING?!"
	if global.Language!=0 cutsceneline=languagedialogue[6]
	}}

if scenetime=720{ hspeed=3*4 PlaySound(snd_explosion) PlaySoundNoStackPitch(snd_train,0.8)
with oControl {cutscenename="VIVA" cutsceneline="AHHHHH WE DON'T WE DON'T!"
	if global.Language!=0 cutsceneline=languagedialogue[7]
	}}

if scenetime>=720 oControl.quakeFXTime=10

if scenetime=900{
	

	
with oControl {cutscenename="DIVAS" cutsceneline="AAAAAAAAAAAAAAAAAAAHHHHHHH!!!!"
	if global.Language!=0 cutsceneline=languagedialogue[8]
	}}

////END SCENE PART
if scenetime=1040 oControl.stageEndFX=1
}
}
}

if cutsceneDecmode=2
{CutsceneStage=rm_stage5 ///Try to wake Rosy up
with oControl {cutscenename="HINA" cutsceneline="OH... TICKETS!"
	
with oControl
switch(global.Language)
{
case 2: ////Portuguese
languagedialogue[1]="ATÁ... OS INGRESSOS!"
languagedialogue[2]="QUANDO QUE VOCÊ COMPROU OS INGRESSOS?!"
languagedialogue[3]="QUANDO ENTRAMOS NO TREM. É O CORRETO A SE FAZER SEMPRE."
languagedialogue[4]="...QUANTA PUREZA NESSE CORAÇÃO, HINA."
languagedialogue[5]="DEIXA EU CHECAR..."
languagedialogue[6]="TUDO NO LUGAR MADAMES. AQUIETEM A BUNDA NOS SEUS ASSENTOS E NÃO SE METAM EM MAIS ALGAZARRA."
languagedialogue[7]="EI VIVA. TEM MAIS ALGUMA COISA NA NOTA QUE A LOBA DEIXOU?"
languagedialogue[8]="PARECE QUE ESSES TREM TÁ INDO PRA UM LUGAR CHAMADO CASINO DOJO LUCKY."
languagedialogue[9]="EU JÁ OUVI FALAR DESSE LUGAR! TEM GAROTAS COELHOS NINJAS LÁ! EU QUERO ESMURRAR UMA!"
languagedialogue[10]="E NÓS QUEREMOS RESPOSTAS SOBRE NOSSAS COISAS ROUBADAS."
languagedialogue[11]="OKAY. VAMOS PARA OS NOSSOS ASSENTOS. EU VOU PEDIR UM PETISCO PRA MIM."
languagedialogue[12]="UM PETISCÃO NA VERDADE."

cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;
}
	
	with actor2 {sprite_index=spr_hina_move image_speed=0.25 newscript=function()
	{
	if specialcheck[9]<3000
	{hspeed=3 y+=0.25
	specialcheck[9]+=1
	if specialcheck[9]>=24 {specialcheck[9]=4000 hspeed=0 image_speed=0 image_index=0 AnimFrame=1 sprite_index=spr_hina_igottickets}
	
	}
	if specialcheck[9]=4000
	{
	frame_set(0,0,0.1) if AnimFrame=1 sprite_index=spr_hina_igottickets
	frame_set(1,0,0.25)	
	frame_set(2,1,0.25) if AnimFrame=3
	with oControl {
		
	with actor1 {sprite_index=spr_viva_wildtake7 image_index=2}
	with actor3 {sprite_index=spr_bahati_wildtake7 image_index=2}
	with actor4 {sprite_index=spr_sofia_wildtake7 image_index=2}
	}

	frame_set(3,0,0.25)
	frame_set(4,2,0.25)	
	frame_set(5,3,0.25)	
	frame_set(6,3,0.25)
	}
	}
	}	
	}
	
	
with actorscreen newscript=function()
{scenetime+=1;
if scenetime=240{ x=0 y=0
with oControl {
		with actor4 {sprite_index=spr_sofia_point image_index=2}
	
	cutscenename="SOFIA" cutsceneline="WHEN THE HELL DID YOU BUY TICKETS?!"
	if global.Language!=0 cutsceneline=languagedialogue[2]
	}
}
if scenetime=480{ x=0 y=0
with oControl {cutscenename="HINA" cutsceneline="WHEN WE GOT ON THE TRAIN. IT'S ALWAYS THE RIGHT THING TO DO."
	if global.Language!=0 cutsceneline=languagedialogue[3]
	}
}

if scenetime=680
{
with oControl {cutscenename="" cutsceneline=""
	
		with actor3 {sprite_index=spr_bahati_point image_index=0}
		with actor4 {sprite_index=spr_sofia_point image_index=0}
	
	with actor1 {image_index=0 image_xscale=1 sprite_index=spr_viva_bruh newscript=function()
	{
	frame_set(0,0,0.01) 
	frame_set(1,1,0.25)	
	frame_set(2,0,0.01)
	frame_set(3,2,0.05)
	frame_set(4,3,0.01)	
	frame_set(5,4,0.25)	
	frame_set(6,5,0.25)
	frame_set(7,6,0.25)
	}
	}
}
}

if scenetime=1000{ x=0 y=0
with oControl {cutscenename="VIVA" cutsceneline="...SUCH A PURE HEART, HINA."
	if global.Language!=0 cutsceneline=languagedialogue[4]
	}
}
if scenetime=1220{ x=0 y=0
with oControl {cutscenename="DOLORES" cutsceneline="WELL LET ME SEE..."
	if global.Language!=0 cutsceneline=languagedialogue[5]
	with actor5 {sprite_index=spr_twoheads_move hspeed=-2 image_speed=0.25
	
	newscript=function() {y=lerp(y,oControl.actor2.y,0.1)
		if x<=oControl.actor2.x+34 {
			with oControl.actor2 {sprite_index=spr_hina_grab image_index=0 }
			PlaySound(snd_steal)
			newscript=-1; sprite_index=spr_twoheads_talk image_speed=0 hspeed=0}
		}
	
	}
	
	}
}
if scenetime=1520{ x=0 y=0
with oControl {
	with actor5 {image_xscale=1 image_speed=0.25 hspeed=2 sprite_index=spr_twoheads_move}
	cutscenename="DOLORES" cutsceneline="YEP. THIS CHECKS OUT. FIND YOUR SEATS AND DON'T CAUSE ANY MORE TROUBLE THAN WHAT WE HAVE."
	if global.Language!=0 cutsceneline=languagedialogue[6]
	}
}

if scenetime=1600
{
with oControl {
with oCameoChar if sprite_index=spr_cowboy_stand {image_xscale=1 hspeed=2 image_speed=0.25 sprite_index=spr_cowboy_move}	
}

}

if scenetime=1820{ x=0 y=0
with oControl {
		with actor1 {AnimFrame=6}
	with actor2 {sprite_index=spr_hina_move image_speed=0.25 hspeed=-2 image_xscale=-1} cutscenename="BAHATI" cutsceneline="HEY VIVA ANYTHING IN THE NOTE THAT WOLF WOMAN LEFT?"
	if global.Language!=0 cutsceneline=languagedialogue[7]
	}
}
if scenetime=2120{ x=0 y=0
with oControl {
	with actor1 {newscript=-1; image_index=3 }
	cutscenename="VIVA" cutsceneline="LOOKS LIKE THIS TRAIN IS HEADED TO THIS PLACE CALLED THE LUCKY DOJO CASINO."
	if global.Language!=0 cutsceneline=languagedialogue[8]
	}
}
if scenetime=2420{ x=0 y=0
with oControl {with actor4 {sprite_index=spr_sofia_move image_speed=0.25 hspeed=-2 image_xscale=-1} cutscenename="SOFIA" cutsceneline="I HEARD OF THAT PLACE! IT'S GOT NINJA BUNNYGIRLS! I WANT TO FIGHT ONE!"
if global.Language!=0 cutsceneline=languagedialogue[9]
}
}
if scenetime=2660{ x=0 y=0
with oControl {with actor1 {sprite_index=spr_viva_cutscene image_index=0} cutscenename="VIVA" cutsceneline="AND WE WILL TO GET OUR ANSWERS ABOUT OUR STOLEN STUFF."
if global.Language!=0 cutsceneline=languagedialogue[10]
}
}
if scenetime=2880{ x=0 y=0
with oControl {with actor1 {sprite_index=spr_viva_move image_speed=0.25 hspeed=-2 image_xscale=-1} cutscenename="VIVA" cutsceneline="COME ON. LET'S TAKE A SEAT. I GOTTA ORDER ME COMFORT FOOD."
if global.Language!=0 cutsceneline=languagedialogue[11]
}
}
if scenetime=3220{ x=0 y=0
with oControl {
		flashscreen=instance_create_depth(0,0,-1,oAlphaFadeFX) with flashscreen
{image_alpha=0 fadeSpd=0.05 isfading=1 image_xscale=99 image_yscale=99
sprite_index=spr_whitecol image_blend=c_black depth=-4000
}
	
	with actor3 {sprite_index=spr_bahati_move image_speed=0.25 hspeed=-2 image_xscale=-1} cutscenename="VIVA" cutsceneline="AND A LOT OF IT."
	if global.Language!=0 cutsceneline=languagedialogue[12]
	}
}

if scenetime=3320
{with oCameoChar {x=-99 y=-999}

PlaySound(snd_train)

layer_set_visible("TrainPart1",0)
layer_set_visible("TrainPart2",0)
layer_set_visible("Sky2",1)

x=-500*4 y=193
	
sprite_index=spr_trainzoom hspeed=5

specialdraw=function() {
draw_sprite(sprite_index,0,x+320*0,y)
draw_sprite(sprite_index,1,x+320*1,y)
draw_sprite(sprite_index,2,x+320*2,y)
draw_sprite(sprite_index,3,x+320*3,y)
draw_sprite(sprite_index,4,x+320*4,y)
draw_sprite(sprite_index,5,x+320*5,y)
}

with oControl {cutscenename="" cutsceneline=""
	with flashscreen instance_destroy();
	}

}

////END SCENE PART
if scenetime=3500 oControl.stageEndFX=1
}
}

arcade_saving(CutsceneStage)

//cutscenename="VIVA"
//cutsceneline="WHAT?!"
