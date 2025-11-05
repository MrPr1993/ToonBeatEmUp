/// @description Insert description here
// You can write your code in this editor

with oPlayer key_right=0
////Dialogue Here
switch(trainingcheck)
{
case 0:alarm[0]=300 tutorialchar=oPlayer.name


switch(oPlayer.character)
{
	case 0: tutorialtext="WELL WELL IF IT ISN'T VIVA. STILL NO MEAT IN YOUR BONES? OR YOUR WAISTLINE?" break;
	case 1: tutorialtext="SO YOU COME TO TRAIN HINA? HOW FLEXIBLE ARE YOU, STRETCH?" break;
	case 2: tutorialtext="BAHATI! GOOD TO SEE YA HERE TO WORK ON YOUR WRESTLING SKILLS!" break;
	case 3: tutorialtext="IF IT AIN'T SHORTY SOFIA. COMIN' HERE TO WORK ON YOUR THICK LEGS?" break;
}
switch(global.Language)
{
case 2: ///Portuguese
switch(oPlayer.character)
{
	case 0: tutorialtext="ORA ORA SE NÃO É A VIVA. AINDA SEM CARNE NESSES OSSOS? OU CINTURA?" break;
	case 1: tutorialtext="ENTÃO VOCÊ VEIO SE ALONGAR HINA? VEIO ESTICAR AS PERNAS?" break;
	case 2: tutorialtext="BAHATI! QUE BOM TE VER TREINANDO SUA HABILIDADES DE LUTA POR AQUI!" break;
	case 3: tutorialtext="MAS SE NÃO É A SOFIAZINHA. VEIO AQUI AQUECER ESSAS ENORMES COXAS?" break;
}
break;

}
break;
case 1:canControl=1
tutorialtext="ALRIGHT. PICK YOUR CHOICE."
switch(global.Language)
{
case 2: ///Portuguese
tutorialtext="CERTO. FAÇA SUA ESCOLHA."
break;
}
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

switch(global.Language)
{
case 2: ///Portuguese
tutorialtext="SE APROXIME DO BOCÓ E SOQUE COM"
if oPlayer.character=3 tutorialtext="SE APROXIME DO BOCÓ E CHUTE COM"
break;
}

with oControl specialcommanddraw=function() {var commandMul=0; if global.ConsoleType="XBOX" commandMul=0; if global.ConsoleType="PS" commandMul=1; if global.ConsoleType="SWITCH" commandMul=2;
draw_buttontext(244+60,80,8,"",spr_commandbutton,6+6*commandMul,"","")};
with oSandbag sandbagreact=function() {
if oPlayer.anim=10 and oSandbag.anim=4 and oSandbag.AnimFrame<0.5
with oTrainer {trainingreact(1)}}} break;
case 1: 
{
tutorialtext="DO A COMBO AND TRY TO KNOCK EM' DOWN!"

switch(global.Language)
{
case 2: ///Portuguese
tutorialtext="FAÇA UMA SEQUÊNCIA E TENTE NOCAUTEA-LO!"
break;
}

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

switch(global.Language)
{
case 2: ///Portuguese
tutorialtext="AGORA CORRA E FAÇA UMA INVESTIDA COM"
break;
}

with oControl specialcommanddraw=function() {var commandMul=0; if global.ConsoleType="XBOX" commandMul=0; if global.ConsoleType="PS" commandMul=1; if global.ConsoleType="SWITCH" commandMul=2;
draw_buttontext(244+60,80,8,"►►",spr_commandbutton,6+6*commandMul,"","")};
with oSandbag sandbagreact=function() {
if oPlayer.anim=16 and (oSandbag.anim=5)
with oTrainer {trainingreact(1)}}} break;
case 3: 
{
var _tt="DO A JUMP AND KICK! STAY STILL."
if oPlayer.character=2 _tt="DO A FLYING MOVE! STAY STILL."
switch(global.Language)
{
case 2: ///Portuguese
_tt="PULE E CHUTE! SEM ANDAR."
if oPlayer.character=2 _tt="DÊ UM GOLPE VOADOR! SEM ANDAR."
break;
}

tutorialtext=_tt;

if oPlayer.character=2 {

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
var _tt="DO A JUMP AND KICK! STAY STILL."
if oPlayer.character=2 _tt="DO A FLYING MOVE! STAY STILL."
switch(global.Language)
{
case 2: ///Portuguese
_tt="AGORA FAÇA ISSO ENQUANTO SE MEXE."
if oPlayer.character=2 _tt="DÊ SEU CHUTE VOADOR. PULE ENQUANTO ANDA!"
break;
}	

tutorialtext=_tt
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

switch(global.Language)
{
case 2: ///Portuguese
tutorialtext="AGORA ENQUANTO ESTA NO AR, DÊ UM ATAQUE RASANTE."
break;
}

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
tutorialtext="NOW FOR THE MORE ADVANCED MOVESET."
switch(global.Language)
{
case 2: ///Portuguese
tutorialtext="VAMOS PARA TÉCNICAS MAIS AVANÇADAS AGORA."
break;
}

}
} break;

	case 7: 
{
tutorialtext="GET CLOSE AND FACE AWAY FROM THEM AND USE"

switch(global.Language)
{
case 2: ///Portuguese
tutorialtext="SE APROXIME, FIQUE DE COSTAS E USE"
break;
}

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

switch(global.Language)
{
case 2: ///Portuguese
tutorialtext="DÊ UM GANCHO ASCENDENTE COM"
if oPlayer.character=1 tutorialtext="VIRE UMA BOLA E SE ATIRE COM"
if oPlayer.character=2 tutorialtext="USE SUA PANCADA ESMAGADORA COM"
if oPlayer.character=3 tutorialtext="DÊ SEU CHUTE GIRATÓRIO COM"
break;
}

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

switch(global.Language)
{
case 2: ///Portuguese
tutorialtext="VOCÊ PODE SOCAR EM UM ARRANQUE COM"
if oPlayer.character=1 tutorialtext="DÊ BOAS CHICOTADAS ESTICANDO SEUS BRAÇOS COM"
if oPlayer.character=2 tutorialtext="DÊ UMA BOA BARRIGADA COM"
if oPlayer.character=3 tutorialtext="AGORA DÊ A ELE UM BAITA CHUTE COM"
break;
}


with oControl specialcommanddraw=function() {var commandMul=0; if global.ConsoleType="XBOX" commandMul=0; if global.ConsoleType="PS" commandMul=1; if global.ConsoleType="SWITCH" commandMul=2;
draw_buttontext(244+60,80,8,"TAP ►",spr_commandbutton,6+6*commandMul,"","")};

with oSandbag sandbagreact=function() {
if oPlayer.anim=81 and oSandbag.anim=5
with oTrainer {trainingreact(1)}}} break;
	case 10: 
{
tutorialtext="NOW TO USE A CHARGE ATTACK"
var _tt="HOLD!"
var _tt2="RELEASE"
switch(global.Language)
{
case 2: ///Portuguese
tutorialtext="AGORA USE UM ATAQUE CARREGADO"
_tt="SEGURE!" _tt2="SOLTE"
break;
}
translated[0]=_tt
translated[1]=_tt2

with oControl specialcommanddraw=function() {var commandMul=0; if global.ConsoleType="XBOX" commandMul=0; if global.ConsoleType="PS" commandMul=1; if global.ConsoleType="SWITCH" commandMul=2;
draw_buttontext(244+60,80,8,oTrainer.translated[0],spr_commandbutton,6+6*commandMul,"",oTrainer.translated[1])};

with oSandbag sandbagreact=function() {
if oPlayer.anim=85 and (oSandbag.anim>4)
with oTrainer {trainingreact(1)}}} break;

