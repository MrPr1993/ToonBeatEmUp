//background_
if cutscenePlaying=0
{
instance_create_depth(-999,-999,-1,oTextBox)

global.UnlockCutscene[3]=1 feats_check(43);

with oControl
{
CDtextT="THE PLANE'S GOING DOWN!\nWHAT YOU'LL DO?!"
CDtextA="GET THE PARACHUTES!"
CDtextB="JUMP OFF THE PLANE!"
CDtextC="USE THE HARPY!"

cutscenename=""
cutsceneline=""


actor1=instance_create_depth(114+320,170+24,-1,oCameoChar) with actor1
{sprite_index=spr_viva_cutscene image_index=0 anim=9999}
actor2=instance_create_depth(46+320,160+24,-1,oCameoChar) with actor2
{sprite_index=spr_hina_point image_index=0 anim=9999}
actor3=instance_create_depth(50+320,144+24,-1,oCameoChar) with actor3
{sprite_index=spr_bahati_cutscene image_index=1 anim=9999}
actor4=instance_create_depth(76+320,188+24,-1,oCameoChar) with actor4
{sprite_index=spr_sofia_taunt3 image_index=0 anim=9999}
actor5=instance_create_depth(215+320,170+24,-1,oCameoChar) with actor5
{sprite_index=spr_harpy_dizzy anim=9999 image_speed=0.1 image_xscale=-1}

timeline_position=10
timeline_speed=0

}

SceneX=320
__view_set( e__VW.XView, 0, SceneX )
SceneY=-128
__view_set( e__VW.YView, 0, SceneY )

actorscreen=instance_create_depth(160,480,-1,oCameoChar) with actorscreen
{sprite_index=mask_none anim=9999 isDepth=0 depth=-3000

newscript=function()
{scenetime+=1;

if scenetime=60
{
with oControl
{PlaySound(snd_explosion) quakeFXTime=10

with actor1 {sprite_index=spr_viva_quicksand image_index=0}
with actor2 {sprite_index=spr_hina_quicksand image_index=0}
with actor3 {sprite_index=spr_bahati_quicksand image_index=0}
with actor4 {sprite_index=spr_sofia_quicksand image_index=0}


}
}

if scenetime=120
{
with oControl
{cutscenename="VIVA"
cutsceneline="THE PLANE'S GOING DOWN!"
if global.Language!=0 cutsceneline=languagedialogue[1]
with actor1 {sprite_index=spr_viva_point image_index=0 image_xscale=-1}
with actor2 {sprite_index=spr_hina_point image_index=0 image_xscale=-1}
with actor3 {sprite_index=spr_bahati_point image_index=0 image_xscale=-1}
with actor4 {sprite_index=spr_sofia_point image_index=0 image_xscale=-1}
}

}

if scenetime=300
{
with oControl
{cutscenename="BAHATI"
cutsceneline="OH NO! WHAT DO WE DO?!"
if global.Language!=0 cutsceneline=languagedialogue[2]
}
}

if scenetime=400
{
with oControl
{cutscenename="HINA"
cutsceneline="WOW. IT'S A LONG WAY DOWN..."
if global.Language!=0 cutsceneline=languagedialogue[3]
with actor2 {sprite_index=spr_hina_cutscene image_index=0 image_xscale=-1}
}
}

if scenetime=660
{
with oControl
{cutscenename="SOFIA"
cutsceneline="LOOK THERE, CHICAS!!"
if global.Language!=0 cutsceneline=languagedialogue[4]
with actor4 {sprite_index=spr_sofia_point image_index=1 image_xscale=-1}
}

scenetime=740
}



if scenetime=880
{
with oControl
{
}

actor6=instance_create_depth(80,140,-1,oCameoChar) with actor6
{sprite_index=spr_hwolf_parachute image_index=0 anim=9999 image_xscale=-1}

}

if scenetime=1180
{
with actor6 {shadow=-1; image_index=1 PlaySound(snd_jump) spdZ=-4 newscript=function()
{
z+=spdZ;

spdZ+=0.45

hspeed=-0.2 vspeed=0.2

}}

}

if scenetime=clamp(scenetime,880,1179)
with oControl {if SceneX>0 SceneX-=4 else {SceneX=0}}



if scenetime=1240
{
with oControl
{
with actor1 {sprite_index=spr_viva_point image_index=2 image_xscale=-1}
with actor2 {sprite_index=spr_hina_point image_index=2 image_xscale=-1}
with actor3 {sprite_index=spr_bahati_point image_index=2 image_xscale=-1}
with actor4 {sprite_index=spr_sofia_point image_index=2 image_xscale=-1}	

SceneX=320
__view_set( e__VW.XView, 0, SceneX )
SceneY=-128
__view_set( e__VW.YView, 0, SceneY )

cutscenename="SOFIA"
cutsceneline="DAMN IT! SHE'S GETTING AWAY AGAIN!"
if global.Language!=0 cutsceneline=languagedialogue[5]
}
}

if scenetime=1460
{
	with oControl
	{canSkipCutscene=0
cutscenename="VIVA"
cutsceneline="FORGET IT! WE NEED TO THINK HOW TO GET OUTTA THIS!"
if global.Language!=0 cutsceneline=languagedialogue[6]
with actor1 {sprite_index=spr_viva_point image_index=0 image_xscale=-1}

timeline_position=5700
timeline_speed=1
}

if scenetime=clamp(scenetime,1460,1499) scenetime=1464

}





//////	


}
}

	
timeline_position=10
timeline_speed=0

SceneX=320
__view_set( e__VW.XView, 0, SceneX )
SceneY=-128
__view_set( e__VW.YView, 0, SceneY )


	
if global.CutsceneSkip=0 canSkipCutscene=1 else {stageIntro=0
	cutscenename=""
cutsceneline=""
audio_stop_all()

actorscreen.scenetime=1461

global.CutsceneSkip=0

timeline_position=5800
timeline_speed=1

canSkipCutscene=0

with actor1 {sprite_index=spr_viva_point image_index=0 image_xscale=-1}
with actor2 {sprite_index=spr_hina_point image_index=2 image_xscale=-1}
with actor3 {sprite_index=spr_bahati_point image_index=2 image_xscale=-1}
with actor4 {sprite_index=spr_sofia_point image_index=2 image_xscale=-1}	

cutscenename="VIVA"
cutsceneline="FORGET IT! WE NEED TO THINK HOW TO GET OUTTA THIS!"
if global.Language!=0 cutsceneline=languagedialogue[6]
	}
	
SceneY=32
__view_set( e__VW.XView, 0, SceneY )

cutscenePlaying=1

with oControl
switch(global.Language)
{
case 1: ////Portuguese
CDtextT="¡EL AVIÓN SE CAE!\n¿QUÉ HARÁS?"
CDtextA="¡AGARRAR LOS PARACAÍDAS!"
CDtextB="¡SALTAR DEL AVIÓN!"
CDtextC="¡USAR A LA HARPIA!"

languagedialogue[1]="¡EL AVIÓN SE VIENE ABAJO!"
languagedialogue[2]="¡OH NO! ¿QUÉ HACEMOS?!"
languagedialogue[3]="WOW. ES UNA CAÍDA LARGUÍSIMA..."
languagedialogue[4]="¡MIREN, CHICAS!"
languagedialogue[5]="¡MALDICIÓN! ¡SE NOS ESCAPA OTRA VEZ!"
languagedialogue[6]="OLVÍDENLA. ¡TENEMOS QUE PENSAR CÓMO SALIR DE ESTA!"
//cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;	

case 2: ////Portuguese
CDtextT="O NAVIO NÃO TEM TIMONEIRO!\nE AGORA?!"
CDtextA="PEGAR OS PARAQUEDAS!"
CDtextB="PULAR DO AVIÃO!"
CDtextC="USAR A HARPIA!"

languagedialogue[1]="O AVIÃO TÁ CAINDO!"
languagedialogue[2]="DANOU-SE! O QUE A GENTE FAZ?!"
languagedialogue[3]="UAU. É UMA QUEDA E TANTO..."
languagedialogue[4]="OLHEM LÁ, CHICAS!!"
languagedialogue[5]="SAFADA! ELA ESTÁ FUGINDO DE NOVO!"
languagedialogue[6]="ESQUEÇE ISSO! PRECISAMOS PENSAR EM COMO SE SAFAR DESSA!"
//cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;
}

}