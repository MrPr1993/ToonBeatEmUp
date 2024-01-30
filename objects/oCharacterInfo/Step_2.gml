/// @description Insert description here
// You can write your code in this editor
script_execute(enemyscript)
if specialscript!=-1
script_execute(specialscript)

if unlockedChar[charNO]=0 {image_alpha=1 animFrame=0 image_index=0 name="???" desc="" image_blend=c_black} else image_blend=c_white

/// @description Insert description here
// You can write your code in this editor
controller_setup()

if key_B room_goto(rm_menu)

hasVariants=0

wobbleX=lerp(wobbleX,1,0.25)
wobbleY=lerp(wobbleY,1,0.25)

if -key_left_pressed {arrowSel1=2 wobbleX=1.1 wobbleY=0.9
	image_alpha=1 dataPalMax=3 showBlend=1 dataPal=1 overwriteStand=0 image_index=0 animFrame=0 PlaySound(snd_select) if dataSelect=1 dataSelect=dataRowMax else dataSelect-=1
	
	name="???" desc="" image_blend=c_black idlestyle=0
	  descleft=""
descright=""
dataabilities=""
	
	}
if key_right_pressed {
		name="???" desc="" image_blend=c_black idlestyle=0
	  descleft=""
descright=""
dataabilities=""
	arrowSel2=2 wobbleX=1.1 wobbleY=0.9
	image_alpha=1 dataPalMax=3 showBlend=1 dataPal=1 specialscript=-1 overwriteStand=0 image_index=0 animFrame=0 PlaySound(snd_select) if dataSelect=dataRowMax dataSelect=1 else dataSelect+=1}
if key_up_pressed {arrowSel3=2
		name="???" desc="" image_blend=c_black idlestyle=0
	  descleft=""
descright=""
dataabilities=""
	wobbleX=1.1 wobbleY=0.9
	image_alpha=1 dataPalMax=3 showBlend=1 dataPal=1 specialscript=-1 overwriteStand=0 image_index=0 animFrame=0 PlaySound(snd_select) if dataRow=1 dataRow=4 else dataRow-=1}
if -key_down_pressed {arrowSel4=2
		name="???" desc="" image_blend=c_black idlestyle=0
	  descleft=""
descright=""
dataabilities=""
	wobbleX=1.1 wobbleY=0.9
	image_alpha=1 dataPalMax=3 dataPal=1 specialscript=-1 overwriteStand=0 image_index=0 animFrame=0 PlaySound(snd_select) if dataRow=4 dataRow=1 else dataRow+=1}

descleft="";
descright="";
hasShadow=1;
switch(dataRow)
{
case 1: ////Playable Characters
dataRowMax=4 categoryNames=languagetext[0]
charinfo_divas()

break;
case 2: ////Enemy Characters - 48
dataRowMax=38 categoryNames=languagetext[1] hasVariants=1
charinfo_enemies()
break;
case 3: ///Boss Characters
dataRowMax=21 categoryNames=languagetext[2] hasVariants=0
charinfo_bosses()
break;
case 4: ///Locations
dataRowMax=18 categoryNames=languagetext[3] hasVariants=0 hasShadow=0;
charinfo_locations()
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



if key_A
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