case 11: {
var _tt="TO GRAB EM' GET CLOSE AND PUMMEL"
var _tt2="GRAB"
if oPlayer.character=2 _tt="TO GRAB EM' GET CLOSE AND GIVE EM' A GOOD SQUEEZE"
switch(global.Language)
{
case 2: ///Portuguese
_tt="PARA AGARRAR-LOS, SE APROXIME E META A PORRADA"
if oPlayer.character=2 _tt="PARA AGARRAR-LOS, SE APROXIME E DÊ UM BOM ABRAÇO"
var _tt2="AGARRÃO"
break;
}
translated[0]=_tt2

with oControl specialcommanddraw=function() {var commandMul=0; if global.ConsoleType="XBOX" commandMul=0; if global.ConsoleType="PS" commandMul=1; if global.ConsoleType="SWITCH" commandMul=2;
draw_buttontext(244+60,80,8,oTrainer.translated[0],spr_commandbutton,6+6*commandMul,"","")};
trainingdetect=function() {
if oPlayer.anim=36 and oPlayer.anim!=35
with oTrainer {trainingreact(1)}}} break;

case 12: {	 specialcheck[2]=37
specialcheck[1]="GRAB►"
tutorialtext="GRAB EM' AGAIN AND THROW WITH"
var _tt="GRAB EM' AGAIN AND SLAM EM' WITH"
var _tt2="GRAB►O◄"
switch(global.Language)
{
case 2: ///Portuguese
specialcheck[1]="AGARRÃO►"
tutorialtext="AGARRE-OS DE NOVO E ARREMEÇE COM"
_tt="PEGUE-OS NOVAMENTE E ESMAGUE-OS COM"
_tt2="AGARRÃO►O◄"
break;
}
translated[0]=_tt
translated[1]=_tt2


if oPlayer.character=2 {specialcheck[2]=38 tutorialtext=translated[0] specialcheck[1]=translated[1]}
with oControl specialcommanddraw=function() {var commandMul=0; if global.ConsoleType="XBOX" commandMul=0; if global.ConsoleType="PS" commandMul=1; if global.ConsoleType="SWITCH" commandMul=2;
draw_buttontext(244+60,80,8,oTrainer.specialcheck[1],spr_commandbutton,6+6*commandMul,"","")};
trainingdetect=function() {
if oPlayer.anim=oTrainer.specialcheck[2] and oPlayer.anim!=35
with oTrainer {trainingreact(1)}}} break;

