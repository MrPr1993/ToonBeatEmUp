/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
/// @description  Create some variables
width = 320;
height = 224;
padding = 16;
start = 16;

canControl=1
controlNO=1

/// Keep track of the starting line
start = ds_list_create( );
ds_list_add(start,0);

// Keep track of the last space and current position
count = 0;
last_space = 0;
line = 0;

// Set the message
dialogue = "I need this message to be quite a bit longer so I can test some of the code I'm working on. The goal is to get this working so that I can show Everyone."
str = "";

dialogueamount=0
dialoguemax=0
dialogue[99]=1
dialogue[0]="Dialogue1Dialogue1Dialogue1Dialogue1 Dialogue1Dialogue1"
dialogue[1]="Dialogue2Dialogue1Dialogue1Dialogue1 Dialogue1Dialogue1"
dialogue[2]="Dialogue3Dialogue1Dialogue1Dialogue1 Dialogue1Dialogue1"
dialogue[3]="Dialogue4Dialogue1Dialogue1Dialogue1 Dialogue1Dialogue1"
dialogue[4]="Dialogue5Dialogue1Dialogue1Dialogue1 Dialogue1Dialogue1"
dialogue[5]="Dialogue6"
dialogue[6]="Dialogue7"
dialogue[7]="Dialogue8"
dialogue[8]="Dialogue9"
dialogue[9]="Dialogue10"

textalign=fa_left
textadd=0

skip=0
messagesize=0
questionsize=0
question=0
questionanswer=1
question1="question1"
question2="question2"
question3="question3"
question4="question4"

cutsceneline=""

goout=0

name=0

canControl=1

textBufferMax=4
textBuffer=0
controller_setup()

