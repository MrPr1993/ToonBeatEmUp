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
	if anim!=0 animFrame=0 anim=0 ground=1  canmove=1 y=ystart x=298}
with oSandbag {anim=0 animFrame=0 ground=1  canmove=1 y=ystart x=xstart}
if instance_exists(oFlashFX) with oFlashFX instance_destroy()
}

switch(trainingnumbers)
{
case 0: { with oPlayer canControl=1
tutorialtext="GET CLOSE TO BAGGY AND PRESS"
trainingdraw=function() {with oControl draw_buttontext(240+72,240-32,8,commandL[12],spr_commandbutton,0,"L","")}
with oSandbag sandbagreact=function() {
if oPlayer.anim=10 and oSandbag.anim=4 and oSandbag.animFrame<0.5
with oTrainer {trainingreact()}}} break;
case 1: 
{
tutorialtext="DO A COMBO AND TRY TO KNOCK EM' DOWN!"
trainingdraw=function() {with oControl draw_buttontext(240+72,240-32,8,commandL[12],spr_commandbutton,0,"L","")}
with oSandbag sandbagreact=function() {
if oPlayer.anim=14 and (oSandbag.anim=5)
with oTrainer {trainingreact()}}} break;
case 2: 
{
tutorialtext="NOW RUN AND DO A DASH ATTACK WITh"
trainingdraw=function() {with oControl draw_buttontext(240+72,240-32,8,commandL[12],spr_commandbutton,0,"L","")}
with oSandbag sandbagreact=function() {
if oPlayer.anim=16 and (oSandbag.anim=5)
with oTrainer {trainingreact()}}} break;
case 3: 
{
tutorialtext="DO A JUMP AND KICK! STAY STILL."
trainingdraw=function() {with oControl draw_buttontext(240+72,64+16-8+8,8,commandL[12],spr_commandbutton,0,"L","")}
with oSandbag sandbagreact=function() {
if oPlayer.anim=15 and oPlayer.key_down=0 and oPlayer.sentflying=0 and (oSandbag.anim=5 or oSandbag.anim=7) and oSandbag.animFrame<1
with oTrainer {trainingreact()}}} break;
case 4: 
{
tutorialtext="NOW DO IT WHILE MOVING."
trainingdraw=function() {with oControl draw_buttontext(240+72,64+16-8+8,8,commandL[12],spr_commandbutton,0,"L","")}
with oSandbag sandbagreact=function() {
if (oPlayer.anim=15 and oPlayer.key_down=0 and oPlayer.sentflying!=0) and (oSandbag.anim=5 or oSandbag.anim=7)
with oTrainer {trainingreact()}}} break;
case 5: 
{
tutorialtext="NOW WHILE IN THE AIR, DO A DOWN ATTACK."
trainingdraw=function() {with oControl draw_buttontext(240+72,64+16-8+8,8,commandL[12],spr_commandbutton,0,"L","")}
with oSandbag sandbagreact=function() {
if (oPlayer.anim=15 and oPlayer.key_down) and (oSandbag.anim=4 or oSandbag.anim=5 or oSandbag.anim=7)
with oTrainer {trainingreact()}}} break;
	case 6: 
{
trainingdetect=function() {	
trainingreact()
tutorialtext="NOW FOR THE MORE ADVANCED MOVESET."}
} break;
	case 7: 
{
tutorialtext="DO AN UPPERCUT WITH"
trainingdraw=function() {with oControl draw_buttontext(240+72,240-32,8,commandL[12],spr_commandbutton,0,"L","")}
with oSandbag sandbagreact=function() {
if oPlayer.anim=80 and oSandbag.anim=5
with oTrainer {trainingreact()}}} break;
	case 8: 
{
tutorialtext="YOU CAN USE YOUR FIST AND ZOOM WITH"
trainingdraw=function() {with oControl draw_buttontext(240+72,240-32,8,commandL[12],spr_commandbutton,0,"L","")}
with oSandbag sandbagreact=function() {
if oPlayer.anim=81 and oSandbag.anim=5
with oTrainer {trainingreact()}}} break;
	case 9: 
{
tutorialtext="NOW TO CHARGE AND RELEASE WITH"
trainingdraw=function() {with oControl draw_buttontext(240+72,240-32,8,commandL[12],spr_commandbutton,0,"L","")}
with oSandbag sandbagreact=function() {
if oPlayer.anim=85 and (oSandbag.anim>5)
with oTrainer {trainingreact()}}} break;

case 10: {
tutorialtext="TO GRAB EM' GET CLOSE AND PUMMEL WITH"
trainingdraw=function() {with oControl draw_buttontext(240+72,240-32,8,commandL[12],spr_commandbutton,0,"L","")}
trainingdetect=function() {
if oPlayer.anim=36 and oPlayer.anim!=35
with oTrainer {trainingreact()}}} break;

case 11: {
tutorialtext="GRAB EM' AGAIN AND THROW WITH"
trainingdraw=function() {with oControl draw_buttontext(240+72,240-32,8,commandL[12],spr_commandbutton,0,"L","")}
trainingdetect=function() {
if oPlayer.anim=37 and oPlayer.anim!=35
with oTrainer {trainingreact()}}} break;

case 12: {
tutorialtext="ONCE MORE AND THROW EM' BACKWARDS WITH"
trainingdraw=function() {with oControl draw_buttontext(240+72,240-32,8,commandL[12],spr_commandbutton,0,"L","")}
trainingdetect=function() {
if oPlayer.anim=38 and oPlayer.anim!=35
with oTrainer {trainingreact()}}} break;


case 13: 
{alarm[0]=900
trainingdetect=function() {	with oPlayer canmove=0 
trainingreact() 
tutorialtext="NOW FOR THE SPECIALS. THEY CAN BE USED FOR STRONGER MOVES BUT THEY DRAIN YOUR HEALTH. SO TAKE IT EASY ON EM'."}
} break;

case 14: {	with oPlayer canmove=1
tutorialtext="USE YOUR FIRST SPECIAL WITH"
trainingdraw=function() {with oControl draw_buttontext(240+72,240-32,8,commandL[12],spr_commandbutton,0,"L","")}
with oSandbag sandbagreact=function() {
if oPlayer.anim=17 and oSandbag.anim>5
with oTrainer {trainingreact()}}} break;

case 15: {
tutorialtext="NOW YOUR OTHER SPECIAL. MOVE AND USE"
trainingdraw=function() {with oControl draw_buttontext(240+72,240-32,8,commandL[12],spr_commandbutton,0,"L","")}
with oSandbag sandbagreact=function() {
if oPlayer.anim=18 and oSandbag.anim>5
with oTrainer {trainingreact()}}} break;
////Training Parts

case 16: 
{with oPlayer {canControl=0 } alarm[0]=1000 locksuper=0
trainingdetect=function() {	 
trainingreact() 
tutorialtext="AND NOW FOR THE GRAND FINALE. SHOWTIME. YOU CAN FILL YOUR BAR BY DEALING OR TAKING DAMAGE."}
} break;

case 17: 
{with oPlayer canControl=1 tutorialtext="HAVE A GO WITH." oPlayer.super=100
trainingdetect=function() {	 if oPlayer.anim=50 detectsuper=4 else detectsuper-=1 
	
	if oSandbag.anim>4 and detectsuper=2 {trainingreact() tutorialtext="GREAT SHOW!" }
	} 

} break;

case 18: 
{with oPlayer canControl=0 alarm[0]=160
trainingdetect=function() {	 
trainingreact() 
tutorialtext="AND THAT IS IT FOR THE TRAINING."}
} break;

case 19: 
{with oPlayer canControl=0
trainingdetect=function() {	 
trainingreact() 
tutorialtext="A'IGHT. BEAT UP BAGGY HERE TO YOUR HEART'S CONTENT."}
} break;
} break;

}
trainingcheck+=1;