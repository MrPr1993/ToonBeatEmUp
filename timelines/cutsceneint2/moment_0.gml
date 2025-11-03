//background_
if cutscenePlaying=0
{
instance_create_depth(-999,-999,-1,oTextBox)

global.UnlockCutscene[26]=1 feats_check(43)

musicplaystart(msc_action)

with oControl
{canSkipCutscene=0
CDtextT="THE PLANE'S GOING DOWN!\nWHAT YOU'LL DO?!"
CDtextA="GET THE PARACHUTES!"
CDtextB="JUMP OFF THE PLANE!"
CDtextC="USE THE HARPY!"

cutscenename="MR.SNEAK" cutsceneline= "BOOOOOOSS!!! Those raging lounge singers are gainin' on us and REALLY putting the hurt on the gang! We gotta do somethin' before they catch us!"
}


actor1=instance_create_depth(86,170,-1,oCameoChar) with actor1
{sprite_index=spr_viva_cutscene image_index=0 anim=9999 shadow=-1}
actor2=instance_create_depth(50000,144,-1,oCameoChar) with actor2
{sprite_index=spr_hina_point image_index=0 anim=9999 shadow=-1}
actor3=instance_create_depth(40006,160,-1,oCameoChar) with actor3
{sprite_index=spr_bahati_cutscene image_index=1 anim=9999 shadow=-1}
actor4=instance_create_depth(70006,188,-1,oCameoChar) with actor4
{sprite_index=spr_sofia_taunt3 image_index=0 anim=9999 shadow=-1}
actor5=instance_create_depth(210005,170,-1,oCameoChar) with actor5
{sprite_index=spr_harpy_dizzy anim=9999 image_xscale=-1 shadow=-1}

SceneX=0
__view_set( e__VW.XView, 0, SceneX )
SceneY=0
__view_set( e__VW.XView, 0, SceneY )
with oCameoChar isDepth=0

with actor1
{
x=0 y=0 sprite_index=spr_int2_1 image_speed=0.5  depth=-2000 isDepth=0
}

actorscreen=instance_create_depth(0,0,-1,oCameoChar) with actorscreen
{sprite_index=spr_int2_2 anim=9999 isDepth=0 depth=-3000 image_speed=0.5
x=0 shadow=-1 y=-240

with oControl
with actor2 {isDepth=0
depth=-1800 sprite_index=spr_block
image_xscale=30 image_yscale=30 x=0 y=0 image_blend=c_black;
}


newscript=function()
{scenetime+=1;

if scenetime=540
{
with oControl
{
cutscenename="VAN BAD" cutsceneline= "Grr... Pull out all the stops, spare no expense, do whatever it takes to STOP THEM!"
if global.Language!=0 cutsceneline=languagedialogue[2]
}

}

if scenetime=510 specialcheck[0]=0
if scenetime>=540 and scenetime<=620 
{
{if y<0 y+=16 else {y=0 
	if specialcheck[0]=0 {PlaySound(snd_quakeground) specialcheck[0]=1 oControl.quakeFXTime=10}}
}

}

if scenetime=900
{
with oCameoChar y=-9999
with oControl 
{
cutscenename="MR.SNEAK" cutsceneline="Yes, boss!"
if global.Language!=0 cutsceneline=languagedialogue[3]
with actor1 {sprite_index=spr_int2_4 x=-148 y=0 depth=-3010} 
}


sprite_index=spr_int2_3 x=70 y=88 image_speed=0
}

if scenetime=clamp(scenetime,900,1100) {image_index+=0.25 if image_index>=2 image_index=0}

if scenetime=1100
{image_speed=0 image_index=2
with oControl
{
cutscenename="VAN BAD" cutsceneline= "DR. FRAN!"
if global.Language!=0 cutsceneline=languagedialogue[4]
}

}

if scenetime=1220
{hspeed=2
with oControl
{
cutscenename="DR.FRAN" cutsceneline= "Yes, Master Van Bad?"
if global.Language!=0 cutsceneline=languagedialogue[5]

	actor1.hspeed=3.5
	}
}

if scenetime=1260
{hspeed=0
	with oControl actor1.hspeed=0
	}

if scenetime=1420
{
with oControl
{actor1.hspeed=0
	actor2.hspeed=0
cutscenename="VAN BAD" cutsceneline= "Are the treasures ready for 'IT', yet?!"
if global.Language!=0 cutsceneline=languagedialogue[6]
	
	}
}

if scenetime=1680
{
with oControl
{
	
cutscenename="DR.FRAN" cutsceneline= "They will be soon, Master Van Bad."
	if global.Language!=0 cutsceneline=languagedialogue[7]
	}
}

//if scenetime>=1580 with oControl actor1.image_alpha-=0.025


if scenetime=1880
{
with oControl
{
	
cutscenename="VAN BAD" cutsceneline= "Well HURRY IT UP! We're running out of time!"
	if global.Language!=0 cutsceneline=languagedialogue[8]
	}
}


if scenetime=2080
{
with oControl
{
	
cutscenename="DR.FRAN" cutsceneline= "Yes, Master Van Bad."
	if global.Language!=0 cutsceneline=languagedialogue[9]
	}
}


if scenetime=2280
{x=80 y=0 with oControl actor1.x=-9999 image_speed=0 image_index=0
	sprite_index=spr_int2_5
with oControl
{

cutscenename="VAN BAD" cutsceneline= "Bothersome little divas... You're about to find out what happens to those who cross Van Bad..."
if global.Language!=0 cutsceneline=languagedialogue[10]
}
}
if scenetime>=2280 if x>0 x-=0.5

if scenetime>=2580
{
if image_index<=5.5 image_index+=0.25 if image_index=2 {audio_stop_all() PlaySound(snd_glassbreakm) oControl.quakeFXTime=10}
}

if scenetime>=2780 image_alpha-=0.025

if scenetime=2900
{
with oControl
stageEndFX=1
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


	
canSkipCutscene=2

//-Intermission 2-


//-Intermission 2-
cutscenePlaying=1

with oControl
switch(global.Language)
{
case 2: ////Portuguese
languagedialogue[1]="CHEFEEEEEE!!! Aqueles cantores de bar enfurecidos estão nos alcançando e realmente prejudicando a gangue! Temos que fazer alguma coisa antes que eles nos peguem!"
languagedialogue[2]="Grr... Usaremos todos os recursos, não pouparemos despesas, faremos o que for preciso para DETÊ-LOS!"
languagedialogue[3]="Sim, chefe!"
languagedialogue[4]="Dr. Fran!"
languagedialogue[5]="Sim, Mestre Van Bad?"
languagedialogue[6]="Os tesouros já estão prontos para 'ISTO'?!"
languagedialogue[7]="Eles chegarão em breve, Mestre Van Bad."
languagedialogue[8]="Vamos logo! Estamos ficando sem tempo!"
languagedialogue[9]="Sim, Mestre Van Bad."
languagedialogue[10]="Pequenas divas irritantes... Vocês estão prestes a descobrir o que acontece com quem se mete com Van Bad..."
cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;
}

}

oControl.CutsceneStage=global.BonusStageNext

