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
draw_buttontext(8,240-32-16,8,"",spr_commandbutton,0,"J",commandL[0])
draw_buttontext(8,240-32,8,"",spr_commandbutton,2,"",commandL[1])
}

if commandType=1
{
///Menu
draw_buttontext(8,240-32,8,"",spr_commandbutton,0,"J",commandL[0])
draw_buttontext(8,240-32+16,8,"",spr_commandbutton,2,"",commandL[1]) 
}

if commandType=2
{
draw_buttontext_ext(8,8,8,"",spr_commandbutton,0,"J",commandL[0],0.75,1,1,1,0.75,1.0)

if p5.difficultymode=0
{
draw_buttontext_ext(8,8+16,8,"",spr_commandbutton,2,"",commandL[1],0.75,1,1,1,0.75,1.0)
if global.UnlockAltPal=1
draw_buttontext_ext(320-8,8,8,commandL[2],spr_commandbutton,0,"H","",0.75,1,1,1,0.75,1.0)
}
else
{
draw_buttontext_ext(320-8,8,8,commandL[1],spr_commandbutton,2,"","",0.75,1,1,1,0.75,1.0)
if global.MultiVS=0
draw_buttontext(8,240-(8+16),8,"",spr_commandbutton,0,"H",commandL[22])
}

}

if commandType=3
{
draw_buttontext(320-8,240-16,8,commandL[1],spr_commandbutton,2,"","")
 if hasVariants=1
 {
//draw_text(224+8,0,"\nPRESS J TO SWITCH\nVARIATION ("+string(dataPal)+string("/")+string(dataPalMax)+")") //Name
 draw_buttontext(224+8-70-1,8,8,"",spr_commandbutton,0,"J",commandL[3]+"\n      ("+string(dataPal)+string("/")+string(dataPalMax)+")")
 }}

if commandType=4
{
draw_buttontext(320-8,8,8,commandL[0],spr_commandbutton,0,"J","")
draw_buttontext(320-8,8+16,8,commandL[1],spr_commandbutton,2,"","") 
}

if commandType=5
{
///Menu
draw_buttontext(8,8,8,"",spr_commandbutton,2,"",commandL[1]) 
draw_buttontext(320-8-16,8,8,commandL[4],spr_commandbutton,0,"J","")
draw_buttontext(320-8,8,8,"/",spr_commandbutton,0,"L","")
draw_buttontext(320-8,8+16,8,commandL[5],spr_commandbutton,0,"H","")
draw_buttontext(160-16,8,8,commandL[6],spr_commandbutton,0,"Y","")
draw_buttontext(160+16,8,8,"",spr_commandbutton,0,"U",commandL[7])
}

if commandType=6
{
///Menu
if songtext=1
{
draw_buttontext(8,240-32,8,"",spr_commandbutton,0,"J",commandL[0])
draw_buttontext(8,240-32+16,8,"",spr_commandbutton,2,"",commandL[1]) 
draw_buttontext(320-8,240-32,8,commandL[8],spr_commandbutton,0,"L","")
draw_buttontext(320-8,240-32+16,8,commandL[9],spr_commandbutton,0,"H","")
}
}

if commandType=7
{
draw_buttontext(8,8+16,8,"",spr_commandbutton,2,"",commandL[10])
}

if commandType=8
{
///Menu
draw_buttontext(8,240-32,8,"",spr_commandbutton,0,"J",commandL[0])
}

if commandType=9
{
///Menudraw_buttontext(8,240-32,8,"",spr_commandbutton,0,"J",commandL[0])
///Menu
draw_buttontext(8,240-24-4,8,"",spr_commandbutton,0,"J",oControl.commandL[0])
draw_buttontext(8,240-8-4,8,"",spr_commandbutton,0,"K",oControl.commandL[1])

if pickedcolor=1
draw_buttontext(45-32+32+64,184-16+8,8,"",spr_commandbutton,0,"L","",oControl.commandL[11])

draw_buttontext(320-8,240-32,8,commandL[12],spr_commandbutton,0,"H",oControl.commandL[12])



draw_buttontext(160-16,240-24+4,8,oControl.commandL[13],spr_commandbutton,0,"Y","")
draw_buttontext(160+16,240-24+4,8,"",spr_commandbutton,0,"U",oControl.commandL[14])

draw_buttontext(320-33,16,8,"",spr_commandbutton,0,"L","","")
draw_set_halign(fa_center)
draw_text(320-88,16+12,"")
draw_text(160,8,oControl.commandL[16])
draw_set_halign(fa_left)



}

