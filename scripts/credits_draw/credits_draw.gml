// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function credits_draw(){
controller_setup()	

draw_sprite(bg_credits,0,0,0)	
draw_sprite_ext(bg_credits,0,320,0,-1,1,0,c_white,1)

draw_sprite_ext(bg_credits,0,0,0,2,1,0,c_black,0.9*dancersfade)

if creditsGo=0
{
creditsGo=1
creditsTime=0
credFram=0 /// for skip
credMSC=0
creditsCameo=0
creditsCameoX=0
creditsCameoY=0
//musicplayonce(msc_credits)
playingSound=msc_credits
songID=audio_play_sound(playingSound,1,1)
audio_sound_gain(playingSound,global.BGMvolume/100,0)

songplaying=playingSound

}

//creditsTime+=0.01

if songplaying!=-1
{

songMinTime=audio_sound_get_track_position(songID)

seconds = round(songMinTime) mod 60
seconds2 = round(songMinTime) div 60 mod 60
seconds3 = round(songMinTime) div 3600

songMaxTime=audio_sound_length(songplaying)

secondsMAX = round(songMaxTime) mod 60

secondsMAX2 = round(songMaxTime) div 60 mod 60
secondsMAX3 = round(songMaxTime) div 3600
}

creditsTime=songMinTime;

draw_set_color(c_black) draw_set_alpha(creditsAlpha)
if creditsAlpha!=0 creditsAlpha-=0.01



if !instance_exists(oCameoChar) {instance_create_depth(0,0,-1,oCameoChar) with oCameoChar
{shadow=-1 anim=9999
visible=0
sprite_index=spr_viva_dance
image_index=0
}
}
else
{
dancer1img=oCameoChar.image_index
dancer2img=oCameoChar.image_index
dancer3img=oCameoChar.image_index
dancer4img=oCameoChar.image_index
}

