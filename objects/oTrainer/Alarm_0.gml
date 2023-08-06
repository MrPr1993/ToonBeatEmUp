/// @description Insert description here
// You can write your code in this editor

with oPlayer key_right=0
////Dialogue Here
switch(trainingcheck)
{
case 0:alarm[0]=300 tutorialchar=oPlayer.name switch(oPlayer.character){
	case 0: tutorialtext="WELL WELL IF IT ISN'T VIVA. STILL NO MEAT IN YOUR BONES? OR YOUR WAISTLINE?" break;
	case 1: tutorialtext="SO YOU COME TO TRAIN HINA? HOW FLEXIBLE ARE YOU, STRETCH?" break;
	case 2: tutorialtext="BAHATI! GOOD TO SEE YA HERE TO WORK ON YOUR SKILLS!" break;
	case 3: tutorialtext="IF IT AIN'T SHORTY SOFIA. COMIN' HERE TO WORK ON YOUR LEGS?" break;
}break;
case 1:canControl=1
tutorialtext="ALRIGHT. PICK YOUR CHOICE."
tutorialquestion=1
break;
}
trainingcheck+=1;