if commandType=10
{draw_set_font(global.scorefont)
matrix_set(matrix_world,matrix_build(0,oControl.quakeFX,0,0,0,0,1,1,1))
///Slot Machine
draw_set_halign(fa_left)
var atext=oControl.commandL[17]; var btext=oControl.commandL[18];

if slotmachineplay=3 {atext=oControl.commandL[19]; btext=oControl.commandL[19];
	draw_buttontext(16,240-24-4,8,"",spr_commandbutton,0,"J",atext)
	}
else
{
draw_buttontext(16,190,8,"",spr_commandbutton,0,"J",string(atext)+" 10")
draw_buttontext(104,190,8,"",spr_commandbutton,0,"L",string(atext)+" 25")
draw_buttontext(192,190,8,"",spr_commandbutton,0,"H",string(atext)+" 50")
}

draw_buttontext(160,240-24-4,8,"",spr_commandbutton,0,"K",btext)

draw_set_halign(fa_right)
draw_text(128,240-24-4,string(moneyBet)+"$")

draw_set_halign(fa_center)
draw_text(160,240-12,string(global.Gold)+string("$"))

matrix_set(matrix_world,matrix_build_identity())

}

if commandType=11
{

draw_set_halign(fa_center) if Joystick=0 draw_text(80,32+16+8*15,oSettings.commandL[20]) else draw_text(80,32+16+8*15,oSettings.commandL[21])
draw_buttontext(80-16,32+16+8*16+8,8,"",spr_commandbutton,8,"Y","")
draw_buttontext(80+16,32+16+8*16+8,8,"",spr_commandbutton,9,"U","")
}

if commandType=12
{
draw_buttontext(8,240-32,8,"",spr_commandbutton,0,"J",commandL[0])
draw_buttontext(8,240-32+16,8,"",spr_commandbutton,2,"",commandL[1]) 
draw_buttontext(320-8,240-32,8,commandL[12],spr_commandbutton,0,"L","")
}

if commandType=13
specialcommanddraw();

