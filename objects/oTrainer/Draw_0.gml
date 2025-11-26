/// @description Insert description here
// You can write your code in this editor
var _tt1="A'IGHT. BEAT UP BAGGY HERE TO YOUR HEART'S CONTENT."
var _tt2=string(tutorialchar)+"'S TRAINING"
var _tt3="FREE TRAINING"

switch(global.Language)
{
case 1:
var _tt1="MUY BIEN. AHORA GOLPEA A BAGGY TODO LO QUE QUIERAS."
var _tt2="ENTRE. DE "+string(tutorialchar)
var _tt3="ENTRE. LIVRE"
break;

case 2:
var _tt1="BELEZA. PODE BATER NESSE BOCÓ AQUI ATÉ SE CANSAR."
var _tt2="TREINO DE "+string(tutorialchar)
var _tt3="TREINO LIVRE"
break;
}

draw_set_font(global.scorefont)
draw_set_color(c_white) draw_set_alpha(1)
//draw_set_halign(fa_center)
//draw_text(380-72,48,tutorialtext)
if instance_exists(oTextBox) with oTextBox
{draw_dialogue()
draw_text_ext(244,48, string_hash_to_newline(string_upper(str)),8,140);

}
if tutorialquestion=1
{
controller_setup()
if key_up_pressed or -key_down_pressed {PlaySound(snd_select) tutorialquestionpick^=1;}

if key_A or key_B or key_X or key_Y or key_jump or key_attack

if tutorialquestionpick=0 {
PlaySound(snd_picked) tutorialquestion=0
alarm[0]=150 trainingcheck=12

switch(oPlayer.character)
{
case 0: tutorialtext="ALRIGHT, BONEY. LET'S BEGIN." break;
case 1: tutorialtext="RIGHT, RUBBERS. LET'S START" break;
case 2: tutorialtext="OKAY, BIG GIRL. LET'S GO." break;
case 3: tutorialtext="GET READY, SHORTSTACK." break;
}

switch(global.Language)
{
case 1:
switch(oPlayer.character)
{
case 0: tutorialtext="BIEN, FLACUCHA. VAMOS A EMPEZAR." break;
case 1: tutorialtext="BIEN, GOMITA. VAMOS A COMENZAR." break;
case 2: tutorialtext="MUY BIEN, GRANDOTA. VAMOS ALLÁ." break;
case 3: tutorialtext="PREPÁRATE, CHAPARRITA." break;
}
break;	

case 2:
switch(oPlayer.character)
{
case 0: tutorialtext="CERTO. HORA DE SE MEXER ESSE ESQUELETO." break;
case 1: tutorialtext="FANTÁSTICO, AMOEBA. É HORA DE BRINCAR." break;
case 2: tutorialtext="OKAY, COLOSSUS. VAMOS COMEÇAR." break;
case 3: tutorialtext="ATENÇÃO, TAMPINHA." break;
}
break;
}

}
else
{


PlaySound(snd_picked) with oPlayer {xstart=x canControl=1} locksuper=0 tutorialquestion=0 tutorialtext=_tt1}
draw_text(244+8-8,64+16-8+8*tutorialquestionpick,string("✰"))

if string_length(tutorialchar)<=4
draw_text(244+8,56+16,_tt2)
else
draw_text_transformed(244+8,56+16,_tt2,0.75,1,0)

draw_text(244+8,64+16,_tt3)


trainingdraw()
}

with oControl draw_command(13)

draw_self()
//draw_set_halign(fa_left)


