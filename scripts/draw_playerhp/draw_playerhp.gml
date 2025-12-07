// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_playerhp(){
var _t1="PRESS\nA OR B"
var _t2="INSERT\nCOIN"
var _t3="PLEASE\nWAIT"
var _t4="GAME\nOVER"
switch(global.Language)
{
case 1:
_t1="PRESIONE\nA O B"
_t2="INSERTE\nMONEDA"
_t3="ESPERE\n"
_t4="GAME\nOVER"
break;
case 2: ///Portuguese
_t1="PRESS.\nA O B"
_t2="INSERIRT\nMONEDA"
_t3="POR FAVOR\nAGUARDE"
_t4="GAME\nOVER"
break;
}	

	draw_set_halign(fa_left)
draw_set_alpha(1) draw_set_color(c_white)
d3d_transform_set_identity()
if object_index=oPlayer
{var _xcamx=x-oControl.camX if oControl.mirrorMode _xcamx=320-x+oControl.camX
if showp1=1
draw_sprite(playerIcon,playerNO-1,round(_xcamx),round(y+z-height-4-oControl.camY))
if showmash=1
{
draw_sprite(spr_buttonmash,showmashI,round(_xcamx),round(y+z-height-4-oControl.camY))
if showmashI=1.75 showmashI=0 else showmashI+=0.25
}
}

d3d_transform_set_identity()
d3d_transform_set_translation(9999,0,0)

if playerNO=1
d3d_transform_set_translation(0,0,0)
if playerNO=2
d3d_transform_set_translation(72,0,0)
if playerNO=3
d3d_transform_set_translation(320-72-72,0,0)
if playerNO=4
d3d_transform_set_translation(320-72,0,0)