if commandType=14
{
draw_buttontext(x+40-10,y+92,8,"",spr_commandbutton,0,"Y","")
draw_buttontext(x+40+10,y+92,8,"",spr_commandbutton,0,"U","")
}

}
else /////Controller
{
if commandType=0
{
///Menu
draw_buttontext(8,240-32-16,8,"",spr_commandbutton,4+6*commandMul,"",commandL[0])
draw_buttontext(8,240-32,8,"",spr_commandbutton,5+6*commandMul,"",commandL[1])
}

if commandType=1
{
///Menu
draw_buttontext(8,240-32,8,"",spr_commandbutton,4+6*commandMul,"",commandL[0])
draw_buttontext(8,240-32+16,8,"",spr_commandbutton,5+6*commandMul,"",commandL[1]) 
}

if commandType=2
{
draw_buttontext_ext(8,8,8,"",spr_commandbutton,4+6*commandMul,"",commandL[0],0.75,1,1,1,0.75,1.0)

if p5.difficultymode=0
{
if global.UnlockAltPal=1
draw_buttontext_ext(320-8,8,8,commandL[2],spr_commandbutton,7+6*commandMul,"","",0.75,1,1,1,0.75,1.0)
draw_buttontext_ext(8,8+16,8,"",spr_commandbutton,5+6*commandMul,"",commandL[1],0.75,1,1,1,0.75,1.0)
}
else
{
if global.MultiVS=0
draw_buttontext(8,240-(8+16),8,"",spr_commandbutton,7+6*commandMul,"",commandL[22])
draw_buttontext_ext(320-8,8,8,commandL[1],spr_commandbutton,5+6*commandMul,"","",0.75,1,1,1,0.75,1.0)
}
}

if commandType=3
{
draw_buttontext(320-8,240-16,8,commandL[1],spr_commandbutton,5+6*commandMul,"","")
 if hasVariants=1
 {
//draw_text(224+8,0,"\nPRESS J TO SWITCH\nVARIATION ("+string(dataPal)+string("/")+string(dataPalMax)+")") //Name
 draw_buttontext(224+8-70-1,8,8,"",spr_commandbutton,4+6*commandMul,"",commandL[3]+"\n      ("+string(dataPal)+string("/")+string(dataPalMax)+")")
 }}

if commandType=4
{
draw_buttontext(320-8,8,8,commandL[0],spr_commandbutton,4+6*commandMul,"","")
draw_buttontext(320-8,8+16,8,commandL[1],spr_commandbutton,5+6*commandMul,"","") 
}

if commandType=5
{
///Menu
draw_buttontext(8,8+8,8,"",spr_commandbutton,5+6*commandMul,"",commandL[1]) 
draw_buttontext(320-8-16,8,8,commandL[4],spr_commandbutton,4+6*commandMul,"","")
draw_buttontext(320-8,8,8,"/",spr_commandbutton,6+6*commandMul,"","")
draw_buttontext(320-8,8+16,8,commandL[5],spr_commandbutton,7+6*commandMul,"","")
draw_buttontext(160-16,8,8,commandL[6],spr_commandbutton,8+6*commandMul,"","")
draw_buttontext(160+16,8,8,"",spr_commandbutton,9+6*commandMul,"",commandL[7])
}

if commandType=6
{
///Menu
if songtext=1
{
draw_buttontext(8,240-32,8,"",spr_commandbutton,4+6*commandMul,"",commandL[0])
draw_buttontext(8,240-32+16,8,"",spr_commandbutton,5+6*commandMul,"",commandL[1]) 
draw_buttontext(320-8,240-32,8,commandL[8],spr_commandbutton,6+6*commandMul,"","")
draw_buttontext(320-8,240-32+16,8,commandL[9],spr_commandbutton,7+6*commandMul,"","")
}
}

if commandType=7
{
draw_buttontext(8,8+16,8,"",spr_commandbutton,5+6*commandMul,"",commandL[1]) 
}

if commandType=8
{
///Menu
draw_buttontext(8,240-32,8,"",spr_commandbutton,4+6*commandMul,"",commandL[0])
}
if commandType=9
{

///Menu
draw_buttontext(8,240-24-4,8,"",spr_commandbutton,4+6*commandMul,"",oControl.commandL[0])
draw_buttontext(8,240-8-4,8,"",spr_commandbutton,5+6*commandMul,"",oControl.commandL[1]) 

if pickedcolor=1
draw_buttontext(45-32+32+64,184-16+8,8,"",spr_commandbutton,10+6*commandMul,"",oControl.commandL[11])

draw_buttontext(320-8,240-32,8,oControl.commandL[12],spr_commandbutton,7+6*commandMul,"","")

draw_buttontext(160-16,240-24+4,8,oControl.commandL[13],spr_commandbutton,8+6*commandMul,"","")
draw_buttontext(160+16,240-24+4,8,"",spr_commandbutton,9+6*commandMul,"",oControl.commandL[14])

draw_buttontext(320-33,16,8,"",spr_commandbutton,10+6*commandMul,"","")
draw_set_halign(fa_center)
draw_text(320-88,16+12,"")
draw_text(160,8,oControl.commandL[16])
draw_set_halign(fa_left)
}



if commandType=10
{draw_set_font(global.scorefont)
matrix_set(matrix_world,matrix_build(0,oControl.quakeFX,0,0,0,0,1,1,1))
///Slot Machine
draw_set_halign(fa_left)
var atext=oControl.commandL[17]; var btext=oControl.commandL[18];

if slotmachineplay=3 {atext=oControl.commandL[19]; btext=oControl.commandL[19];
	draw_buttontext(16,240-24-4,8,"",spr_commandbutton,4+6*commandMul,"",atext)
	}
else
{
draw_buttontext(16,190,8,"",spr_commandbutton,4+6*commandMul,"",string(atext)+" 10")
draw_buttontext(104,190,8,"",spr_commandbutton,6+6*commandMul,"",string(atext)+" 25")
draw_buttontext(192,190,8,"",spr_commandbutton,7+6*commandMul,"",string(atext)+" 50")
}

draw_buttontext(160,240-24-4,8,"",spr_commandbutton,5+6*commandMul,"",btext)

draw_set_halign(fa_right)
draw_text(128,240-24-4,string(moneyBet)+"$")

draw_set_halign(fa_center)
draw_text(160,240-12,string(global.Gold)+string("$"))

matrix_set(matrix_world,matrix_build_identity())

}

if commandType=11 ///For Controller Setup
{

draw_set_halign(fa_center) if Joystick=0 draw_text(40,32+16+8*15,oSettings.commandL[20]) else draw_text(40,32+16+8*15,oSettings.commandL[21])
draw_buttontext(40-16,32+16+8*16+8,8,"",spr_commandbutton,8+6*commandMul,"","")
draw_buttontext(40+16,32+16+8*16+8,8,"",spr_commandbutton,9+6*commandMul,"","")

if Joystick=1
{
var commandcheck=0;
commandcheck[9]=0;

var _controlno=controlNO;

var keycheck=1;
var keyanalyze=global.gpControlAttack[_controlno];
repeat(9)
{

if keycheck=1 keyanalyze=global.gpControlJump[_controlno];
if keycheck= 2 keyanalyze=global.gpControlAttack[_controlno];
if keycheck= 3 keyanalyze=global.gpControlShield[_controlno];
if keycheck= 4 keyanalyze=global.gpControlSuper[_controlno];
if keycheck= 5 keyanalyze=global.gpControlPunchback[_controlno];
if keycheck= 6 keyanalyze=global.gpControlTaunt[_controlno];
if keycheck= 7 keyanalyze=global.gpControlAttack[_controlno];
if keycheck= 8 keyanalyze=global.gpControlAttack[_controlno];
if keycheck= 9 keyanalyze=global.gpControlAttack[_controlno];

if keyanalyze=gp_face1 commandcheck[keycheck]=4;
if keyanalyze=gp_face2 commandcheck[keycheck]=5;
if keyanalyze=gp_face3 commandcheck[keycheck]=6;
if keyanalyze=gp_face4 commandcheck[keycheck]=7;
if keyanalyze=gp_shoulderl commandcheck[keycheck]=8;
if keyanalyze=gp_shoulderr commandcheck[keycheck]=9;
if keyanalyze=gp_shoulderlb commandcheck[keycheck]=0;
if keyanalyze=gp_shoulderrb commandcheck[keycheck]=0;

draw_sprite_ext(spr_commandbutton,commandcheck[keycheck]+6*commandMul,88-18,2*keycheck+32+20+8*keycheck,1,1,0,c_white,1)
keycheck+=1;
}



draw_set_halign(fa_left)

}

}

if commandType=12
{
draw_buttontext(8,240-32,8,"",spr_commandbutton,4+6*commandMul,"",commandL[0])
draw_buttontext(8,240-32+16,8,"",spr_commandbutton,5+6*commandMul,"",commandL[1]) 
draw_buttontext(320-8,240-32,8,commandL[12],spr_commandbutton,7+6*commandMul,"","")
}

if commandType=13
specialcommanddraw();

if commandType=14
{
draw_buttontext(x+40-10,y+96,8,"",spr_commandbutton,8,"","")
draw_buttontext(x+40+10,y+96,8,"",spr_commandbutton,9,"","")
}

}

}