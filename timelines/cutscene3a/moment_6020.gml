///@description Decision Results
canSkipCutscene=2
actorscreen.scenetime=0
timeline_speed=0

/////////////DECISION 1
if cutsceneDecmode=0
{
CutsceneStage=rm_stageswamp

with actorscreen
{scenetime=0;

sprite_index=mask_none
with oControl
{
cutscenename="HATHOR" cutsceneline=  "We recall sharing a bond with a mystic in the swamps... We can sense their presence still there. Quickly! We will teleport you there now!"
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
with oControl {cutscenename="VIVA" cutsceneline=  "A swamp?"}
}
}

if scenetime=340
{
with oControl
{
with oControl {cutscenename="SOFIA" cutsceneline="Sounds sticky. I like the sound of it."}
}
}

if scenetime=520
{
with oControl
{
cutscenename="HATHOR" cutsceneline= "And away you all will go!"
}
}

if scenetime=660
{
with oControl {cutscenename="VIVA" cutsceneline="WAIT we're not-"}
}

if scenetime=860
{with oControl {cutscenename="VIVA" cutsceneline="...ready..."}
}

if scenetime=1060
{
with oControl {cutscenename="HINA" cutsceneline="Wow she's good."}
}

if scenetime=1360
{
with oControl {cutscenename="BAHATI" cutsceneline="It sure is dark in here..."}
}

if scenetime=1620
{
with oControl {cutscenename="VIVA" cutsceneline="Whatever. Let's find this mystic person. Bet she's a witch."}
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
CutsceneStage=rm_stagecarnival

with actorscreen
{scenetime=0;

sprite_index=mask_none
with oControl
{
cutscenename="VIVA" cutsceneline=  "Come on, Hina, we don't have time to listen to this fossil, besides, I see them running off toward a carnival."
}
x=0
y=0

newscript=function()
{
scenetime+=1;


if scenetime=520
{
with oControl {cutscenename="HATHOR" cutsceneline=  "Fossil?! HOW DARE YOU!! Hey! Where are you going?!"}
}

if scenetime=660
{
with oControl {cutscenename="HINA" cutsceneline=  "Carnival~? Ohh, I wonder if they have any fun games there?"}
}

if scenetime=860
{
with oControl {cutscenename="BAHATI" cutsceneline="Oooh will there be a strength game?"}
}

if scenetime=1060
{
with oControl {cutscenename="SOFIA" cutsceneline="I wanna ride the biggest bull!"}
}

if scenetime=1300
{
with oControl {cutscenename="VIVA" cutsceneline="Focus, girls. Focus..."}
}

if scenetime=1500
{
with oControl {cutscenename="HATHOR" cutsceneline="..."}
}

if scenetime=1750
{
with oControl {cutscenename="HATHOR" cutsceneline="Carnival?"}
}

if scenetime=2000
{
with oControl {cutscenename="HATHOR" cutsceneline="How long was I even gone?"}
}

if scenetime=2320
{
oControl.stageEndFX=1
}
}
}
}

/////////////DECISION 3
if cutsceneDecmode=3
{
CutsceneStage=rm_stagebeach

with actorscreen
{scenetime=0;
with oControl {cutscenename="HATHOR" cutsceneline="We befriended someone quite powerful in the odyssey days. We can teleport you to her domain with ease."}
sprite_index=mask_none
x=0
y=0

newscript=function()
{
scenetime+=1;


if scenetime=520
{
with oControl {cutscenename="BAHATI" cutsceneline= "Is that so? Could be helpful."}
}

if scenetime=660
{
with oControl {cutscenename="HATHOR" cutsceneline="OF COURSE! I'M A GODDESS!"}
}

if scenetime=860
{
with oControl {cutscenename="SOFIA" cutsceneline= "Well what are we waiting for? Teleport away!"}
}

if scenetime=1060
{
with oControl {cutscenename="HATHOR" cutsceneline= "Very well. We wish you luck and will await your return..."}
}

if scenetime=1300
{
with oControl {cutscenename="" cutsceneline="TELEPORT."}
}

if scenetime=1500
{
with oControl {cutscenename="" cutsceneline="THUD."}

}

if scenetime=1750
{
with oControl {cutscenename="VIVA" cutsceneline="OW?! Can't she teleport us lower?!"}

}

if scenetime=2020
{
oControl.stageEndFX=1
}
}
}
}
