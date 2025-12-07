/// @description Insert description here
// You can write your code in this editor
hp=20

hpA=1
hpB=1
hpC=1
hpAll=1

hpHit1=0

destroyed=0

destroyedBy=-1

destA=0
destB=0
destC=0

iceFX=0;

results=0

zSpeed=0
ground=1

shaketime=0
shakefrom=-1

shake=0

shadow=spr_cargames

fallHole=0

trainz=0
z=0

ready=0

height=128

recovery=0

sourceCheckX=1
sourceCheckY=1

oControl.alarm[0]=999999999999999
oControl.time=30
oControl.timedead=0
oControl.specialTimer=self.id
oControl.timeclick=60

npcDriverOn=0
npcDriverTimer=0

oControl.CutsceneStage=global.BonusStageNext

with oPlayer {canmove=0 anim=0 key_left=0 key_right=0 altresult2=0}

with oControl
{
altresult2a=0
altresult2b=0
altresult2c=0
altresult2d=0
}
alarm[0]=180
hithereY=0


oControl.stageNext=global.VanBadSceneNext

with oPlayer {altresult2=0
if playerNO=2 {image_xscale=-1 x=320-32}	
if playerNO=3 {y=192+32}	
if playerNO=2 {image_xscale=-1 x=320-32 y=192+32}	
	
}
if instance_exists(oPlayerDisembodied) with oPlayerDisembodied altresult2=0
if instance_exists(oPlayerNoControl) with oPlayerNoControl altresult2=0