/////Dance Parts
//Intro
if instance_exists(oCameoChar) with oCameoChar
{
if oControl.creditsTime<5
{image_index=30
}
else
if oControl.creditsTime<14.9
{
oControl.dancersfade-=0.005	

if oControl.creditsTime>12
{
if specialcheck[0]=0 {specialcheck[0]=1 AnimFrame=0}
frame_set(0,31,0.01)
frame_set(1,30,0.01)
frame_set(2,29,0.01)
frame_set(3,30,0.01) if AnimFrame=4 AnimFrame=0
}

}
else
if oControl.creditsTime<15
{if specialcheck[0]=1 {specialcheck[0]=2 AnimFrame=0}
frame_set(0,28,0.1)
frame_set(1,27,0.1)
frame_set(2,0,0.1)
frame_set(3,1,0.1)
frame_set(4,2,0.1)
frame_set(5,1,0.1) if AnimFrame=6 AnimFrame=2
}
else
if oControl.creditsTime<25
{if specialcheck[0]=2 {specialcheck[0]=3 AnimFrame=1}
frame_set(0,1,0.1)
frame_set(1,1,0.1)
frame_set(2,3,0.1)
frame_set(3,4,0.1)
frame_set(4,5,0.1)
frame_set(5,4,0.1) if AnimFrame=6 AnimFrame=2
}
else
if oControl.creditsTime<35
{if specialcheck[0]=3 {specialcheck[0]=4 AnimFrame=1}
frame_set(0,4,0.1)
frame_set(1,4,0.1)
frame_set(2,7,0.1)
frame_set(3,6,0.1)
frame_set(4,7,0.1)
frame_set(5,8,0.1) if AnimFrame=6 AnimFrame=2
}
else
if oControl.creditsTime<40
{if specialcheck[0]=4 {specialcheck[0]=5 AnimFrame=0}
frame_set(0,9,0.1)
frame_set(1,10,0.1)
frame_set(2,11,0.1)
frame_set(3,12,0.1)
frame_set(4,13,0.1)
frame_set(5,14,0.1) 
frame_set(6,15,0.1) if AnimFrame=7 AnimFrame=5
}
else
if oControl.creditsTime<42
{if specialcheck[0]=5 {specialcheck[0]=7 AnimFrame=0}
frame_set(0,27,0.1)
frame_set(1,28,0.1)
frame_set(2,30,0.1)
frame_set(3,32,0.1)
frame_set(4,33,0.1)
frame_set(5,19,0.1) 
}
else
if oControl.creditsTime<45
{if specialcheck[0]=7 {specialcheck[0]=8 AnimFrame=0}
frame_set(0,33,0.1)
frame_set(1,32,0.1)
frame_set(2,30,0.1)
frame_set(3,28,0.1)
frame_set(4,27,0.1)
frame_set(5,20,0.1) 
frame_set(6,20,0.1)
}
else
if oControl.creditsTime<51
{if specialcheck[0]=8 {specialcheck[0]=9 AnimFrame=0}
frame_set(0,27,0.1)
frame_set(1,28,0.1)
frame_set(2,30,0.1)
frame_set(3,32,0.1)
frame_set(4,33,0.1)
frame_set(5,21,0.1)
frame_set(6,22,0.1)
frame_set(7,23,0.1)
frame_set(8,24,0.1)
frame_set(9,25,0.1)
frame_set(10,26,0.1) 
frame_set(11,25,0.1) 
frame_set(12,24,0.1) if AnimFrame=13 AnimFrame=9
}
else
if oControl.creditsTime<55
{if specialcheck[0]=9 {specialcheck[0]=10 AnimFrame=0}
frame_set(0,27,0.1)
frame_set(1,28,0.1)
frame_set(2,29,0.1)
frame_set(3,30,0.1)
frame_set(4,31,0.1)
frame_set(5,32,0.1) 
frame_set(6,33,0.1) 
frame_set(7,10,0.1) 
frame_set(8,11,0.1) 
frame_set(9,12,0.1) 
}
else
if oControl.creditsTime<58
{if specialcheck[0]=10 {specialcheck[0]=11 AnimFrame=0}
frame_set(0,13,0.1)
frame_set(1,16,0.1)
frame_set(2,17,0.1)
frame_set(3,18,0.1)
}
else
if oControl.creditsTime<60
{if specialcheck[0]=11 {specialcheck[0]=12 AnimFrame=0}
frame_set(0,10,0.1)
frame_set(1,33,0.1)
frame_set(2,30,0.1)
frame_set(3,28,0.1)
frame_set(4,27,0.1)
frame_set(5,24,0.1)
frame_set(6,25,0.1)
}
else
if oControl.creditsTime<62
{if specialcheck[0]=12 {specialcheck[0]=13 AnimFrame=0}
frame_set(0,22,0.1)
frame_set(1,1,0.1)
frame_set(2,6,0.1)
frame_set(3,7,0.1)
frame_set(4,8,0.1)
frame_set(5,7,0.1)
}
else
if oControl.creditsTime<65
{if specialcheck[0]=13 {specialcheck[0]+=1 AnimFrame=0}
frame_set(0,10,0.1)
frame_set(1,11,0.1)
frame_set(2,12,0.1)
frame_set(3,12,0.1)
frame_set(4,13,0.1)
frame_set(5,14,0.1)
frame_set(6,15,0.1) if AnimFrame=7 AnimFrame=5
}
else
if oControl.creditsTime<70
{if specialcheck[0]=14 {specialcheck[0]+=1 AnimFrame=0}
frame_set(0,13,0.1)
frame_set(1,27,0.1)
frame_set(2,28,0.1)
frame_set(3,29,0.1)
frame_set(4,30,0.1)
frame_set(5,31,0.1)
frame_set(6,30,0.1) if AnimFrame=7 AnimFrame=3
}
else
if oControl.creditsTime<75
{if specialcheck[0]=15 {specialcheck[0]+=1 AnimFrame=0}
frame_set(0,32,0.1)
frame_set(1,33,0.1)
frame_set(2,16,0.1)
frame_set(3,17,0.1)
frame_set(4,18,0.1)
frame_set(5,10,0.1)
frame_set(6,20,0.1)
}
else
if oControl.creditsTime<85
{if specialcheck[0]=16 {specialcheck[0]+=1 AnimFrame=0}
frame_set(0,10,0.1)
frame_set(1,9,0.1)
frame_set(2,6,0.1)
frame_set(3,7,0.1)
frame_set(4,8,0.1)
frame_set(5,7,0.1) if AnimFrame=6 AnimFrame=2
}
else
if oControl.creditsTime<95
{if specialcheck[0]=17 {specialcheck[0]+=1 AnimFrame=0}
frame_set(0,21,0.1)
frame_set(1,22,0.1)
frame_set(2,23,0.1)
frame_set(3,24,0.1)
frame_set(4,25,0.1)
frame_set(5,26,0.1)
frame_set(6,25,0.1) if AnimFrame=7 AnimFrame=3
}
else
if oControl.creditsTime<101
{if specialcheck[0]=18 {specialcheck[0]+=1 AnimFrame=0}
frame_set(0,27,0.1)
frame_set(1,28,0.1)
frame_set(2,30,0.1)
frame_set(3,32,0.1)
frame_set(4,33,0.1)
if specialcheck[1]=0
{
frame_set(5,11,0.1)
frame_set(6,12,0.1) 
frame_set(7,12,0.1) 
}
if specialcheck[1]=1
{
frame_set(5,17,0.1)
frame_set(6,18,0.1) 
frame_set(7,18,0.1) 
}
if specialcheck[1]=2
{
frame_set(5,2,0.1)
frame_set(6,2,0.1) 
frame_set(7,3,0.1) 
}
if AnimFrame=8 {if specialcheck[1]!=2 {specialcheck[1]+=1 AnimFrame=0}}
}
else
if oControl.creditsTime<106
{if specialcheck[0]=19 {specialcheck[0]+=1 AnimFrame=0}
frame_set(0,1,0.1)
frame_set(1,6,0.1)
frame_set(2,7,0.1)
frame_set(3,8,0.1)
frame_set(4,7,0.1)
if AnimFrame=5 AnimFrame=1
}
else
if oControl.creditsTime<110
{if specialcheck[0]=20 {specialcheck[0]+=1 AnimFrame=0}
frame_set(0,27,0.1)
frame_set(1,28,0.1)
frame_set(2,30,0.1)
frame_set(3,32,0.1)
frame_set(4,33,0.1)
frame_set(5,1,0.1)
frame_set(6,6,0.1)
frame_set(7,7,0.1)
frame_set(8,8,0.1)
frame_set(9,7,0.1)
if AnimFrame=10 AnimFrame=6
}
else
if oControl.creditsTime<115
{if specialcheck[0]=21 {specialcheck[0]+=1 AnimFrame=0}
frame_set(0,33,0.25)
frame_set(1,32,0.25)
frame_set(2,30,0.25)
frame_set(3,28,0.25)
frame_set(4,27,0.25) if AnimFrame=5 AnimFrame=0

}
else 
{
if specialcheck[0]=22 {specialcheck[0]+=1 AnimFrame=0}
frame_set(0,10,0.1)
frame_set(1,9,0.1)
frame_set(2,11,0.1)
frame_set(3,12,0.1)

oControl.dancersfade+=0.01
}

}
/////
draw_sprite_ext(spr_shadow,0,40,200,dancer1turn,1,0,1-1*dancersfade,1)
draw_sprite_ext(dancer1spr,dancer1img,40,200,dancer1turn,1,0,c_white,1) ///Viva
draw_sprite_ext(dancer1spr,dancer1img,40,200,dancer1turn,1,0,c_black,dancersfade)
draw_sprite_ext(spr_viva_microphone,0,40,200+4,dancer1turn,1,0,c_white,1) ///Viva
draw_sprite_ext(spr_viva_microphone,0,40,200+4,dancer1turn,1,0,c_black,dancersfade)


