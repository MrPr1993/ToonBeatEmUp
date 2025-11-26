// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_minigames(){

if room=rm_minigames
{//global.MinigameSel3=0
global.ArenaType=0

var _tta0="LOCKED"
var _tta1="SELECT A MODE"
var _tta2="EXTRAS"
var _tta3="MULTI"
var _tta4="MINIGAMES"
var _tta5="NOTE:CHEATS WILL BE DISABLED"
var _tta6="HIGH SCORE"
var _tta7="ENEMIES DEFEATED"
var _tta8="BOSSES DEFEATED"

var _tt0="GIVE YOU DIVAS CUSTOM COLORS!"
var _tt1="SURVIVE THE BAD GUYS' ONSLAUGHT!"
var _tt2="CAN YOU DEFEAT EVERYONE? CAN YOU?"
var _tt3="RELAX AS YOU TAKE ON THE LAKE TO FISH"
var _tt4="HAVE SOME FUN AT A LITTLE GAMBLE!"

var _tt5="A GOOD OLD FASHIONED BRAWLER VS!"
var _tt6="ONE WITH THE TROPHY IS THE WINNER!"
var _tt7="GET THE MOST STARS TO WIN!"

var _tt8="WRECK THAT CAR TO BITS!"
var _tt9="BREAK A BUNCH OF BRICKS WITH PERCISION!"
var _tt10="EAT A MEAL IN THIS EATING COMPETITION!"
var _tt11="SING TO SHATTER THE COMPETITION!"
var _tt12="RUN FROM THE BIG BAD BULL!"
var _tt13="RING THE BELL WITH A SLAM OF THE HAMMER!"

switch(global.Language)
{
case 1:
_tta1="SELECCIONA UN MODO"
_tta2="EXTRAS"
_tta3="MULTI"
_tta4="MINIJUEGOS"

_tta5="NOTA: LAS TRAMPAS SERÁN DESACTIVADOS"

_tta6="PUNTUACIÓN MÁS ALTA"
_tta7="ENEMIGOS DERROTADOS"
_tta8="JEFES DERROTADOS"

_tt0="¡DA COLORES PERSONALIZADOS A TUS DIVAS!"
_tt1=" ¡SOBREVIVE A LA AVALANCHA DE MALOS!"
_tt2=" ¿PUEDES DERROTAR A TODOS? ¿PUEDES?"
_tt3="RELÁJATE MIENTRAS SALES A PESCAR AL LAGO"
_tt4="¡DIVIÉRTETE CON UNA PEQUEÑA APUESTA!"

_tt5="¡UN BUEN PELEADOR A LA ANTIGUA EN VS!"
_tt6="¡QUIÉN TENGA EL TROFEO, GANA!"
_tt7="¡CONSIGUE LA MAYOR CANTIDAD DE ESTRELLAS."

_tt8="¡DESTRUYE ESE AUTO EN PEDAZOS!"
_tt9="¡ROMPE UN MONTÓN DE LADRILLOS CON PRECISIÓN!"
_tt10="¡COME TODO EN ESTA COMPETENCIA DE COMIDA!"
_tt11="¡CANTA PARA DESTRUIR A LA COMPETENCIA!"
_tt12="¡CORRE DEL TORO GRANDE Y MALO!"
_tt13="¡HAZ SONAR LA CAMPANA CON UN GOLPE DE MARTILLO!"
break;	

case 2:
_tta1="SELECIONE UM MODO"
_tta2="EXTRAS"
_tta3="MULTI"
_tta4="MINIJOGOS"

_tta5="NOTE:TRAPAÇAS SERÃO DESLIGADAS"

_tta6="PONTUAÇÃO TOTAL"
_tta7="INIMIGOS DERROTADOS"
_tta8="CHEFÕES DERROTADOS"

_tt0="DÊ CORES PERSONALIZADAS À SUAS DIVAS!"
_tt1="SOBREVIVA AO ATAQUE DOS VILÕES!"
_tt2="VOCÊ É CAPAZ DE DERROTAR TODOS?"
_tt3="RELAXE PESCANDO NO LAGO"
_tt4="DIVIRTA-SE COM UMA INOFENSIVA APOSTA!"

_tt5="UMA BOA E VELHA BRIGA À  MODA ANTIGA!"
_tt6="QUEM FICAR COM O TROFÉU É O VENCEDOR!"
_tt7="VENÇA PEGANDO O MAIOR NÚMERO DE ESTRELAS!"

_tt8="VIRE ESSE CARRO DO AVEÇO!"
_tt9="QUEBRE UM MONTANHA DE TIJOLOS COM PRECISÃO!"
_tt10="ENCHA A PANÇA NESSA COMPETIÇÃO DE COMIDA!"
_tt11="CANTE PARA ARRASAR NESSA COMPETIÇÃO!"
_tt12="FUJA DO GRANDE E MALVADO TOURO!"
_tt13="TOQUE O SINO COM UMA MARTELADA!"
break;
}
	
if key_B room_goto(rm_menu)
draw_set_font(global.scorefont)	

if oControl.betatest
{
if keyboard_check_pressed(ord("4")) global.SecretBoss^=1;
}

d3d_transform_set_identity()

global.SkipDifficulty=0;
global.P1Only=0;

d3d_transform_set_translation(320+MenuMoveX,0,0)


if -key_left_pressed {if global.MinigameSetSel=0 global.MinigameSetSel=2 else global.MinigameSetSel-=1 PlaySound(snd_select)}
if key_right_pressed {if global.MinigameSetSel=2 global.MinigameSetSel=0 else global.MinigameSetSel+=1 PlaySound(snd_select)}


MenuText="???"

//draw_sprite_ext(spr_miniposter,0,28,24,1,1,0,c_gray,0.5+0.5*1)
//draw_sprite_ext(spr_miniposter,1,124,24,1,1,0,c_gray,0.5+0.5*1)
//draw_sprite_ext(spr_miniposter,2,220,24,1,1,0,c_gray*0,0.5+0.5*0)
//draw_sprite_ext(spr_miniposter,3,28,104,1,1,0,c_gray*0,0.5+0.5*0)
//draw_sprite_ext(spr_miniposter,4,124,104,1,1,0,c_gray*0,0.5+0.5*0)
//draw_sprite_ext(spr_miniposter,5,220,104,1,1,0,c_gray*0,0.5+0.5*0)
var instantroom=0;
var stagewent=rm_characterselect;

var sell1=0.5;
var sell2=0.5;
var sell3=0.5;
var isunlocked=1;
if global.MinigameSetSel=0 sell1=0;
if global.MinigameSetSel=1 sell2=0;
if global.MinigameSetSel=2 sell3=0;

///Left-Extras
draw_sprite_ext(spr_extraposter,3,28,24+36-72*global.MinigameSel,1,1,0,c_gray*global.UnlockAltPal3,-sell1+0.5+0.5*1)
draw_sprite_ext(spr_extraposter,4,28,24+36+72-72*global.MinigameSel,1,1,0,c_gray*global.SurvivalUnlock,-sell1+0.5+0.5*1)
draw_sprite_ext(spr_extraposter,5,28,24+36+72+72-72*global.MinigameSel,1,1,0,c_gray*global.BossBattleUnlock,-sell1+0.5+0.5*1)
draw_sprite_ext(spr_extraposter,6,28,24+36+72+72+72-72*global.MinigameSel,1,1,0,c_gray*global.FishingUnlock,-sell1+0.5+0.5*1)
draw_sprite_ext(spr_extraposter,7,28,24+36+72+72+72+72-72*global.MinigameSel,1,1,0,c_gray*global.SlotMachineUnlock,-sell1+0.5+0.5*1)

if global.SecretBoss=1
draw_sprite_ext(spr_extraposter,8,28,24+36+72+72+72+72+72-72*global.MinigameSel,1,1,0,c_gray*global.SecretBoss,-sell1+0.5+0.5*1)


if global.MinigameSetSel=0
{
if global.MinigameSel=0 if global.UnlockAltPal3=0 isunlocked=0
if global.MinigameSel=1 if global.SurvivalUnlock=0 isunlocked=0
if global.MinigameSel=2 if global.BossBattleUnlock=0 isunlocked=0
if global.MinigameSel=3 {if global.FishingUnlock=0 isunlocked=0 global.SkipDifficulty=1 global.P1Only=1;}
if global.MinigameSel=4 if global.SlotMachineUnlock=0 isunlocked=0
draw_sprite_ext(spr_extraposter,global.MinigameSel+3,28,24+36,1,1,0,c_white*isunlocked,1)
}

///Middle-Multi
draw_sprite_ext(spr_extraposter,0,124,24+36-72*global.MinigameSel2,1,1,0,c_gray,-sell2+0.5+0.5*1)
draw_sprite_ext(spr_extraposter,1,124,24+36+72-72*global.MinigameSel2,1,1,0,c_gray,-sell2+0.5+0.5*1)
draw_sprite_ext(spr_extraposter,2,124,24+36+72+72-72*global.MinigameSel2,1,1,0,c_gray,-sell2+0.5+0.5*1)

if global.MinigameSetSel=1
draw_sprite_ext(spr_extraposter,global.MinigameSel2,124,24+36,1,1,0,c_white,1)

///Right-Minigames
draw_sprite_ext(spr_miniposter,0,220,24+36-72*global.MinigameSel3,1,1,0,c_gray*global.MiniGameUnlock1,-sell3+0.5+0.5*1)
draw_sprite_ext(spr_miniposter,1,220,24+36+72-72*global.MinigameSel3,1,1,0,c_gray*global.MiniGameUnlock2,-sell3+0.5+0.5*1)
draw_sprite_ext(spr_miniposter,2,220,24+36+72+72-72*global.MinigameSel3,1,1,0,c_gray*global.MiniGameUnlock3,-sell3+0.5+0.5*1)
draw_sprite_ext(spr_miniposter,3,220,24+36+72+72+72-72*global.MinigameSel3,1,1,0,c_gray*global.MiniGameUnlock4,-sell3+0.5+0.5*1)
draw_sprite_ext(spr_miniposter,4,220,24+36+72+72+72+72-72*global.MinigameSel3,1,1,0,c_gray*global.MiniGameUnlock5,-sell3+0.5+0.5*1)
draw_sprite_ext(spr_miniposter,5,220,24+36+72+72+72+72+72-72*global.MinigameSel3,1,1,0,c_gray*global.MiniGameUnlock6,-sell3+0.5+0.5*1)

if global.MinigameSetSel=2
{global.SkipDifficulty=1
if global.MinigameSel3=0 if global.MiniGameUnlock1=0 isunlocked=0
if global.MinigameSel3=1 if global.MiniGameUnlock2=0 isunlocked=0
if global.MinigameSel3=2 if global.MiniGameUnlock3=0 isunlocked=0
if global.MinigameSel3=3 if global.MiniGameUnlock4=0 isunlocked=0
if global.MinigameSel3=4 if global.MiniGameUnlock5=0 isunlocked=0
if global.MinigameSel3=5 if global.MiniGameUnlock6=0 isunlocked=0
draw_sprite_ext(spr_miniposter,global.MinigameSel3,220,24+36,1,1,0,c_white*isunlocked,1)
}

if key_up_pressed {PlaySound(snd_select)
if global.MinigameSetSel=0
{
	
if global.MinigameSel=0 global.MinigameSel=4+global.SecretBoss else global.MinigameSel-=1
}

if global.MinigameSetSel=1
{if global.MinigameSel2=0 global.MinigameSel2=2 else global.MinigameSel2-=1}
	
if global.MinigameSetSel=2
{if global.MinigameSel3=0 global.MinigameSel3=5 else global.MinigameSel3-=1}


	}
if -key_down_pressed {PlaySound(snd_select)
if global.MinigameSetSel=0
{if global.MinigameSel=4+global.SecretBoss global.MinigameSel=0 else global.MinigameSel+=1}	
	
if global.MinigameSetSel=1
{if global.MinigameSel2=2 global.MinigameSel2=0 else global.MinigameSel2+=1}

if global.MinigameSetSel=2
{if global.MinigameSel3=5 global.MinigameSel3=0 else global.MinigameSel3+=1}
	}


if global.MinigameSetSel=0
{
global.MultiVS=0
draw_set_color(1)
//draw_set_halign(fa_center)
//draw_text(160,8,_tta1)

//draw_text(28+36,32,_tta2)
//draw_text(160,32,_tta3)
//draw_text(320-28-36,32,_tta4)

global.MultiVS=0
if global.MinigameSel=0 {MenuText=_tt0 //if global.MiniGameUnlock1=0 MenuText="LOCKED"
global.StageGoing=rm_paletteeditor instantroom=1; stagewent=rm_paletteeditor
if global.UnlockAltPal3=0 MenuText="LOCKED"
}
if global.MinigameSel=1 {MenuText=string(_tt1)+"\n"+string(_tta6)+":"+string(global.HiScoreSurvival) //if global.MiniGameUnlock2=0 MenuText="LOCKED"
global.StageGoing=rm_arena global.ArenaType=2;
if global.SurvivalUnlock=0 MenuText="LOCKED"
}

if global.MinigameSel=2 {MenuText=string(_tt2)+"\n"+string(_tta8)+":"+string(global.HiScoreBossBattles)+"\n"+string(_tta6)+":"+string(global.HiScoreBossBattlesScore) //if global.MiniGameUnlock2=0 MenuText="LOCKED"
global.StageGoing=rm_arena global.ArenaType=3;
if global.BossBattleUnlock=0 MenuText="LOCKED"
}

if global.MinigameSel=3 {MenuText=_tt3//+"HIGH SCORE:"+string(global.HiScoreFishing) //if global.MiniGameUnlock2=0 MenuText="LOCKED"
global.StageGoing=rm_fishing 
if global.FishingUnlock=0 MenuText="LOCKED"
}

if global.MinigameSel=4 {MenuText=string(_tt4)+"\n"+"$"+string(global.Gold) //if global.MiniGameUnlock2=0 MenuText="LOCKED"
global.StageGoing=rm_slotmachine instantroom=1 stagewent=rm_slotmachine
if global.SlotMachineUnlock=0 MenuText="LOCKED"
}

////SECRET BOSS
if global.MinigameSel=5 {MenuText="...?" //if global.MiniGameUnlock2=0 MenuText="LOCKED"
global.StageGoing=rm_secret global.SkipDifficulty=1 global.Difficulty=2
global.P1Only=1
}

}

if global.MinigameSetSel=1
{
global.MultiVS=1
if global.MinigameSel2=0 {MenuText=_tt5 //if global.MiniGameUnlock1=0 MenuText="LOCKED"
global.StageGoing=rm_cargame global.ArenaType=5;}
if global.MinigameSel2=1 {MenuText=_tt6 //if global.MiniGameUnlock2=0 MenuText="LOCKED"
global.StageGoing=rm_brickbreak  global.ArenaType=6;}
if global.MinigameSel2=2 {MenuText=_tt7 //if global.MiniGameUnlock3=0 MenuText="LOCKED"
global.StageGoing=rm_eatinggame  global.ArenaType=7;}
}

if global.MinigameSetSel=2
{global.MultiVS=0
if global.MinigameSel3=0 {MenuText=_tt8 if global.MiniGameUnlock1=0 MenuText="LOCKED"
global.StageGoing=rm_cargame}
if global.MinigameSel3=1 {MenuText=_tt9 if global.MiniGameUnlock2=0 MenuText="LOCKED"
global.StageGoing=rm_brickbreak}
if global.MinigameSel3=2 {MenuText=_tt10 if global.MiniGameUnlock3=0 MenuText="LOCKED"
global.StageGoing=rm_eatinggame}
if global.MinigameSel3=3 {MenuText=_tt11 if global.MiniGameUnlock4=0 MenuText="LOCKED"
global.StageGoing=rm_singgame}
if global.MinigameSel3=4 {MenuText=_tt12 if global.MiniGameUnlock5=0 MenuText="LOCKED"
global.StageGoing=rm_bullstage}
if global.MinigameSel3=5 {MenuText=_tt13 if global.MiniGameUnlock6=0 MenuText="LOCKED"
global.StageGoing=rm_hammergame}
}	

draw_set_halign(fa_center)
draw_set_color(c_black)

draw_set_alpha(0.75)



draw_set_alpha(1)

draw_rectangle(0,240-10-4-10+2+8-2-32,320,240-10-4+2+8-2-32,false)
draw_set_alpha(1)draw_set_color(c_white)
var _ttt=MenuText if MenuText="LOCKED"
{
if global.Language=0 _ttt="LOCKED"
if global.Language=1 _ttt="ENCERRADO"
if global.Lanugage=2 _ttt="BLOQUEADO"
}

draw_text(round(160),240-10-4-32,_ttt)
draw_text(160,8,_tta1)

draw_text(28+36,32,_tta2)
draw_text(160,32,_tta3)
draw_text(320-28-36,32,_tta4)

if global.Cheat[0]
or global.Cheat[1]	
or global.Cheat[2]	
or global.Cheat[3]	
or global.Cheat[4]	
or global.Cheat[5]	
or global.Cheat[6]	
or global.Cheat[7]	
or global.Cheat[8]	
or global.Cheat[9]	
or global.Cheat[10]	
or global.Cheat[11]	
or global.Cheat[12]	
or global.Cheat[13]
or global.Cheat[14]
or global.Cheat[15]
or global.Cheat[16]
global.NoCheat=0

if global.NoCheat=0
draw_text(160,16,_tta5)

fpsY=8


if canControl=1
{if MenuMoveX>-320 MenuMoveX-=64 else MenuMoveX=-320}
else
{if MenuMoveX>-640 MenuMoveX-=64 else MenuMoveX=-640}
draw_command(1)
if key_A or keyboard_check_pressed(vk_space)
{
if MenuText="???" or MenuText="LOCKED"
{
PlaySound(snd_steal)
}
else
{
PlaySound(snd_picked) selectScreen=1 alarm[4]=10 screenBlack=1 canControl=0 
if instantroom=1
room_goto(stagewent)
}
}
draw_set_color(c_black)
draw_rectangle(-999,-999,-1,999,false)
draw_rectangle(320,-999,999,999,false)
draw_set_color(c_white)
d3d_transform_set_identity()

}
}