if object_index=oPlayerNoControl
{
draw_set_font(global.scorefont) draw_set_color(c_white) draw_set_alpha(1)
draw_set_halign(fa_center)
var _insertcoin=0;
if oControl.nopleasewait=1
{
	


if  (input_player_connected(playerNO-1)) _insertcoin=1;

if _insertcoin
{
draw_text(34,8,_t1)
}
else
draw_text(34,8,_t2)
}
else draw_text(34,8,_t3)

}
else
{
	
if ContinueSelect=1
{


if continueScreen=2 ///Character Select
{

//if continueFlash<0 continueFlash=2 else continueFlash-=0.5



//draw_sprite_ext(spr_playerface,0,0,0,1,1,0,c_dkgray,1)
//draw_sprite_ext(spr_playerface,1,23,0,1,1,0,c_dkgray,1)
//draw_sprite_ext(spr_playerface,2,46,0,1,1,0,c_dkgray,1)
//draw_sprite_ext(spr_playerface,3,69,0,1,1,0,c_dkgray,1)
//pal_swap_set(playernum1,playernum2,false)
//draw_sprite_ext(spr_playerface,characterSelect,23*characterSelect,0,1,1,0,c_white,1) pal_swap_reset()


if characterSelect!=0 draw_sprite_ext(spr_viva_map,1,9+0,32,1,1,0,c_dkgray,1)
if characterSelect!=1 draw_sprite_ext(spr_hina_map,1,9+18,32,1,1,0,c_dkgray,1)
if characterSelect!=2 draw_sprite_ext(spr_bahati_map,1,9+36,32,1,1,0,c_dkgray,1)
if characterSelect!=3 draw_sprite_ext(spr_sofia_map,1,9+54,32,1,1,0,c_dkgray,1)

draw_set_color(c_white)

draw_set_font(global.scorefont)
//draw_text(23*characterSelect+2,2,string_hash_to_newline(characterTimer))

//if continueFlash<1
//draw_sprite_ext(spr_playerface,4,23*characterSelect,0,1,1,0,c_white,1)


soldout=0;

character=-1;

/////See if the character is available
if (controlNO=1 and oControl.p2.ContinueMode=0 and oControl.p2.character=characterSelect)
or (controlNO=1 and oControl.p3.ContinueMode=0 and oControl.p3.character=characterSelect)
or (controlNO=1 and oControl.p4.ContinueMode=0 and oControl.p4.character=characterSelect)
or (controlNO=2 and oControl.p1.ContinueMode=0 and oControl.p1.character=characterSelect)
or (controlNO=2 and oControl.p3.ContinueMode=0 and oControl.p3.character=characterSelect)
or (controlNO=2 and oControl.p4.ContinueMode=0 and oControl.p4.character=characterSelect)
or (controlNO=3 and oControl.p2.ContinueMode=0 and oControl.p2.character=characterSelect)
or (controlNO=3 and oControl.p1.ContinueMode=0 and oControl.p1.character=characterSelect)
or (controlNO=3 and oControl.p4.ContinueMode=0 and oControl.p4.character=characterSelect)
or (controlNO=4 and oControl.p2.ContinueMode=0 and oControl.p2.character=characterSelect)
or (controlNO=4 and oControl.p3.ContinueMode=0 and oControl.p3.character=characterSelect)
or (controlNO=4 and oControl.p1.ContinueMode=0 and oControl.p1.character=characterSelect)
soldout=1;
////

pal_swap_set(current_pal,my_pal_sprite,false)

var _charselect=spr_viva_map; var _selfpal0=0; var _selfpal1=0; var _selfpal2=0;
if characterSelect=1 _charselect=spr_hina_map
if characterSelect=2 _charselect=spr_bahati_map
if characterSelect=3 _charselect=spr_sofia_map

continueFlash+=0.1 if continueFlash>=4 continueFlash=0



//if soldout draw_sprite_ext(spr_enemyface,0,23*characterSelect,0,1,1,0,c_white,1)

var _switchcolor=0;

if key_Y or key_LT or key_RT
if global.UnlockAltPal3
{PlaySound(snd_steal)
if controlNO=1 {global.p1CPal^=1 _switchcolor=1}
if controlNO=2 {global.p2CPal^=1 _switchcolor=1}
if controlNO=3 {global.p3CPal^=1 _switchcolor=1}
if controlNO=4 {global.p4CPal^=1 _switchcolor=1}
}

if global.UnlockAltPal
if soldout=0
{var palmax=15; if global.UnlockAltPal2 palmax=31;
if controlNO=1
{if key_up_pressed {_switchcolor=1 if global.p1Pal=0 global.p1Pal=palmax else global.p1Pal-=1 PlaySound(snd_steal)}
if -key_down_pressed {_switchcolor=1  if global.p1Pal=palmax global.p1Pal=0 else global.p1Pal+=1 PlaySound(snd_steal)}

}
if controlNO=2
{if key_up_pressed {_switchcolor=1 if global.p2Pal=0 global.p2Pal=palmax else global.p2Pal-=1 PlaySound(snd_steal)}
if -key_down_pressed {_switchcolor=1 if global.p2Pal=palmax global.p2Pal=0 else global.p2Pal+=1 PlaySound(snd_steal)}

}
if controlNO=3
{if key_up_pressed {_switchcolor=1 if global.p3Pal=0 global.p3Pal=palmax else global.p3Pal-=1 PlaySound(snd_steal)}
if -key_down_pressed {_switchcolor=1 if global.p3Pal=palmax global.p3Pal=0 else global.p3Pal+=1 PlaySound(snd_steal)}

}
if controlNO=4
{if key_up_pressed {_switchcolor=1 if global.p4Pal=0 global.p4Pal=palmax else global.p4Pal-=1 PlaySound(snd_steal)}
if -key_down_pressed {_switchcolor=1 if global.p4Pal=palmax global.p4Pal=0 else global.p4Pal+=1 PlaySound(snd_steal)}

}
}

if _switchcolor
{
if controlNO=1
{
if character=0 if global.p1CPal=0 global.p1Pals=spr_vivapal else global.p1Pals=spr_custompal
if character=1 if global.p1CPal=0 global.p1Pals=spr_hinapal else global.p1Pals=spr_custompal2
if character=2 if global.p1CPal=0 global.p1Pals=spr_bahatipal else global.p1Pals=spr_custompal3
if character=3 if global.p1CPal=0 global.p1Pals=spr_sofiapal else global.p1Pals=spr_custompal4
}
if controlNO=2
{
if character=0 if global.p2CPal=0 global.p2Pals=spr_vivapal else global.p2Pals=spr_custompal
if character=1 if global.p2CPal=0 global.p2Pals=spr_hinapal else global.p2Pals=spr_custompal2
if character=2 if global.p2CPal=0 global.p2Pals=spr_bahatipal else global.p2Pals=spr_custompal3
if character=3 if global.p2CPal=0 global.p2Pals=spr_sofiapal else global.p2Pals=spr_custompal4
}
if controlNO=3
{
if character=0 if global.p3CPal=0 global.p3Pals=spr_vivapal else global.p3Pals=spr_custompal
if character=1 if global.p3CPal=0 global.p3Pals=spr_hinapal else global.p3Pals=spr_custompal2
if character=2 if global.p3CPal=0 global.p3Pals=spr_bahatipal else global.p3Pals=spr_custompal3
if character=3 if global.p3CPal=0 global.p3Pals=spr_sofiapal else global.p3Pals=spr_custompal4
}
if controlNO=4
{
if character=0 if global.p4CPal=0 global.p4Pals=spr_vivapal else global.p4Pals=spr_custompal
if character=1 if global.p4CPal=0 global.p4Pals=spr_hinapal else global.p4Pals=spr_custompal2
if character=2 if global.p4CPal=0 global.p4Pals=spr_bahatipal else global.p4Pals=spr_custompal3
if character=3 if global.p4CPal=0 global.p4Pals=spr_sofiapal else global.p4Pals=spr_custompal4
}

if controlNO=1 {global.p1CPal^=1 current_pal=global.p1Pal; my_pal_sprite=global.p1Pals;}
if controlNO=2 {global.p2CPal^=1 current_pal=global.p2Pal; my_pal_sprite=global.p2Pals;}
if controlNO=3 {global.p3CPal^=1 current_pal=global.p3Pal; my_pal_sprite=global.p3Pals;}
if controlNO=4 {global.p4CPal^=1 current_pal=global.p4Pal; my_pal_sprite=global.p4Pals;}
}

if -key_left_pressed if characterSelect=0 characterSelect=3
else characterSelect-=1
if key_right_pressed if characterSelect=3 characterSelect=0
else characterSelect+=1


pal_swap_set(my_pal_sprite,current_pal,false);
var _mapframe=0;
if continueFlash<1 _mapframe=0
else if continueFlash<2 _mapframe=1
else if continueFlash<3 _mapframe=0
else _mapframe=2
draw_sprite_ext(_charselect,_mapframe,9+18*characterSelect,34,1,1,0,c_white,1) pal_swap_reset()
if soldout 
draw_sprite_ext(_charselect,_mapframe,9+18*characterSelect,34,1,1,0,c_red,0.25)

if key_A or key_B or key_X
if soldout
{PlaySound(snd_steal)
}
else
{
ContinueSelect=0
//if global.Continues!=-1 global.Continues-=1
if playerNO=1 {global.P1Char=characterSelect}
if playerNO=2 {global.P2Char=characterSelect}
if playerNO=3 {global.P3Char=characterSelect}
if playerNO=4 {global.P4Char=characterSelect}

character=characterSelect

PlayerLife=global.LifeStart+1 event_user(9)
}

}

if continueScreen=3 ///Set Hi-Score Input
hiscore_input()
///CONTINUE?
if continueScreen=1
{controller_setup()
draw_set_font(global.scorefont) draw_set_color(c_white) draw_set_alpha(1)
draw_set_halign(fa_center)
if ContinueCountdown!=-1
{HiScoreCheckDone=0
draw_text(34,8,"CONTINUE?")
draw_text(34,8+8,ContinueCountdown)
}
else
{
//if continueScreen=3
if playerNO=1
{
global.P1Score=PlayerScore
global.P1Life=PlayerLife
HiScoreCheck=global.P1Score
}
if playerNO=2
{
global.P2Score=PlayerScore
global.P2Life=PlayerLife
HiScoreCheck=global.P2Score
}
if playerNO=3
{
global.P3Score=PlayerScore
global.P3Life=PlayerLife
HiScoreCheck=global.P3Score
}
if playerNO=4
{
global.P4Score=PlayerScore
global.P4Life=PlayerLife
HiScoreCheck=global.P4Score
}

if HiScoreCheck>=global.HiScore10 and keyToGameOver=0
{
hiScoreInput=0
hiScoreInputNum=1
continueScreen=3
hiScoreNameGet="A"
keyGet1="A"
keyGet2="A"
keyGet3="A"
}
else
{
if playerNO=1 global.P1Score=0
if playerNO=2 global.P2Score=0
if playerNO=3 global.P3Score=0
if playerNO=4 global.P4Score=0
}
if object_index=oPlayer
{gameover=1

}



draw_text(34,8,"GAME\nOVER")
}
draw_set_halign(fa_left)
if global.Continues=0 ContinueCTime=0
if ContinueCTime!=0
ContinueCTime-=1
else
{
if ContinueCountdown!=-1
{ContinueCountdown-=1 ContinueCTime=90}
}

if key_attack and global.Continues!=0 and ContinueCountdown!=-1
{CountdownMode=0 ContinueMode=0 continueScreen=2 ContinueSelect=1
	continueFlash=0 characterSelect=character}

draw_set_halign(fa_left)
}
}
else
{
////PLAYER STATS
draw_sprite(spr_hud,0,0,0)	

if hpD>0
draw_sprite_part_ext(spr_hpbar,character,0,0,(hpD/maxhp)*44,6,25,21,1,1,c_white,1)
//draw_sprite_part_ext(spr_hpbar,character,0,0,44*hp,6,25,21,1,1,c_white,1)
pal_swap_set(my_pal_sprite,current_pal,false);
draw_sprite(spr_playerface,character,2,8)
pal_swap_reset();
shader_reset()

draw_set_font(global.scorefont)

if object_index=oPlayer
{
if string_length(name)<=4
draw_text(25,12,string_hash_to_newline(name))
else
draw_text_transformed(25,12,string_hash_to_newline(name),0.75,1,0)
}
draw_set_font(-1)
draw_set_color(c_black)///Super Bar
if super>0
draw_sprite_part_ext(spr_superbar,0,0,0,(44*super)/17.5,3,25,29,1,1,c_white,1)
draw_set_color(c_white)
if oControl.superFlashFrame1<1 and super>=17.5
{shader_set(shd_white_sprite)
draw_sprite_part_ext(spr_superbar,0,0,0,(44*super)/17.5,3,25,29,1,1,c_white,1)
shader_reset()
}

draw_set_font(global.scorefont)
draw_set_halign(fa_right)
var lifecheck=clamp(PlayerLife,0,9); if global.Cheat[14] and global.NoCheat lifecheck="∞"
draw_text(70,12,string_hash_to_newline(lifecheck)) //draw_text(39,0,7400)
var _playerscore=string(round(PlayerScore));
if comboScore!=0 {draw_sprite(spr_hitfont,0,70,2) _playerscore=""+string(round((comboScore+10)/10))+"  "}
draw_text(70,2,string_hash_to_newline(_playerscore)) //draw_text(39,0,7400)
if comboScore!=0
{
draw_sprite_ext(spr_hitfont,0,70,2,1,1,0,c_yellow,(comboScoreTime/160)*1)
draw_set_color(c_yellow) draw_set_alpha((comboScoreTime/160)*1)
draw_text(70,2,string_hash_to_newline(_playerscore))
}
draw_set_halign(fa_left)
}
d3d_transform_set_identity()


}
}