draw_sprite_ext(spr_shadow,0,40+80-6,200,dancer1turn,1,0,1-1*dancersfade,1)
draw_sprite_ext(dancer2spr,dancer2img,40+80-6,200,dancer2turn,1,0,c_white,1) ///Hina
draw_sprite_ext(dancer2spr,dancer2img,40+80-6,200,dancer2turn,1,0,c_black,dancersfade)
draw_sprite_ext(spr_viva_microphone,0,40+80-6,200+4,dancer1turn,1,0,c_white,1) ///Viva
draw_sprite_ext(spr_viva_microphone,0,40+80-6,200+4,dancer1turn,1,0,c_black,dancersfade)

draw_sprite_ext(spr_shadow,0,40+160,200,dancer1turn,1,0,1-1*dancersfade,1)
draw_sprite_ext(dancer3spr,dancer3img,40+160,200,dancer3turn,1,0,c_white,1) ///Bahati
draw_sprite_ext(dancer3spr,dancer3img,40+160,200,dancer3turn,1,0,c_black,dancersfade)
draw_sprite_ext(spr_viva_microphone,0,40+160,200+2,dancer1turn,1,0,c_white,1) ///Viva
draw_sprite_ext(spr_viva_microphone,0,40+160,200+2,dancer1turn,1,0,c_black,dancersfade)

