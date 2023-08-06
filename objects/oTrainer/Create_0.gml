/// @description Insert description here
// You can write your code in this editor
z=0

image_speed=0

trainz=0

animFrame=0

fallHole=0

shadow=spr_shadow
canControl=0
controlNO=9
controller_setup()

anim=0

petID=-1

petType=0

distance=32
distanceY=8

petDistance=28

interact=0

iconheight=-48

//tutorialtext="PRESS J TO\nATTACK!"
tutorialtext=""
tutorialchar=""
tutorialquestion=0
tutorialquestionpick=0

trainingnumbers=0

locksuper=1

detectsuper=0

trainingcheck=0
trainingdraw=function() {}

alarm[0]=30

instance_create_depth(0,0,-1,oTextBox)

trainingdetect=function()
{

}

//trainingnumbers=9

trainingmoment=function() {} 


trainingreact=function()
{alarm[0]=160 trainingcheck=12 trainingnumbers+=1
with oSandbag sandbagreact=function() {}
tutorialtext=choose("GOOD!", "GREAT!", "EXCELLENT")
trainingdraw=function() {}
trainingdetect=function() {}
}