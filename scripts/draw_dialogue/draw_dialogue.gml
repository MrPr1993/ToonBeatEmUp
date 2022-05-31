// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_dialogue(){
/// @description Insert description here
// You can write your code in this editor
/// @description  Draw the string and the box

messagesize=2 goout=0 skip=0
dialogue=cutsceneline

if goout=0
{
if messagesize>1
{
//Set the color to white
draw_set_color(c_white);

//Are we past the width? Insert a line break
//This has to be before getting the lase_space variable or it won't work right
//if (string_width(str) > width-padding-padding) {
// Remove the space and replace it with a line break
//dialogue = string_delete(dialogue,last_space,1);
//dialogue = string_insert("#",dialogue,last_space);
//ds_list_add(start,last_space+1);
//}
if skip=0
{
}
//Make sure we have not reached the end of the message
if (count < string_length(dialogue)) {
// Are we at a space? Set the last space variable
if (string_char_at(dialogue, count) == " ") {
last_space = count;
}

//Increment the count
if skip=0
{//sound_stop(snd_dialogue) sound_play(snd_dialogue) 
textBufferMax=2
if textBuffer=0 {count++ textBuffer=textBufferMax} else textBuffer-=1

};
else
{
count=string_length(dialogue)
}
}
else {skip=1 if questionsize<1 questionsize+=0.1}

//Did we go past the bottom? Move up a line
if (string_height(string_hash_to_newline(str)) > height-padding) {
line++;
}

// Grab the string
str = string_copy(dialogue,ds_list_find_value(start, line), count-ds_list_find_value(start,line) );

draw_text(round(4+textadd), round(220-16), string_hash_to_newline(str));

// Draw the text
//if name=0
//draw_text(round(16+8+4-padding+textadd), round(8+104-height/2+8), string_hash_to_newline(str));
//else
//draw_text(round(16+8+4-padding+textadd), round(8+104-height/2), string_hash_to_newline(name+string("\n")+string(str)));

//question=4
}
else
{
messagesize+=0.1
}
}
else
{
if messagesize>0 {messagesize-=0.1 questionsize-=0.1}
else
{
event_user(1)
instance_destroy()
}
}
}