case 13: {specialcheck[2]=38 

translated[0]="GRAB◄"
translated[1]="ONCE MORE AND THROW EM' BACKWARDS WITH"
translated[2]="AIR" 
translated[3]="ONCE MORE AND PILEDRIVE EM' WITH"

switch(global.Language)
{
case 2: ///Portuguese
translated[0]="AGARRÃO◄"
translated[1]="REPITA E OS ARREMEÇE PARA TRÁS COM"
translated[2]="NO AR" 
translated[3]="REPITA E DÊ UM PILEDRIVE COM"
break;
}

oTrainer.specialcheck[1]=translated[0]
tutorialtext=translated[2]
if oPlayer.character=2 {specialcheck[2]=37 oTrainer.specialcheck[1]=translated[2] tutorialtext=translated[3]}
with oControl specialcommanddraw=function() {var commandMul=0; if global.ConsoleType="XBOX" commandMul=0; if global.ConsoleType="PS" commandMul=1; if global.ConsoleType="SWITCH" commandMul=2;
draw_buttontext(244+60,80,8,oTrainer.specialcheck[1],spr_commandbutton,6+6*commandMul,"","")};
trainingdetect=function() {
if oPlayer.anim=oTrainer.specialcheck[2] and oPlayer.anim!=35
with oTrainer {trainingreact(1)}}} break;


case 14: 
{timertime=400
trainingdetect=function() {	with oPlayer canmove=0 
trainingreact(0) 
tutorialtext="OKAY WE MIGHT HAVE KINDA ROUGHED UP BAGGY TOO MUCH. SO LET'S BLOW EM' KISS."

switch(global.Language)
{
case 2: ///Portuguese
tutorialtext="OKAY ACHO QUE FOMOS CRUÉIS DEMAIS COM O BOCÓ. ENTÃO RECOMPENSE ELE COM UM BEIJO."
break;
}

}
} break;

