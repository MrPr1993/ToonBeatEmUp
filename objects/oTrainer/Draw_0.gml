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

if tutorialquestionpick=0 {}
else
{PlaySound(snd_picked) with oPlayer canControl=1 tutorialquestion=0 tutorialtext="A'IGHT. BEAT UP BAGGY HERE TO YOUR HEART'S CONTENT."}

draw_text(244+8-8,64+16-8+8*tutorialquestionpick,string("✰")) draw_text(244+8,56+16,string(tutorialchar)+"'S TRAINING")
draw_text(244+8,64+16,string("FREE TRAINING"))
}

draw_self()
//draw_set_halign(fa_left)


