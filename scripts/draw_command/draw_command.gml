// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_command(){
var commandType=argument0;
var commandMul=0;
if global.ConsoleType="XBOX" commandMul=0;
if global.ConsoleType="PS" commandMul=1;
if global.ConsoleType="SWITCH" commandMul=2;


if global.ConsoleType="PC"
{
if commandType=0
{
///Menu
draw_buttontext(8,240-32-16,8,"",spr_commandbutton,0,"J","SELECT")
draw_buttontext(8,240-32,8,"",spr_commandbutton,2,"","CANCEL")
}

if commandType=1
{
///Menu
draw_buttontext(8,240-32,8,"",spr_commandbutton,0,"J","SELECT")
draw_buttontext(8,240-32+16,8,"",spr_commandbutton,2,"","CANCEL") 
}

if commandType=2
{
draw_buttontext(8,8,8,"",spr_commandbutton,0,"J","SELECT")
draw_buttontext(8,8+16,8,"",spr_commandbutton,2,"","CANCEL")
if global.UnlockAltPal=1
draw_buttontext(320-8,8,8,"PALETTE",spr_commandbutton,0,"H","")

}

if commandType=3
{
draw_buttontext(320-8,240-16,8,"CANCEL",spr_commandbutton,2,"","")
 if hasVariants=1
 {
//draw_text(224+8,0,"\nPRESS J TO SWITCH\nVARIATION ("+string(dataPal)+string("/")+string(dataPalMax)+")") //Name
 draw_buttontext(224+8-70-1,8,8,"",spr_commandbutton,0,"J","TO SWITCH VARATION\n      ("+string(dataPal)+string("/")+string(dataPalMax)+")")
 }}

if commandType=4
{
draw_buttontext(320-8,8,8,"SELECT",spr_commandbutton,0,"J","")
draw_buttontext(320-8,8+16,8,"CANCEL",spr_commandbutton,2,"","") 
}

if commandType=5
{
///Menu
draw_buttontext(8,8,8,"",spr_commandbutton,2,"","CANCEL") 
draw_buttontext(320-8-16,8,8,"ZOOM",spr_commandbutton,0,"J","")
draw_buttontext(320-8,8,8,"/",spr_commandbutton,0,"L","")
draw_buttontext(320-8,8+16,8,"HIDE TEXT",spr_commandbutton,0,"H","")
draw_buttontext(160-16,8,8,"PREV",spr_commandbutton,0,"Y","")
draw_buttontext(160+16,8,8,"",spr_commandbutton,0,"U","NEXT")
}

if commandType=6
{
///Menu
if songtext=1
{
draw_buttontext(8,240-32,8,"",spr_commandbutton,0,"J","SELECT")
draw_buttontext(8,240-32+16,8,"",spr_commandbutton,2,"","CANCEL") 
draw_buttontext(320-8,240-32,8,"LOOP",spr_commandbutton,0,"L","")
draw_buttontext(320-8,240-32+16,8,"HIDE",spr_commandbutton,0,"H","")
}
}

if commandType=7
{
draw_buttontext(8,8+16,8,"",spr_commandbutton,2,"","EXIT")
}

if commandType=8
{
///Menu
draw_buttontext(8,240-32,8,"",spr_commandbutton,0,"J","SELECT")
}
}
else
{
if commandType=0
{
///Menu
draw_buttontext(8,240-32-16,8,"",spr_commandbutton,4+6*commandMul,"","SELECT")
draw_buttontext(8,240-32,8,"",spr_commandbutton,5+6*commandMul,"","CANCEL")
}

if commandType=1
{
///Menu
draw_buttontext(8,240-32,8,"",spr_commandbutton,4+6*commandMul,"","SELECT")
draw_buttontext(8,240-32+16,8,"",spr_commandbutton,5+6*commandMul,"","CANCEL") 
}

if commandType=2
{
draw_buttontext(8,8,8,"",spr_commandbutton,4+6*commandMul,"","SELECT")
draw_buttontext(8,8+16,8,"",spr_commandbutton,5+6*commandMul,"","CANCEL")
if global.UnlockAltPal=1
draw_buttontext(320-8,8,8,"PALETTE",spr_commandbutton,7+6*commandMul,"","")

}

if commandType=3
{
draw_buttontext(320-8,240-16,8,"CANCEL",spr_commandbutton,5+6*commandMul,"","")
 if hasVariants=1
 {
//draw_text(224+8,0,"\nPRESS J TO SWITCH\nVARIATION ("+string(dataPal)+string("/")+string(dataPalMax)+")") //Name
 draw_buttontext(224+8-70-1,8,8,"",spr_commandbutton,4+6*commandMul,"","TO SWITCH VARATION\n      ("+string(dataPal)+string("/")+string(dataPalMax)+")")
 }}

if commandType=4
{
draw_buttontext(320-8,8,8,"SELECT",spr_commandbutton,4+6*commandMul,"","")
draw_buttontext(320-8,8+16,8,"CANCEL",spr_commandbutton,5+6*commandMul,"","") 
}

if commandType=5
{
///Menu
draw_buttontext(8,8+8,8,"",spr_commandbutton,5+6*commandMul,"","CANCEL") 
draw_buttontext(320-8-16,8,8,"ZOOM",spr_commandbutton,4+6*commandMul,"","")
draw_buttontext(320-8,8,8,"/",spr_commandbutton,6+6*commandMul,"","")
draw_buttontext(320-8,8+16,8,"HIDE TEXT",spr_commandbutton,7+6*commandMul,"","")
draw_buttontext(160-16,8,8,"PREV",spr_commandbutton,8+6*commandMul,"","")
draw_buttontext(160+16,8,8,"",spr_commandbutton,9+6*commandMul,"","NEXT")
}

if commandType=6
{
///Menu
if songtext=1
{
draw_buttontext(8,240-32,8,"",spr_commandbutton,4+6*commandMul,"","SELECT")
draw_buttontext(8,240-32+16,8,"",spr_commandbutton,5+6*commandMul,"","CANCEL") 
draw_buttontext(320-8,240-32,8,"LOOP",spr_commandbutton,6+6*commandMul,"","")
draw_buttontext(320-8,240-32+16,8,"HIDE",spr_commandbutton,7+6*commandMul,"","")
}
}

if commandType=7
{
draw_buttontext(8,8+16,8,"",spr_commandbutton,5+6*commandMul,"","CANCEL") 
}

if commandType=8
{
///Menu
draw_buttontext(8,240-32,8,"",spr_commandbutton,4+6*commandMul,"","SELECT")
}
}

}