/// @description Insert description here
// You can write your code in this editor

with oPlayer key_right=0
////Dialogue Here
switch(trainingcheck)
{
case 0:alarm[0]=300 tutorialchar=oPlayer.name switch(oPlayer.character){
	case 0: tutorialtext="WELL WELL IF IT ISN'T VIVA. STILL NO MEAT IN YOUR BONES? OR YOUR WAISTLINE?" break;
	case 1: tutorialtext="SO YOU COME TO TRAIN HINA? HOW FLEXIBLE ARE YOU, STRETCH?" break;
	case 2: tutorialtext="BAHATI! GOOD TO SEE YA HERE TO WORK ON YOUR WRESTLING SKILLS!" break;
	case 3: tutorialtext="IF IT AIN'T SHORTY SOFIA. COMIN' HERE TO WORK ON YOUR THICK LEGS?" break;
}break;
case 1:canControl=1
tutorialtext="ALRIGHT. PICK YOUR CHOICE."
tutorialquestion=1
break;

case 12: ////Training Part
if trainingnumbers!=0 and trainingnumbers!=17 and trainingnumbers!=18
{detectsuper=0
with oPlayer {targetID=-1 canControl=1 
	if anim!=0 AnimFrame=0 anim=0 ground=1  canmove=1 y=ystart x=298}
with oSandbag {anim=0 AnimFrame=0 ground=1  canmove=1 y=ystart x=xstart}
if instance_exists(oFlashFX) with oFlashFX instance_destroy()
}

switch(trainingnumbers)
{
case 0: { with oPlayer canControl=1
tutorialtext="GET CLOSE TO BAGGY AND PUNCH WITH"
if oPlayer.character=3 tutorialtext="GET CLOSE TO BAGGY AND KICK WITH"

with oControl specialcommanddraw=function() {var commandMul=0; if global.ConsoleType="XBOX" commandMul=0; if global.ConsoleType="PS" commandMul=1; if global.ConsoleType="SWITCH" commandMul=2;
draw_buttontext(244+60,80,8,"",spr_commandbutton,6+6*commandMul,"","")};
with oSandbag sandbagreact=function() {
if oPlayer.anim=10 and oSandbag.anim=4 and oSandbag.AnimFrame<0.5
with oTrainer {trainingreact(1)}}} break;
case 1: 
{
tutorialtext="DO A COMBO AND TRY TO KNOCK EM' DOWN!"

if oPlayer.character=2 specialcheck[0]=1

with oControl specialcommanddraw=function() {
var commandMul=0; if global.ConsoleType="XBOX" commandMul=0; if global.ConsoleType="PS" commandMul=1; if global.ConsoleType="SWITCH" commandMul=2;
for (var i=0;i<5-oTrainer.specialcheck[0]=1;i++) {draw_buttontext(244+60-52+16*i,80,8,"",spr_commandbutton,6+6*commandMul,"","")}}

with oSandbag sandbagreact=function() {
if oPlayer.anim=14-oTrainer.specialcheck[0] and (oSandbag.anim=5)
with oTrainer {trainingreact(1)}}} break;
case 2: 
{
tutorialtext="NOW RUN AND DO A DASH ATTACK WITH"


with oControl specialcommanddraw=function() {var commandMul=0; if global.ConsoleType="XBOX" commandMul=0; if global.ConsoleType="PS" commandMul=1; if global.ConsoleType="SWITCH" commandMul=2;
draw_buttontext(244+60,80,8,"►►",spr_commandbutton,6+6*commandMul,"","")};
with oSandbag sandbagreact=function() {
if oPlayer.anim=16 and (oSandbag.anim=5)
with oTrainer {trainingreact(1)}}} break;
case 3: 
{
tutorialtext="DO A JUMP AND KICK! STAY STILL."

if oPlayer.character=2 {tutorialtext="DO A FLYING MOVE! STAY STILL."

with oSandbag sandbagreact=function() {
if oPlayer.sprite_index=spr_bahati_attackair
with oTrainer {trainingreact(1)}}
}
else
{
with oSandbag sandbagreact=function() {
if oPlayer.anim=15 and oPlayer.key_down=0 and oPlayer.sentflying=0 and (oSandbag.anim=5 or oSandbag.anim=7) and oSandbag.AnimFrame<1
with oTrainer {trainingreact(1)}}
}

with oControl specialcommanddraw=function() {var commandMul=0; if global.ConsoleType="XBOX" commandMul=0; if global.ConsoleType="PS" commandMul=1; if global.ConsoleType="SWITCH" commandMul=2;
draw_buttontext(244+60-8,80,8,"",spr_commandbutton,4+6*commandMul,"","")
draw_buttontext(244+60+8,80,8,"",spr_commandbutton,6+6*commandMul,"","")
};

trainingdraw=function() {with oControl draw_buttontext(240+72,64+16-8+8,8,commandL[12],spr_commandbutton,0,"L","")}
} break;
case 4: 
{
tutorialtext="NOW DO IT WHILE MOVING."
if oPlayer.character=2 tutorialtext="DO YOUR FLYING KICK. AIR WHILE MOVING!"
with oControl specialcommanddraw=function() {var commandMul=0; if global.ConsoleType="XBOX" commandMul=0; if global.ConsoleType="PS" commandMul=1; if global.ConsoleType="SWITCH" commandMul=2;
draw_buttontext(244+60-8,80,8,"►",spr_commandbutton,4+6*commandMul,"","")
draw_buttontext(244+60+8,80,8,"",spr_commandbutton,6+6*commandMul,"","")
};
trainingdraw=function() {with oControl draw_buttontext(240+72,64+16-8+8,8,commandL[12],spr_commandbutton,0,"L","")}
with oSandbag sandbagreact=function() {
if (oPlayer.anim=15 and oPlayer.key_down=0 and oPlayer.sentflying!=0) and (oSandbag.anim=5 or oSandbag.anim=7)
with oTrainer {trainingreact(1)
	if oPlayer.character=2 trainingnumbers+=1; ///Skips the other move below
	}}} break;
case 5: 
{
tutorialtext="NOW WHILE IN THE AIR, DO A DOWN ATTACK."
with oControl specialcommanddraw=function() {var commandMul=0; if global.ConsoleType="XBOX" commandMul=0; if global.ConsoleType="PS" commandMul=1; if global.ConsoleType="SWITCH" commandMul=2;
draw_buttontext(244+60-16,80,8,"",spr_commandbutton,4+6*commandMul,"","")
draw_buttontext(244+60+8,80,8,"▼",spr_commandbutton,6+6*commandMul,"","")
}
trainingdraw=function() {with oControl draw_buttontext(240+72,64+16-8+8,8,commandL[12],spr_commandbutton,0,"L","")}
with oSandbag sandbagreact=function() {
if (oPlayer.anim=15 and oPlayer.key_down) and (oSandbag.anim=4 or oSandbag.anim=5 or oSandbag.anim=7)
with oTrainer {trainingreact(1)}}} break;
	case 6: 
{
trainingdetect=function() {	
trainingreact(0)
tutorialtext="NOW FOR THE MORE ADVANCED MOVESET."}
} break;

	case 7: 
{
tutorialtext="GET CLOSE AND FACE AWAY FROM THEM AND USE"
with oControl specialcommanddraw=function() {var commandMul=0; if global.ConsoleType="XBOX" commandMul=0; if global.ConsoleType="PS" commandMul=1; if global.ConsoleType="SWITCH" commandMul=2;
draw_buttontext(244+60,80,8,"",spr_commandbutton,8+6*commandMul,"","")};
with oSandbag sandbagreact=function() {
if oPlayer.anim=84 and oSandbag.anim=5
with oTrainer {trainingreact(1)}}} break;

	case 8: 
{
tutorialtext="DO AN UPPERCUT WITH"
if oPlayer.character=1 tutorialtext="TURN INTO A BALL TO SLAM EM' WITH"
if oPlayer.character=2 tutorialtext="USE YOUR CRUSHING BLOW WITH"
if oPlayer.character=3 tutorialtext="DO YOUR SPIN KICK WITH"



with oControl specialcommanddraw=function() {var commandMul=0; if global.ConsoleType="XBOX" commandMul=0; if global.ConsoleType="PS" commandMul=1; if global.ConsoleType="SWITCH" commandMul=2;
draw_buttontext(244+60,80,8,"▼▲",spr_commandbutton,6+6*commandMul,"","")};

if oPlayer.character=2
{with oSandbag sandbagreact=function() {
if oPlayer.sprite_index=spr_bahati_attackair2 and oSandbag.anim>4
with oTrainer {trainingreact(1)}}}
else
{with oSandbag sandbagreact=function() {
if oPlayer.anim=80 and oSandbag.anim=5
with oTrainer {trainingreact(1)}}}


} break;
	case 9: 
{
tutorialtext="YOU CAN USE YOUR FIST AND ZOOM WITH"
if oPlayer.character=1 tutorialtext="WHIP EM' GOOD WITH YOUR STRETCHY ARM WITH"
if oPlayer.character=2 tutorialtext="GIVE EM' A GOOD BELLY BUMP WITH"
if oPlayer.character=3 tutorialtext="NOW GIVE EM' QUITE A KICK WITH"

with oControl specialcommanddraw=function() {var commandMul=0; if global.ConsoleType="XBOX" commandMul=0; if global.ConsoleType="PS" commandMul=1; if global.ConsoleType="SWITCH" commandMul=2;
draw_buttontext(244+60,80,8,"TAP ►",spr_commandbutton,6+6*commandMul,"","")};

with oSandbag sandbagreact=function() {
if oPlayer.anim=81 and oSandbag.anim=5
with oTrainer {trainingreact(1)}}} break;
	case 10: 
{
tutorialtext="NOW TO USE A CHARGE ATTACK"
with oControl specialcommanddraw=function() {var commandMul=0; if global.ConsoleType="XBOX" commandMul=0; if global.ConsoleType="PS" commandMul=1; if global.ConsoleType="SWITCH" commandMul=2;
draw_buttontext(244+60,80,8,"HOLD!",spr_commandbutton,6+6*commandMul,"","RELEASE")};

with oSandbag sandbagreact=function() {
if oPlayer.anim=85 and (oSandbag.anim>4)
with oTrainer {trainingreact(1)}}} break;

case 11: {
tutorialtext="TO GRAB EM' GET CLOSE AND PUMMEL"
if oPlayer.character=2 tutorialtext="TO GRAB EM' GET CLOSE AND GIVE EM' A GOOD SQUEEZE"

with oControl specialcommanddraw=function() {var commandMul=0; if global.ConsoleType="XBOX" commandMul=0; if global.ConsoleType="PS" commandMul=1; if global.ConsoleType="SWITCH" commandMul=2;
draw_buttontext(244+60,80,8,"GRAB",spr_commandbutton,6+6*commandMul,"","")};
trainingdetect=function() {
if oPlayer.anim=36 and oPlayer.anim!=35
with oTrainer {trainingreact(1)}}} break;

case 12: {specialcheck[1]="GRAB►" specialcheck[2]=37
tutorialtext="GRAB EM' AGAIN AND THROW WITH"
if oPlayer.character=2 {specialcheck[2]=38 tutorialtext="GRAB EM' AGAIN AND SLAM EM' WITH" specialcheck[1]="GRAB►OR◄"}
with oControl specialcommanddraw=function() {var commandMul=0; if global.ConsoleType="XBOX" commandMul=0; if global.ConsoleType="PS" commandMul=1; if global.ConsoleType="SWITCH" commandMul=2;
draw_buttontext(244+60,80,8,oTrainer.specialcheck[1],spr_commandbutton,6+6*commandMul,"","")};
trainingdetect=function() {
if oPlayer.anim=oTrainer.specialcheck[2] and oPlayer.anim!=35
with oTrainer {trainingreact(1)}}} break;

case 13: {specialcheck[2]=38 oTrainer.specialcheck[1]="GRAB◄"
tutorialtext="ONCE MORE AND THROW EM' BACKWARDS WITH"
if oPlayer.character=2 {specialcheck[2]=37 oTrainer.specialcheck[1]="AIR"  tutorialtext="ONCE MORE AND PILEDRIVE EM' WITH"}
with oControl specialcommanddraw=function() {var commandMul=0; if global.ConsoleType="XBOX" commandMul=0; if global.ConsoleType="PS" commandMul=1; if global.ConsoleType="SWITCH" commandMul=2;
draw_buttontext(244+60,80,8,oTrainer.specialcheck[1],spr_commandbutton,6+6*commandMul,"","")};
trainingdetect=function() {
if oPlayer.anim=oTrainer.specialcheck[2] and oPlayer.anim!=35
with oTrainer {trainingreact(1)}}} break;


case 14: 
{timertime=400
trainingdetect=function() {	with oPlayer canmove=0 
trainingreact(0) 
tutorialtext="OKAY WE MIGHT HAVE KINDA ROUGHED UP BAGGY TOO MUCH. SO LET'S BLOW EM' KISS."}
} break;

case 15: {timertime=160
tutorialtext="USE TAUNT WITH" 
with oControl specialcommanddraw=function() {var commandMul=0; if global.ConsoleType="XBOX" commandMul=0; if global.ConsoleType="PS" commandMul=1; if global.ConsoleType="SWITCH" commandMul=2;
draw_buttontext(244+60,80,8,"",spr_commandbutton,9+6*commandMul,"","")};
trainingdetect=function() {
if oPlayer.anim=83
with oTrainer {trainingreact(1)}}} break;

case 16: 
{timertime=400
trainingdetect=function() {	with oPlayer canmove=0 
trainingreact(0) 
tutorialtext="NOW FOR THE SPECIALS. THEY CAN BE USED FOR STRONGER MOVES BUT THEY DRAIN YOUR HEALTH. SO TAKE IT EASY ON EM'."}
} break;

case 17: {timertime=160	with oPlayer canmove=1
tutorialtext="USE YOUR FIRST SPECIAL WITH"
with oControl specialcommanddraw=function() {var commandMul=0; if global.ConsoleType="XBOX" commandMul=0; if global.ConsoleType="PS" commandMul=1; if global.ConsoleType="SWITCH" commandMul=2;
draw_buttontext(244+60,80,8,"",spr_commandbutton,5+6*commandMul,"","")};

with oSandbag sandbagreact=function() {
if oPlayer.anim=17 and oSandbag.anim>5
with oTrainer {trainingreact(1)}}} break;

case 18: {
tutorialtext="NOW YOUR OTHER SPECIAL. MOVE AND USE"
with oControl specialcommanddraw=function() {var commandMul=0; if global.ConsoleType="XBOX" commandMul=0; if global.ConsoleType="PS" commandMul=1; if global.ConsoleType="SWITCH" commandMul=2;
draw_buttontext(244+60,80,8,"►",spr_commandbutton,5+6*commandMul,"","")};

with oSandbag sandbagreact=function() {
if oPlayer.anim=18 and oSandbag.anim>4
with oTrainer {trainingreact(1)}}} break;
////Training Parts

case 19: 
{timertime=400 with oPlayer {canControl=0 } alarm[0]=3400 locksuper=0
trainingdetect=function() {	 
trainingreact(0) 
tutorialtext="AND NOW FOR THE GRAND FINALE. SHOWTIME. YOU CAN FILL YOUR BAR BY DEALING OR TAKING DAMAGE."}
} break;

case 20: 
{timertime=160 with oPlayer canControl=1 oPlayer.super=100
tutorialtext="TO USE YOUR SHOWTIME USE"
with oControl specialcommanddraw=function() {var commandMul=0; if global.ConsoleType="XBOX" commandMul=0; if global.ConsoleType="PS" commandMul=1; if global.ConsoleType="SWITCH" commandMul=2;
draw_buttontext(244+60,80,8,"",spr_commandbutton,7+6*commandMul,"","")};
trainingdetect=function() {	 if oPlayer.anim=50 detectsuper=4 else detectsuper-=1 
	
	if oSandbag.anim>4 and detectsuper=2 {trainingreact(1) PlaySound(snd_olga4) tutorialwords=0 tutorialtext="PERFECT!" }
	} 

} break;

case 21: 
{
	
with oPlayer {canControl=0
	
	global.TrainingClear[character+1]=1
	with oControl unlock_save()
	feats_check(11)
	} alarm[0]=160 
trainingdetect=function() {	 
trainingreact(0) 
tutorialtext="AND THAT IS IT FOR THE TRAINING."}
} break;

case 22: 
{with oPlayer canControl=0
trainingdetect=function() {	 
trainingreact(0) 
tutorialtext="A'IGHT. BEAT UP BAGGY HERE TO YOUR HEART'S CONTENT."}
} break;
} break;

}
trainingcheck+=1;