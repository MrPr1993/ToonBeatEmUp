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

sprite_index=mask_none
with oControl
{
//-Red Oni is lying(Swamp)-
cutscenename="KIANDRA" cutsceneline= "Well it seems like there's some commotion going on around this cornfield."
}
x=0
y=0

newscript=function()
{
scenetime+=1;

if scenetime=120
{
with oControl
{
cutscenename="SOFIA" cutsceneline= "That's quite a walk..."
}
}

if scenetime=340
{
with oControl
{
cutscenename="KIANDRA" cutsceneline= "Well, that's not my problem! Now..."
}
}

if scenetime=520
{
with oControl
{
//Zombies grab the divas and chuck them out
cutscenename="KIANDRA" cutsceneline= "GET LOST!!!"
}
}

if scenetime=660
{
with oControl {cutscenename="VIVA" cutsceneline= "Well that's rude! Fine! We didn't even needed your help anyways!"}
}


if scenetime=2320
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

sprite_index=mask_none
with oControl
{
//-Both are lying(Carnival)-
cutscenename="KIANDRA" cutsceneline= "Supposedly a prince lives in the nearby waters... But you'll need this potion to tread the seafloor..."
}
x=0
y=0

newscript=function()
{
scenetime+=1;


if scenetime=520
{
with oControl {cutscenename="VIVA" cutsceneline= "And what is it?"}
}

if scenetime=660
{
with oControl {cutscenename="" cutsceneline= "Gross food"}
}

if scenetime=860
{
with oControl {cutscenename="SOFIA" cutsceneline= "Are your tastebuds warped or something?!"
cutscenename="HINA" cutsceneline= "It smells awful..."}
}

if scenetime=1060
{
with oControl {
cutscenename="VIVA" cutsceneline= "Ohh don't mind if I do!"
}
}

if scenetime=1300
{////They walk off
with oControl {cutscenename="VIVA" cutsceneline="Mmm what is your recipe?"}
}

if scenetime=1500
{
with oControl {//KERSMASH!
cutscenename="KIANDRA" cutsceneline=  "Well now, you find this appetizing? That's a first."}
}

if scenetime=2300
{
with oControl {cutscenename="SOFIA" cutsceneline= "Are your tastebuds warped or something?!"}
}

if scenetime=2300
{
with oControl {cutscenename="HINA" cutsceneline= "It smells awful..."}
}

if scenetime=2600
{
with oControl {cutscenename="BAHATI" cutsceneline="Is it even safe to eat...?"}
}

if scenetime=2900
{
with oControl {cutscenename="VIVA" cutsceneline="Girls, don't be rude! Eat the soup!"}
}

if scenetime=3100
{
with oControl {cutscenename="BAHATI" cutsceneline="BUT-"}
}

if scenetime=3400
{
with oControl {cutscenename="VIVA" cutsceneline="Eat..."}
}

if scenetime=3700
{
with oControl {cutscenename="" cutsceneline="Divas are kod"}
}

if scenetime=4000
{
with oControl {cutscenename="VIVA" cutsceneline="I know him. I never wanted to meet him because of the situation, but I gess we have no other choice."}
}

if scenetime=4300
{
with oControl {cutscenename="KIANDRA" cutsceneline="Well I wish you luck with that. At least I got to meet someone who appreciates my work."}
}

if scenetime=4600
{
with oControl {cutscenename="VIVA" cutsceneline="Come on, let's jump!."}
}

///Splash

if scenetime=5320
{
oControl.stageEndFX=1
}
}
}
}

/////////////DECISION 3
if cutsceneDecmode=3
{
CutsceneStage=rm_stagedesert

with actorscreen
{scenetime=0;
with oControl {//-Blue Oni is lying(Beach)-
cutscenename="KIANDRA" cutsceneline= "Looks like your path leads into the desert..."
}
sprite_index=mask_none
x=0
y=0

newscript=function()
{
scenetime+=1;


if scenetime=520
{
with oControl {cutscenename="BAHATI" cutsceneline= "Alright but... Where exactly?"

}
}

if scenetime=660
{
with oControl {cutscenename="KIANDRA" cutsceneline= "I don't know, find out yourself! In fact... Just to get you out of here faster... I'll make this a quick trip."
}
}

if scenetime=860
{
with oControl {cutscenename="" cutsceneline="Divas are teleported in the desert"


	}
}

if scenetime=1060
{
with oControl {cutscenename="VIVA" cutsceneline= "Well that's a quick trip. MY FOOT!"
}
}

if scenetime=1300
{
with oControl {cutscenename="HINA" cutsceneline="It's... hot... too hot for me..."}
}

if scenetime=1500
{
with oControl {//SMASH!
cutscenename="SOFIA" cutsceneline="Get used to it, chica. It's the desert."}

}

if scenetime=1700
{
with oControl {//SMASH!
cutscenename="BAHATI" cutsceneline="OH hey look over there! That must be it!"}
}


if scenetime=2020
{
oControl.stageEndFX=1
}
}
}
}