case 15: {timertime=160
tutorialtext="USE TAUNT WITH" 

switch(global.Language)
{
case 2: ///Portuguese
tutorialtext="PROVOQUE COM"
break;
}

with oControl specialcommanddraw=function() {var commandMul=0; if global.ConsoleType="XBOX" commandMul=0; if global.ConsoleType="PS" commandMul=1; if global.ConsoleType="SWITCH" commandMul=2;
draw_buttontext(244+60,80,8,"",spr_commandbutton,9+6*commandMul,"","")};
trainingdetect=function() {
if oPlayer.anim=83
with oTrainer {trainingreact(1)}}} break;

case 16: 
{timertime=400
trainingdetect=function() {	with oPlayer canmove=0 
trainingreact(0) 
tutorialtext="NOW FOR THE SPECIALS. THEY CAN BE USED FOR STRONGER MOVES BUT THEY DRAIN YOUR HEALTH. SO TAKE IT EASY ON EM'."

switch(global.Language)
{
case 2: ///Portuguese
tutorialtext="AGORA PARA OS ESPECIAIS. ELES SÃO ATAQUES MAIS FORTES MAS ELES DRENAM SUA SAÚDE. ENTÃO PEGUE LEVE."
break;
}

}
} break;

case 17: {timertime=160	with oPlayer canmove=1
tutorialtext="USE YOUR FIRST SPECIAL WITH"

switch(global.Language)
{
case 2: ///Portuguese
tutorialtext="USE SEU ESPECIAL PRIMÁRIO COM"
break;
}

with oControl specialcommanddraw=function() {var commandMul=0; if global.ConsoleType="XBOX" commandMul=0; if global.ConsoleType="PS" commandMul=1; if global.ConsoleType="SWITCH" commandMul=2;
draw_buttontext(244+60,80,8,"",spr_commandbutton,5+6*commandMul,"","")};

with oSandbag sandbagreact=function() {
if oPlayer.anim=17 and oSandbag.anim>5
with oTrainer {trainingreact(1)}}} break;

case 18: {
tutorialtext="NOW YOUR OTHER SPECIAL. MOVE AND USE"

switch(global.Language)
{
case 2: ///Portuguese
tutorialtext="AGORA SEU OUTRO ESPECIAL. ANDE E USE"
break;
}

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
tutorialtext="AND NOW FOR THE GRAND FINALE. SHOWTIME. YOU CAN FILL YOUR BAR BY DEALING OR TAKING DAMAGE."

switch(global.Language)
{
case 2: ///Portuguese
tutorialtext="E PARA O GRAND FINALE. ESPETÁCULO. VOCÊ PODE ENCHER SUA BARRA BATENDO OU APANHANDO."
break;
}

}
} break;

case 20: 
{timertime=160 with oPlayer canControl=1 oPlayer.super=100
tutorialtext="TO USE YOUR SHOWTIME USE"

switch(global.Language)
{
case 2: ///Portuguese
tutorialtext="FAÇA O SEU ESPETÁCULO COM."
break;
}

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
tutorialtext="AND THAT IS IT FOR THE TRAINING."

switch(global.Language)
{
case 2: ///Portuguese
tutorialtext="E ISSO É TUDO DESSE TREINO."
break;
}

}
} break;

case 22: 
{with oPlayer canControl=0
trainingdetect=function() {	 
trainingreact(0) 
tutorialtext="A'IGHT. BEAT UP BAGGY HERE TO YOUR HEART'S CONTENT."

switch(global.Language)
{
case 2: ///Portuguese
tutorialtext="BELEZA. PODE BATER NESSE BOCÓ AQUI ATÉ SE CANSAR."
break;
}

}
} break;
} break;

}
trainingcheck+=1;