draw_sprite_ext(spr_shadow,0,40+240-2,200,dancer1turn,1,0,1-1*dancersfade,1)
draw_sprite_ext(dancer4spr,dancer4img,40+240-2,200,dancer4turn,1,0,c_white,1) ///Sofia
draw_sprite_ext(dancer4spr,dancer4img,40+240-2,200,dancer4turn,1,0,c_black,dancersfade)
draw_sprite_ext(spr_viva_microphone,1,40+240-2,200+4,dancer1turn,1,0,c_white,1) ///Viva
draw_sprite_ext(spr_viva_microphone,1,40+240-2,200+4,dancer1turn,1,0,c_black,dancersfade)


var musictime=creditsTime;



draw_rectangle(-2,-2,340,340,false)



draw_set_color(c_white) draw_set_alpha(1)
var creditmoment="";

if creditsTime<5 ///8 Per line?
creditmoment="" ;
else if creditsTime<5+5*2
creditmoment="GAME BY\n \nMRPR1993" ;
else if creditsTime<7+5*3
creditmoment="MUSIC BY\n \nJONORSI\nEVADER MUSIC" ;
else if creditsTime<7+5*4
creditmoment="SOUNDS BY\n \nMRPR1993\nMASTERSAUCE\nSOUNDSOFKOOKIE";
else if creditsTime<7+5*5
creditmoment="VOICES BY\n \nMIMI HUNG\nFLIRTY FAWN\nCINDER\nSED2116\nMIZZPEACHY\nSUCCUBOO\nSHYGUYWHY" ;
else if creditsTime<7+5*6
creditmoment="GRAPHICS BY\n \nMRPR1993\nFROTHIER\nDR.LILI M.D." ;
else if creditsTime<7+5*7
creditmoment="WRITING BY\n \nMRPR1993\nSHADES\nSED2116\nFLASH TRICKSTAR" ;
else if creditsTime<7+5*8
creditmoment="CHARACTER DESIGN BY\n \nMRPR1993\nSHADES\nSED2116\nTHEFLAW" ;
else if creditsTime<7+5*9
creditmoment="CONCEPT ART BY\n \nMRPR1993\nSHADES\nSED2116" ;
else if creditsTime<7+5*10
creditmoment="PLAYTESTERS\n \nPAOZIN\nW.KOHAKU\nBIT0609\nGAMING EELEKTROSS\nSCRUNGIE\nFLASH TRICKSTAR\nSHADO\nSHADES" ;
else
{
creditsCameoY-=0.18
}

draw_set_font(global.scorefont)
draw_set_halign(fa_center)
draw_text(160,16,"")
draw_text(160,32,creditmoment)

