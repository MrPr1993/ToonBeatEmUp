// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_cutscenes(){

if room=rm_cutscenes
{//global.MinigameSel=0
if key_B room_goto(rm_menu)
draw_set_font(global.scorefont)	

draw_sprite(bg_cuts1,0,0-320+MenuMoveX,0)
draw_sprite(bg_cuts2,0.2+MenuScaleX,160+320-MenuMoveX,72)


if -key_left_pressed {if global.MovieSel=0 global.MovieSel=23 else global.MovieSel-=1 PlaySound(snd_select)}
if key_right_pressed {if global.MovieSel=23 global.MovieSel=0 else global.MovieSel+=1 PlaySound(snd_select)}

var imgscene=0;


var _sn0="SELECT A CUTSCENE\nTO PLAY"
var _sn1="DIVA TIME!"
var _sn2="THE CHAOS"
var _sn3="WOLFED"
var _sn4="WHO'S DRIVING?"
var _sn5="GOING DOWN"
var _sn6="THE SHERIFF"
var _sn7="PHARAOH PROBLEM"
var _sn8="OFF WITH THEIR HEADS"
var _sn9="ONI'S GAMBLE"
var _sn10="ANGRY WOMEN"
var _sn11="QUACKED UP"
var _sn12="SWAMPED WITCH"
var _sn13="SEA MOMMY"
var _sn14="HANDSOME PRINCE"
var _sn15="BACK FROM SPACE"
var _sn16="GENIE LOVE"
var _sn17="PULL OUT ALL THE STOPS"
var _sn18="ROYAL PLANT"
var _sn19="BROKEN REFLECTION"
var _sn20="SAD DRAGON"
var _sn21="GET THAT BLIMP!"
var _sn22="BAD END"
var _sn23="AND SCENE"
var _sn24="AND ARRESTED"
var _sn25="AND ANGRY"
var _sn26="CREDITS"

switch(global.Language)
{
case 1:
_sn0="SELECCIONA UNA\nCINEMÁTICA PARA REPRODUCIR"
_sn1="¡HORA DE LAS DIVAS!"
_sn2="EL CAOS"
_sn3="LOBIZONEADAS"
_sn4="¿QUIÉN ESTÁ CONDUCIENDO?"
_sn5="BAJANDO"
_sn6="EL SHERIFF"
_sn7="PROBLEMA DEL FARAÓN"
_sn8="¡QUE LES CORTEN LA CABEZA!"
_sn9="LA APUESTA DEL ONI"

_sn10="MULHERES OURIÇADAS"

_sn11="PATOS Y LOCURA"
_sn12="BRUJA ANEGADA"
_sn13="MAMÁ MARINA"
_sn14="PRÍNCIPE APUESTO"
_sn15="DE VUELTA DEL ESPACIO"
_sn16="AMOR DEL GENIO"

_sn17="A DARLO TODO"

_sn18="PLANTA REAL"

_sn19="REFLEJO ROTO"
_sn20="DRAGÓN TRISTE"
_sn21="¡ATRAPEN ESE DIRIGIBLE!"

_sn22="MAL FINAL"
_sn23="Y FIN"// (normal ending)
_sn24="Y ARRESTADAS"// (final com as divas presas por seguirem um caminho que envolveu danos colaterais)
_sn25="Y FURIOSA"// (ending with Viva very angry at the player for making them suffer taking the worst and painfully humiliating paths (ex. Jumping off a plane, Viva getting bruised on a cutscene))
_sn26="CRÉDITOS"
 

break;	

case 2:
_sn0="SELECIONE UMA CENA\nPARA TOCAR"
_sn1="MOMENTO DIVA!"
_sn2="O CAOS"
_sn3="LOBOTOMIZADA"
_sn4="QUEM TÁ NO VOLANTE?"
_sn5="DESLIZANDO"
_sn6="O XERIFE"
_sn7="PROBLEMA FARAÔNICO"
_sn8="CORTEM AS CABEÇAS"
_sn9="APOSTA DE ONI"

_sn10="MULHERES OURIÇADAS"

_sn11="PATO ACOLÁ"
_sn12="BRUXA INUNDADA"
_sn13="MAMÃE MARÉ"
_sn14="PRINCIPE GARANHÃO"
_sn15="DE VOLTA PRO ESPAÇO"
_sn16="GENIO AMOROSO"

_sn17="FAZER DAS TRIPAS CORAÇÃO"

_sn18="FLORA DA REALEZA"

_sn19="REFLEXO QUEBRADO"
_sn20="DRAGÃO CHORÃO"
_sn21="SEGUREM ESSE BALÃO!"

_sn22="FINAL RUIM"
_sn23="E CORTA"// (normal ending)
_sn24="E ENJAULADA"// (final com as divas presas por seguirem um caminho que envolveu danos colaterais)
_sn25="E IRRITADA"// (ending with Viva very angry at the player for making them suffer taking the worst and painfully humiliating paths (ex. Jumping off a plane, Viva getting bruised on a cutscene))
_sn26="CRÉDITOS"

break;
}

MenuText="???"


if global.MovieSel=0 {MenuText=_sn1
global.StageGoing=rm_newspaper global.IsMovie=1 global.MenuSkip=0 global.IntroSkip=1}
if global.MovieSel=1 {MenuText=_sn2
global.StageGoing=rm_opening}
if global.MovieSel=2 {if global.UnlockCutscene[1] MenuText=_sn3
global.StageGoing=rm_cutscene1}
if global.MovieSel=3 {if global.UnlockCutscene[2] MenuText=_sn4
global.StageGoing=rm_cutscene2a}
if global.MovieSel=4 {if global.UnlockCutscene[3] MenuText=_sn5
global.StageGoing=rm_cutscene2b}
if global.MovieSel=5 {if global.UnlockCutscene[4] MenuText=_sn6
global.StageGoing=rm_cutscene2c}
if global.MovieSel=6 {if global.UnlockCutscene[5] MenuText=_sn7
global.StageGoing=rm_cutscene3a}
if global.MovieSel=7 {if global.UnlockCutscene[6] MenuText=_sn8
global.StageGoing=rm_cutscene3b}
if global.MovieSel=8 {if global.UnlockCutscene[7] MenuText=_sn9
global.StageGoing=rm_cutscene3c}

if global.MovieSel=9 {if global.UnlockCutscene[25] MenuText=_sn10
global.StageGoing=rm_intermission1}

if global.MovieSel=10 {if global.UnlockCutscene[8] MenuText=_sn11
global.StageGoing=rm_cutscene4a}
if global.MovieSel=11 {if global.UnlockCutscene[9] MenuText=_sn12
global.StageGoing=rm_cutscene4b}
if global.MovieSel=12 {if global.UnlockCutscene[10] MenuText=_sn13
global.StageGoing=rm_cutscene4c}
if global.MovieSel=13 {if global.UnlockCutscene[11] MenuText=_sn14
global.StageGoing=rm_cutscene5a}
if global.MovieSel=14 {if global.UnlockCutscene[12] MenuText=_sn15
global.StageGoing=rm_cutscene5b}
if global.MovieSel=15 {if global.UnlockCutscene[13] MenuText=_sn16
global.StageGoing=rm_cutscene5c}

if global.MovieSel=16 {if global.UnlockCutscene[26] MenuText=_sn17
global.StageGoing=rm_intermission2}

if global.MovieSel=17 {if global.UnlockCutscene[14] MenuText=_sn18
global.StageGoing=rm_cutscene6a}
if global.MovieSel=18 {if global.UnlockCutscene[15] MenuText=_sn19
global.StageGoing=rm_cutscene6b}
if global.MovieSel=19 {if global.UnlockCutscene[16] MenuText=_sn20
global.StageGoing=rm_cutscene6c}
if global.MovieSel=20 {if global.UnlockCutscene[17] MenuText=_sn21
global.StageGoing=rm_cutscene7}

if global.MovieSel=21 {if global.UnlockCutscene[18] MenuText=_sn22
global.StageGoing=rm_cutscenebadend}

if global.MovieSel=22 {if global.UnlockCutscene[19] MenuText=_sn23
global.StageGoing=rm_cutscene8}
if global.MovieSel=23 {if global.UnlockCutscene[30] MenuText=_sn26
global.StageGoing=rm_creditscene}
imgscene=global.MovieSel+1

if MenuText="???" imgscene=0;

draw_sprite_ext(bg_cuts2frames,imgscene,160+6+320-MenuMoveX,72+6,1,1,0,c_white,MenuScaleX)
	
draw_set_halign(fa_center) draw_set_alpha(1) draw_set_color(c_white)
draw_text(round(224+320-MenuMoveX),64-8,_sn0)
draw_text(round(224+320-MenuMoveX),64+8+84+16,"◄ "+string(MenuText)+" ►\n"+string(global.MovieSel+1)+"/24")
fpsY=8
if MenuSil=0
{if MenuScaleX=1 MenuScaleX=0.8 else MenuScaleX=1 MenuSil=1}
else MenuSil-=0.5

if MenuMoveX<320 MenuMoveX+=24 else MenuMoveX=320

if key_A or keyboard_check_pressed(ord("J"))  or keyboard_check_pressed(vk_enter) 
{
	if MenuText="???"
	{
	PlaySound(snd_steal)
	}
	else
	{
	PlaySound(snd_picked) selectScreen=1 alarm[4]=10 screenBlack=1 canControl=0 
	}
	}
draw_command(1)

}
}