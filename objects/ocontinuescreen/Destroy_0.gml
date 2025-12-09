/// @description Insert description here
// You can write your code in this editor
if global.Cheat[15]=0
{
if global.Continues!=-1
global.Continues-=1
}
with p1 instance_destroy()
with p2 instance_destroy()
with p3 instance_destroy()
with p4 instance_destroy()


instance_activate_all()

with oControl playerselbuffer=2

if continuePlayer=1
with oControl with p1 {ContinueMode=0 continueScreen=2 ContinueSelect=1
	continueFlash=0 characterSelect=global.P1Char
characterTimer=9 hiScoreInputNum=3
hiScoreInputNum=1
HiInput1=0
finalStageScoreMark=0
hiScoreInput=0
hiScoreInputNum=1
hiScoreNameGet="A"
keyGet1="A"
keyGet2="A"
keyGet3="A"
keyToGameOver=0
keyNo=1
keyNoCheck="A"	
ContinueCountdown=9
ContinueCTime=90
CountdownMode=0
	}
if continuePlayer=2
with oControl with p2 {ContinueMode=0 continueScreen=2 ContinueSelect=1
	continueFlash=0 characterSelect=global.P2Char
characterTimer=9 hiScoreInputNum=3
hiScoreInputNum=1
HiInput1=0
finalStageScoreMark=0
hiScoreInput=0
hiScoreInputNum=1
hiScoreNameGet="A"
keyGet1="A"
keyGet2="A"
keyGet3="A"
keyToGameOver=0
keyNo=1
keyNoCheck="A"
ContinueCountdown=9
ContinueCTime=90
CountdownMode=0
	}
if continuePlayer=3
with oControl with p3 {ContinueMode=0 continueScreen=2 ContinueSelect=1
	continueFlash=0 characterSelect=global.P3Char
characterTimer=9 hiScoreInputNum=3
hiScoreInputNum=1
HiInput1=0
finalStageScoreMark=0
hiScoreInput=0
hiScoreInputNum=1
hiScoreNameGet="A"
keyGet1="A"
keyGet2="A"
keyGet3="A"
keyToGameOver=0
keyNo=1
keyNoCheck="A"
ContinueCountdown=9
ContinueCTime=90
CountdownMode=0
	}
if continuePlayer=4
with oControl with p4 {ContinueMode=0 continueScreen=2 ContinueSelect=1
	continueFlash=0 characterSelect=global.P4Char
characterTimer=9 hiScoreInputNum=3
hiScoreInputNum=1
HiInput1=0
finalStageScoreMark=0
hiScoreInput=0
hiScoreInputNum=1
hiScoreNameGet="A"
keyGet1="A"
keyGet2="A"
keyGet3="A"
keyToGameOver=0
keyNo=1
keyNoCheck="A"
ContinueCountdown=9
ContinueCTime=90
CountdownMode=0
	}

with oControl
{stageIntro=1
continueScreen=0
global.CurrentMusic=continueMusic
if !audio_is_playing(global.CurrentMusic)
{
audio_stop_all()
musicplaystart(global.CurrentMusic)
}

}

if instance_exists(oPlayerNoControl) with oPlayerNoControl { }
if instance_exists(oPlayer) with oPlayer {ContinueCountdown=9 ContinueCTime=90}

if continuePlayer=1 with oControl with p1 if object_index=oPlayerNoControl {key_A=1; triggerspawn();}
if continuePlayer=2 with oControl with p2 if object_index=oPlayerNoControl {key_A=1; triggerspawn();}
if continuePlayer=3 with oControl with p3 if object_index=oPlayerNoControl {key_A=1; triggerspawn();}
if continuePlayer=4 with oControl with p4 if object_index=oPlayerNoControl {key_A=1; triggerspawn();}


oControl.TVfx=TVfx
oControl.var_distort=global.CRTcustomDistort
oControl.var_distortion_ammount=global.CRTcustomDistortAM
oControl.var_border=global.CRTcustomBorder
oControl.pauseBuffer=10