if creditsTime>=120 draw_text(160,124,"THANKS FOR PLAYING!")

draw_text(160,320+16+round(creditsCameoY),"CAMEO CUSTOMERS")
draw_set_halign(fa_right)
////Credit Cameo Text
var creditscameol=""+
"\nSHADES"+
"\nBLUETOMATO"+
"\nSLASHER03"+
"\nPONNO"+
"\nTHEFLAW"+
"\nSKEPTICAL"+
"\nPERIWINKLE"+
"\nPETERJUICE"+
"\nPLAINWHITEBREAD"+
"\nGAMING EELEKTROSS"+
"\nMUSTARDEELS"+
"\nNDO64"+
"\nDELICIOUSORANGE"+
"\nFAIRION AJKILLER FEY"+
"\nTOXIN THE CHINCHILLA"+
"\nVJAK"+
"\nMIKE TAVERAS"+
"\nSUPERJUSTINBROS"+
"\nSPANK TANK"+
"\nDARBO,FURRY-INQUISITOR"+
"\nGREENFRIEND"+
"\nOVERLORD'S WRATH"+
"\nRJ (ROGER)"+
"\nZERO THE SHADOW CREATURE"+
"\nWYNN728"+
"\nZEDZ"+
"\nKITE"+
"\nTAKE2ACTION"+
"\nASPIRING IDOL MERCURY"+
"\IKKIn"+
"\n"+
"\n"+
"\n"
var creditscameor="\n"+
"\nSED2116"+
"\nBLUETOMATO"+
"\nSHEEP"+
"\nBRADFLAKES"+
"\nLILGAMERDUDE64"+
"\nJM297"+
"\nFLASHTRICKSTAR"+
"\nPIGGYBANK"+
"\nSTUNTMAN"+
"\nJAMOART"+
"\nTOONYMAN"+
"\nFANCYFLYING"+
"\nNEONZZ"+
"\nWARPEDMETHODS9"+
"\nCAKEGUY1459"+
"\nTHE SICKLY WIZARD"+
"\nSHADEMANV4"+
"\nTRAGIC ERIC"+
"\nTEASETHAILEY"+
"\nDR.LILI M.D."+
"\nC4PPy"+
"\nGIZZMO"+
"\nTHE SHOLM"+
"\nKENKA"+
"\nGREEDYBOLT"+
"\nFLAREJOLT"+
"\nBLUE MOBIUS"+
"\n"+
"\n"+
"\n"+
"\n"+
"\n"+
"\n"



draw_text(320-4,320+16+round(creditsCameoY),creditscameor)
draw_set_halign(fa_left)
draw_text(4,320+16+round(creditsCameoY),creditscameol)

if betatest=1 draw_text(8,8,musictime)

if key_A or key_B or key_X or key_Y or key_cancel or key_accept
or key_charge
{
if skipScene<1 skipScene+=0.01
else
{
{global.MenuSkip=0 global.IntroSkip=1 room_goto(rm_hiscore)}
}



draw_set_font(global.scorefont)
draw_set_halign(fa_center) draw_set_color(c_white)
draw_text_transformed(160,8,"SKIPPING",1.5,1.5,0)
draw_set_color(c_black)
draw_rectangle(160-80,24,160+80,32,false)
draw_set_color(c_white)
draw_rectangle(160-80+1,24+1,-1+160-80+160*skipScene,32-1,false)


}else credFram=0

if creditsTime>=134 {global.MenuSkip=0 global.IntroSkip=1 room_goto(rm_hiscore)
	
	}

x-=2;
draw_sprite(spr_creditsart,0,360+x,100)
draw_sprite(spr_creditsart,1,120+360+x,100)
draw_sprite(spr_creditsart,2,240+360+x,100)
draw_sprite(spr_creditsart,3,360+360+x,100)

if creditsTime<=60
draw_sprite_ext(spr_gametitle,creditsTime*10,160,120-320+(320*dancersfade),1,1,0,c_white,1-1*(creditsAlpha*10))

}