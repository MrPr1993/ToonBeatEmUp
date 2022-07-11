/// @description Insert description here
// You can write your code in this editor
controller_setup()

hasVariants=0

wobbleX=lerp(wobbleX,1,0.25)
wobbleY=lerp(wobbleY,1,0.25)

if -key_left_pressed {arrowSel1=2 wobbleX=1.1 wobbleY=0.9
	image_alpha=1 dataPalMax=3 showBlend=1 dataPal=1 overwriteStand=0 image_index=0 animFrame=0 PlaySound(snd_select) if dataSelect=1 dataSelect=dataRowMax else dataSelect-=1}
if key_right_pressed {arrowSel2=2 wobbleX=1.1 wobbleY=0.9
	image_alpha=1 dataPalMax=3 showBlend=1 dataPal=1 specialscript=-1 overwriteStand=0 image_index=0 animFrame=0 PlaySound(snd_select) if dataSelect=dataRowMax dataSelect=1 else dataSelect+=1}
if key_up_pressed {wobbleX=1.1 wobbleY=0.9
	image_alpha=1 dataPalMax=3 showBlend=1 dataPal=1 specialscript=-1 overwriteStand=0 image_index=0 animFrame=0 PlaySound(snd_select) if dataRow=1 dataRow=8 else dataRow-=1}
if -key_down_pressed {wobbleX=1.1 wobbleY=0.9
	image_alpha=1 dataPalMax=3 dataPal=1 specialscript=-1 overwriteStand=0 image_index=0 animFrame=0 PlaySound(snd_select) if dataRow=8 dataRow=1 else dataRow+=1}

descleft="";
descright="";

switch(dataRow)
{
case 1: ////Playable Characters
dataRowMax=4 categoryNames="DIVAS"
charinfo_divas()

break;
case 2: ////Enemy Characters - 48
dataRowMax=30 categoryNames="ENEMIES" hasVariants=1
charinfo_enemies()
break;
case 3: ///Boss Characters
dataRowMax=16 categoryNames="BOSSES" hasVariants=0
charinfo_bosses()
break;
}

dataSelect=clamp(dataSelect,1,dataRowMax)

if oControl.betatest=1 if keyboard_check_pressed(vk_tab)
if OwnDescTest=1 OwnDescTest=0
else
{
OwnDescTest=1
OwnDesc=get_string(OwnDesc,OwnDesc)
}if OwnDescTest=1 desc=OwnDesc



if key_attack
{
if dataPal=dataPalMax dataPal=1 else dataPal+=1 PlaySound(snd_select)
}

if customText!=-1
desc=customText

if customText2!=-1
dataabilities=customText2
if customText3!=-1
descleft=customText3
if customText4!=-1
descright=customText4

if oControl.betatest=1
{if keyboard_check_pressed(vk_backspace)
if keyboard_check(vk_left) customText3=get_string("Change Text",descleft)
else
if keyboard_check(vk_right) customText3=get_string("Change Text",descright)
else
if keyboard_check(vk_control)
customText2=get_string("Change Text",customText2)
else
customText=get_string("Change Text",desc)

}