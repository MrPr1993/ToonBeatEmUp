/// @description Insert description here
// You can write your code in this editor


draw_set_font(global.scorefont)
draw_set_color(c_white) draw_set_alpha(1)
//draw_set_halign(fa_center)
//draw_text(380-72,48,tutorialtext)
if instance_exists(oTextBox) with oTextBox
{draw_dialogue()
draw_text_ext(244,48, string_hash_to_newline(string_upper(str)),0,140);

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
case 2: tutorialtext="OKAY, BIG GIRL. LET'S START." break;
case 3: tutorialtext="LET'S BEGIN, SHORTSTACK." break;
}



}
else
{PlaySound(snd_picked) with oPlayer {xstart=x canControl=1} locksuper=0 tutorialquestion=0 tutorialtext="A'IGHT. BEAT UP BAGGY HERE TO YOUR HEART'S CONTENT."}
draw_text(244+8-8,64+16-8+8*tutorialquestionpick,string("✰"))
if string_length(tutorialchar)<=4
draw_text(244+8,56+16,string(tutorialchar)+"'S TRAINING")
else
draw_text_transformed(244+8,56+16,string(tutorialchar)+"'S TRAINING",0.75,1,0)

draw_text(244+8,64+16,string("FREE TRAINING"))


trainingdraw()
}

with oControl draw_command(13)

draw_self()
//draw_set_halign(fa_left)


