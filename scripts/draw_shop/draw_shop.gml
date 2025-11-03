// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_shop(){controlNO=9

///Autounlock





///////Unlockables
///General
global.UnlockStageA[1]=1
global.UnlockStageA[2]=1
if global.UnlockAltPal=1 global.UnlockStageA[3]=1
if global.UnlockAltPal2 global.UnlockStageA[4]=1

//Clear all stages
if global.Feats[30] global.UnlockStageA[5]=1 ///Sound Test
if global.Feats[30] global.UnlockStageA[6]=1 ///Cutscenes
if global.Feats[32] global.UnlockStageA[7]=1 ///Fishing
if global.Feats[31] global.UnlockStageA[8]=1 ///Slot Machine
///9-14 are Minigames and they have room that will unlock them automatically
if global.Feats[30] global.UnlockStageA[15]=1 ///Survival
if global.Feats[32] global.UnlockStageA[16]=1 ///Boss battle

///Gallery
global.GalleryUnlock[1]=1 ///Viva
global.GalleryUnlock[2]=1 ///Hina
global.GalleryUnlock[3]=1 ///Bahati
global.GalleryUnlock[4]=1 ///Sofia

if global.Feats[30]
{
//Enemies
global.GalleryUnlock[5]=1

if global.UnlockStage[1] and global.UnlockStage[2] and global.UnlockStage[3]
and global.UnlockStage[4] and global.UnlockStage[5] and global.UnlockStage[6]
global.GalleryUnlock[6]=1

if global.UnlockStage[7] and global.UnlockStage[8] and global.UnlockStage[9]
and global.UnlockStage[10] and global.UnlockStage[11] and global.UnlockStage[12]
global.GalleryUnlock[7]=1

if global.UnlockStage[13] and global.UnlockStage[14] and global.UnlockStage[15]
and global.UnlockStage[16] and global.UnlockStage[17] and global.UnlockStage[18]
global.GalleryUnlock[8]=1

//Bosses
if global.UnlockStage[1] and global.UnlockStage[2] and global.UnlockStage[3]
and global.UnlockStage[4]
global.GalleryUnlock[9]=1

if global.UnlockStage[5] and global.UnlockStage[6] and global.UnlockStage[7]
and global.UnlockStage[8] and global.UnlockStage[9] and global.UnlockStage[10]
global.GalleryUnlock[10]=1

if global.UnlockStage[11] and global.UnlockStage[12] and global.UnlockStage[13]
and global.UnlockStage[14] and global.UnlockStage[15] and global.UnlockStage[16]
global.GalleryUnlock[11]=1

if global.UnlockStage[17] and global.UnlockStage[18]
global.GalleryUnlock[12]=1
}
global.GalleryUnlock[13]=1
if global.Feats[32] global.GalleryUnlock[14]=1 ///Concept Art
global.GalleryUnlock[15]=1
global.GalleryUnlock[16]=1
	
///For testing
if x=-9999999999999999
{var unlockall=1;
	repeat(6)
	{
	global.UnlockStageA[unlockall]=1;
	unlockall+=1;
	}



}
if keyboard_check_pressed(ord("8"))
or keyboard_check_pressed(ord("7"))
{var unlockall=1; var unlocker=0;

if keyboard_check_pressed(ord("8")) unlocker=1
	
	repeat(16)
	{
	if shopSet=0 global.UnlockStageA[unlockall]=unlocker;
	if shopSet=1 global.CheatUnlock[unlockall]=unlocker;
	if shopSet=2 global.GalleryUnlock[unlockall]=unlocker;
	unlockall+=1;
	}
}


	
//controller_setup() 
if room=rm_shop
{fpsX=260 fpsY=8

if shopHello!=10 shopHello+=1 else {shopHello=11
	if shopHelloR=0 PlaySound(snd_betty1)
	if shopHelloR=1 PlaySound(snd_betty2)
	if shopHelloR=2 PlaySound(snd_betty3)
	if shopHelloR=3 PlaySound(snd_betty4)	
	}

if shopDialogueAlt!=1
{
if key_B or (keyboard_check_pressed(vk_escape) and canControl!=0)
if shopBuy!=-1 {}//{shopBuy=-1}
else
{
canControl=0
 shopHelloR=choose(0,1,2,3)
///Leave Shop
	if shopHelloR=0 PlaySound(snd_betty5)
	if shopHelloR=1 PlaySound(snd_betty6)
	if shopHelloR=2 PlaySound(snd_betty7)
	if shopHelloR=3 PlaySound(snd_betty8)		

alarm[4]=80 global.StageGoing=rm_menu gold_save() unlock_save()
shopDialogueAlt=8
}
}
	if canControl!=0
	{
if canControl=0 {shopDialogueAlt=8 
	if shopHelloR=0 shopDesc="      BYE BYE!" 
	if shopHelloR=1 shopDesc="      SEE YA!" 
	if shopHelloR=2 shopDesc="      SO LONG!" 
	if shopHelloR=3 shopDesc="      GOODBYE!" 
	
switch(global.Language)
{
case 2: ///Portuguese
	if shopHelloR=0 shopDesc=" TCHAU TCHAU!" 
	if shopHelloR=1 shopDesc="     TE VEJO\nDEPOIS!" 
	if shopHelloR=2 shopDesc="    ATÉ MAIS!" 
	if shopHelloR=3 shopDesc="      ADEUS!" 	
break;	
}
	
	shopAltFace=3 shopName="" shopCost=""
}
	}
///Buy Item
if shopBuy!=-1
{
///Check cheat here


if -key_left_pressed {if shopBuy=0 shopBuy=1 else shopBuy=0 PlaySound(snd_select)}
if key_right_pressed {if shopBuy=0 shopBuy=1 else shopBuy=0 PlaySound(snd_select)}

if key_B or (keyboard_check_pressed(vk_escape) and canControl!=0)
{shopBuy=-1 shopDialogueTime=2 shopDialogueAlt=5}

if key_A  or keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("J"))
if shopBuy=0 {


	shopBuy=-1 shopDialogueTime=2 shopDialogueAlt=5}
else {shopDialogueAlt=4 shopDialogueTime=120 shopBuy=-1
	
	PlaySound(snd_picked)
 shopHelloR=choose(0,1,2,3)
	if shopHelloR=0 PlaySound(snd_betty9)
	if shopHelloR=1 PlaySound(snd_betty10)
	if shopHelloR=2 PlaySound(snd_betty11)
	if shopHelloR=3 PlaySound(snd_betty12)	
	
	global.Gold-=shopPrice gold_save()
	
switch(shopSet)
{
case 0: switch(shopSelect) ////Palette and Features
{
case 1: global.UnlockCharacterData=1 break;
case 2: global.UnlockAltPal=1 break;
case 3: global.UnlockAltPal2=2 break;
case 4: global.UnlockAltPal3=3 break;
case 5: global.UnlockSoundTest=1 break;
case 6: global.UnlockMovies=1 break;
case 7: global.FishingUnlock=1 break;
case 8: global.SlotMachineUnlock=1 break;
case 9: global.MiniGameUnlock1=1 break;
case 10: global.MiniGameUnlock2=1 break;
case 11: global.MiniGameUnlock3=1 break;
case 12: global.MiniGameUnlock4=1 break;
case 13: global.MiniGameUnlock5=1 break;
case 14: global.MiniGameUnlock6=1 break;
case 15: global.SurvivalUnlock=1 break;
case 16: global.BossBattleUnlock=1 break;} break;


case 1: switch(shopSelect) ////Cheats
{
case 1: global.CheatUnlock[1]=1; break; ///Double HP
case 2: global.CheatUnlock[2]=1; break; ///Double Life
case 3: global.CheatUnlock[3]=1; break; ///Extra Power
case 4: global.CheatUnlock[4]=1; break; ///1-KO
case 5: global.CheatUnlock[5]=1; break; ///Mini Mode
case 6: global.CheatUnlock[6]=1; break; ///Random Diva
case 7: global.CheatUnlock[7]=1; break; ///Mirror Mode
case 8: global.CheatUnlock[8]=1; break; ///Full Heal
case 9: global.CheatUnlock[9]=1; break; ///Special Non-Drainable
case 10: global.CheatUnlock[10]=1; break; ///Chargable Super
case 11: global.CheatUnlock[11]=1; break; ///Infinite Weapon
case 12: global.CheatUnlock[12]=1; break; ///Infinite Time
case 13: global.CheatUnlock[13]=1; break; ///Infinite HP
case 14: global.CheatUnlock[14]=1; break; ///Infinite Lives
case 15: global.CheatUnlock[15]=1; break; ///Infinite Continues
case 16: global.CheatUnlock[16]=1; break; ///God Mode
} break;

case 2: switch(shopSelect) ////Gallery
{
case 1: global.Gallery[1]=1; break; ///Viva
case 2: global.Gallery[2]=1; break; ///Hina
case 3: global.Gallery[3]=1; break; ///Bahati
case 4: global.Gallery[4]=1; break; ///Sofia
case 5: global.Gallery[5]=1; break; ///Enemy Set 1
case 6: global.Gallery[6]=1; break; ///Enemy Set 2
case 7: global.Gallery[7]=1; break; ///Enemy Set 3
case 8: global.Gallery[8]=1; break; ///Enemy Set 4
case 9: global.Gallery[9]=1; break; ///Boss Set 1
case 10: global.Gallery[10]=1; break; ///Boss Set 2
case 11: global.Gallery[11]=1; break; ///Boss Set 3
case 12: global.Gallery[12]=1; break; ///Boss Set 4
case 13: global.Gallery[13]=1; break; ///Misc Characters
case 14: global.Gallery[14]=1; break; ///Concept Art
case 15: global.Gallery[15]=1; break; ///Key Art
case 16: global.Gallery[16]=1; break; ///Guest Art
} break;

}
feats_check(38);
feats_check(39);
feats_check(40);
	 unlock_save()
	 
	 
	}/// BUY ITEM
}

if betatest=1
{if keyboard_check_pressed(vk_backspace)
	if keyboard_check(vk_shift)
	shopreset()
	else
		global.Gold=get_string("Set Money",global.Gold)
	
	}

if shopSet=0 shopName=""

shopName=""
shopDesc=""
shopCost=""
shopSelect=-1

var _tp="COST"
switch(global.Language)
{
case 2: ///Portuguese
_tp="CUSTO"
break;
}
////// Shop items - Set 1
if shopSet=0 
{

if shopselY=0 and shopselX=0
{shopPrice=3000
shopName="CHARACTER PROFILE" shopCost=string(_tp)+":3000"
shopDesc="CHECK THEIR INFO! \nBUT TO GET THE\nENEMY DATA YOU\nGOTTA BEAT EM' UP!"
switch(global.Language)
{
case 2: ///Portuguese
shopName="PERFIL DO PERSONAGEM"
shopDesc="VEJA AS INFORMAÇÕES\nDELES! MAS PARA\nOBTER DADOS\nDO INIMIGO,\nVOCÊ PRECISA DERROTA-LOS!"
break;
}
if global.UnlockCharacterData=0 shopSelect=1 else {shopSelect=-2 shopCost="SOLD OUT!"}
}
if shopselY=0 and shopselX=1
{shopPrice=4000 shopName="PALETTE SWAP" shopCost=string(_tp)+":4000"
shopDesc="BORING OF YOUR\nCOSTUME COLOR?\nYOU CAN CHANGE IT\nWITH THIS!"
switch(global.Language)
{
case 2: ///Portuguese
shopName="TROCA DE PALETA"
shopDesc="CANSADA DAS SUAS CORES? VOCÊ\nPODE MUDÁ-LAS COM\nISTO!"
break;
}
if global.UnlockAltPal=0 shopSelect=2 else {shopSelect=-2 shopCost="SOLD OUT!"}
}
if shopselY=0 and shopselX=2
{shopPrice=6000 shopName="PALETTE SWAP 2" shopCost=string(_tp)+":4000"
shopDesc="MORE COLORS!\nAND MORE PALETTES!\nHAVE MORE COLORS\nWITH THIS ONE!"

switch(global.Language)
{
case 2: ///Portuguese
shopName="TROCA DE PALETA 2"
shopDesc="MAIS CORES!\nMAIS PALETAS! TENHA\nMAIS CORES COM ISSO!"
break;
}

if global.UnlockAltPal2=0 shopSelect=3 else {shopSelect=-2 shopCost="SOLD OUT!"}
}
if shopselY=0 and shopselX=3
{shopPrice=8000 shopName="CUSTOM PALETTE" shopCost=string(_tp)+":8000"
shopDesc="WANT TO MAKE\nYOUR OWN PALETTE? \nUSE THIS TO\nRECOLOR THE DIVAS!"

switch(global.Language)
{
case 2: ///Portuguese
shopName="PALETA PERSONALIZADA"
shopDesc="QUER CRIAR\nSUA PRÓPRIA PALETA?\nUSE ISSO PARA\nRECORIR AS DIVAS!"
break;
}

if global.UnlockAltPal3=0 shopSelect=4 else {shopSelect=-2 shopCost="SOLD OUT!"}
}
////
if shopselY=1 and shopselX=0
{shopPrice=5000 shopName="SOUND TEST" shopCost=string(_tp)+":5000"
shopDesc="WANNA HEAR SOME\nTUNES? HAVE A\nLISTEN TO THIS!"

switch(global.Language)
{
case 2: ///Portuguese
shopName="TESTE DE SOM"
shopDesc="QUER OUVIR UM\nSOM? DÊ UMA\nOUVIDA NISSO AQUI!"
break;
}

if global.UnlockSoundTest=0 shopSelect=5 else {shopSelect=-2 shopCost="SOLD OUT!"}
}
if shopselY=1 and shopselX=1
{shopPrice=5000 shopName="CUTSCENES" shopCost=string(_tp)+":5000"
shopDesc="WATCH AGAIN\nSCENES YOU HAVE\nSEEN HERE IN THE\nRECORDER!"

switch(global.Language)
{
case 2: ///Portuguese
shopName="CENAS"
shopDesc="REVEJA CENAS\nQUE VOCÊ VIU AQUI\nNO GRAVADOR!"
break;
}

if global.UnlockMovies=0 shopSelect=6 else {shopSelect=-2 shopCost="SOLD OUT!"}
}
if shopselY=1 and shopselX=2
{shopPrice=7500 shopName="FISHING GAME" shopCost=string(_tp)+":7500"
shopDesc="SPEND YOUR\nTIME AT THE LAKE\nFISHING IN THIS\nMINIGAME!"
switch(global.Language)
{
case 2: ///Portuguese
shopName="JOGO DE PESCA"
shopDesc="PASSE SEU\nTEMPO NO LAGO\nPESCANDO NESTE\nMINIGAME!"
break;
}

if global.FishingUnlock=0 shopSelect=7 else {shopSelect=-2 shopCost="SOLD OUT!"}
}
if shopselY=1 and shopselX=3
{shopPrice=10000 shopName="SLOT MACHINE" shopCost=string(_tp)+":10000"
shopDesc="PLAY WITH THE\n BIG GOOD OL'\nONE-ARMED BANDIT:\nTHE SLOT MACHINE!"

switch(global.Language)
{
case 2: ///Portuguese
shopName="CAÇA-NÍQUEIS"
shopDesc="ENCARE O BOM E\nVELHO LADRÃO\nDE METAIS:\nO CAÇA-NÍQUEIS!"
break;
}

if global.SlotMachineUnlock=0 shopSelect=8 else {shopSelect=-2 shopCost="SOLD OUT!"}
}
/////
if shopselY=2 and shopselX=0
{shopPrice=5000 shopName="CAR BASH" shopCost=string(_tp)+":5000"
shopDesc="WRECK SOME CHUMP'S\nCAR IN THIS\nMINIGAME!"

switch(global.Language)
{
case 2: ///Portuguese
shopName="ACIDENTE DE CARRO"
shopDesc="DESTRUA O CARRO\nDE ALGUM IDIOTA\nNESTE MINIGAME!"
break;
}

if global.MiniGameUnlock1=0 shopSelect=9 else {shopSelect=-2 shopCost="SOLD OUT!"}
}
if shopselY=2 and shopselX=1
{shopPrice=5000 shopName="BRICK CHOP" shopCost=string(_tp)+":5000"
shopDesc="TEST YOUR MIGHT!\nBREAK THE BRICKS\nIN THIS MINAGE!"


switch(global.Language)
{
case 2: ///Portuguese
shopName="QUEBRA DE TIJOLOS"
shopDesc="TESTE SUA FORÇA!\nQUEBRE OS TIJOLOS\nNESTA MINIGAME!"
break;
}

if global.MiniGameUnlock2=0 shopSelect=10 else {shopSelect=-2 shopCost="SOLD OUT!"}
}
if shopselY=2 and shopselX=2
{shopPrice=5000 shopName="CHOW TIME" shopCost=string(_tp)+":5000"
shopDesc="AN EATING\nCOMPETITION! HOW\nMUCH CAN YOU EAT?"

switch(global.Language)
{
case 2: ///Portuguese
shopName="HORA DA BOIA"
shopDesc="UMA COMPETIÇÃO\nDE COMIDA!\nQUANTO VOCÊ\nCONSEGUE COMER?"
break;
}

if global.MiniGameUnlock3=0 shopSelect=11 else {shopSelect=-2 shopCost="SOLD OUT!"}
}
if shopselY=2 and shopselX=3
{shopPrice=5000 shopName="CRASHING CACOPHONY" shopCost=string(_tp)+":5000"
shopDesc="OUTSING YOUR\nRIVALS WITH A\nVERY HIGH NOTE!"

switch(global.Language)
{
case 2: ///Portuguese
shopName="CACOFONIA VIOLENTA"
shopDesc="SUPERE SEUS\nRIVAIS COM UMA\nNOTA MUITO ALTA!"
break;
}

if global.MiniGameUnlock4=0 shopSelect=12 else {shopSelect=-2 shopCost="SOLD OUT!"}
}
///
if shopselY=3 and shopselX=0
{shopPrice=5000 shopName="BULL RUSH" shopCost=string(_tp)+":5000"
shopDesc="RUN FROM THE BULL!\nTRY SURVIVIN'\nIN THIS MINIGAME!"

switch(global.Language)
{
case 2: ///Portuguese
shopName="TOURO AGITADO"
shopDesc="FUJA DO TOURO!\nTENTE SOBREVIVER\nNESTE MINIGAME!"
break;
}

if global.MiniGameUnlock5=0 shopSelect=13 else {shopSelect=-2 shopCost="SOLD OUT!"}
}
if shopselY=3 and shopselX=1
{shopPrice=5000 shopName="HIGH STRIKER" shopCost=string(_tp)+":5000"
shopDesc="HAMMER DOWN TO\nTEST YOUR POWER\nIN THIS MINIGAME!"

switch(global.Language)
{
case 2: ///Portuguese
shopName="MARTELO DE FORÇA"
shopDesc="MARTELE PARA\nTESTAR SUA FORÇA\nNESTE MINIGAME!"
break;
}

if global.MiniGameUnlock6=0 shopSelect=14 else {shopSelect=-2 shopCost="SOLD OUT!"}
}
if shopselY=3 and shopselX=2
{shopPrice=7500 shopName="SURVIVAL MODE" shopCost=string(_tp)+":7500"
shopDesc="CAN YOU SURVIVE\nTHE BADDIES'\nONSLAUGHT?"

switch(global.Language)
{
case 2: ///Portuguese
shopName="MODO DE SOBREVIVÊNCIA"
shopDesc="VOCÊ CONSEGUE\nSOBREVIVER À\nINVESTIDA\nDOS MALVADOS?"
break;
}

if global.SurvivalUnlock=0 shopSelect=15 else {shopSelect=-2 shopCost="SOLD OUT!"}
}
if shopselY=3 and shopselX=3
{shopPrice=7500 shopName="BOSS BATTLES" shopCost=string(_tp)+":7500"
shopDesc="CAN YOU DEFEAT\nEVERY SINGLE\nBOSS?"

switch(global.Language)
{
case 2: ///Portuguese
shopName="MODO CAÇA-CHEFES"
shopDesc="VOCÊ CONSEGUE\nDERROTAR CADA\nUM DOS CHEFÕES?"
break;
}

if global.BossBattleUnlock=0 shopSelect=16 else {shopSelect=-2 shopCost="SOLD OUT!"}
}
if shopselX=4
{shopSelect=0 shopCost="" shopDesc="" shopName=""} else
if shopSelect>0
if global.UnlockStageA[shopSelect]=0 {shopSelect=-1 shopCost="LOCKED" shopDesc="" shopName=""}

}
if shopSet=1  ///Cheats
{
if shopselY=0 and shopselX=0
{shopPrice=10000 shopName="DOUBLE HP" shopCheatNO=1; shopCheatP=-1000
shopDesc="\nYOU'LL HAVE\nDOUBLE HEALTH!"
switch(global.Language)
{
case 2: ///Portuguese
shopName="HP DOBRADO"
shopDesc="\nVOCÊ TERÁ SAÚDE\nEM DOBRO!"
break;
}

if global.CheatUnlock[1]=0 shopSelect=1 else shopSelect=-3}
if shopselY=0 and shopselX=1
{shopPrice=10000 shopName="DOUBLE LIFE" shopCheatNO=2; shopCheatP=-1000
shopDesc="\nYOU START WITH\nDOUBLE YOUR\nLIFE!"

switch(global.Language)
{
case 2: ///Portuguese
shopName="VIDAS EM DOBRO"
shopDesc="\nVOCÊ COMEÇA COM\nO DOBRO DE\nVIDAS!"
break;
}

if global.CheatUnlock[2]=0 shopSelect=2 else shopSelect=-3}
if shopselY=0 and shopselX=2
{shopPrice=10000 shopName="EXTRA POWER" shopCheatNO=3; shopCheatP=-1000
shopDesc="\nYOU WILL BE A\nLITTLE MORE\nPOWEFUL!"

switch(global.Language)
{
case 2: ///Portuguese
shopName="PODER EXTRA"
shopDesc="\nVOCÊ SERÁ UM\nPOUCO MAIS\nPODEROSO!"
break;
}

if global.CheatUnlock[3]=0 shopSelect=3 else shopSelect=-3}
if shopselY=0 and shopselX=3
{shopPrice=5000 shopName="1-HIT MODE" shopCheatNO=4; shopCheatP=0
shopDesc="\nIF YOU GET HIT,\nYOU'LL DIE!\nCHALLENGING!"

switch(global.Language)
{
case 2: ///Portuguese
shopName="MODO 1 TAPA"
shopDesc="\nSE VOCÊ FOR\nATINGIDO,\nVOCÊ MORRE!\nTENSO!"
break;
}

if global.CheatUnlock[4]=0 shopSelect=4 else shopSelect=-3}
//
if shopselY=1 and shopselX=0
{shopPrice=10000 shopName="MINI MODE" shopCheatNO=5; shopCheatP=-1000
shopDesc="\nYOU BECOME TINY!\nIT'S ONLY JUST\nFOR SHOW..."

switch(global.Language)
{
case 2: ///Portuguese
shopName="MODO PÍTICO"
shopDesc="\nVOCÊ FICA PEQUENO!\nMAS SÓ EM\nAPARÂNCIA..."
break;
}

if global.CheatUnlock[5]=0 shopSelect=5 else shopSelect=-3}
if shopselY=1 and shopselX=1
{shopPrice=10000 shopName="DIVA RANDOMIZER" shopCheatNO=6; shopCheatP=-1000
shopDesc="\nWHEN YOU RESPWAWN,\nYOU BECOME A\nDIFFERENT DIVA!"

switch(global.Language)
{
case 2: ///Portuguese
shopName="ROLETA DE DIVAS"
shopDesc="\nSE TORNE UMA DIVA\nDIFERENTEnQUANDO\nRENASCER!"
break;
}

if global.CheatUnlock[6]=0 shopSelect=6 else shopSelect=-3}
if shopselY=1 and shopselX=2
{shopPrice=10000 shopName="MIRROR MODE" shopCheatNO=7; shopCheatP=-1000
shopDesc="\nPLAY THE GAME,\nWITH A MIRRORED\nVIEW!"

switch(global.Language)
{
case 2: ///Portuguese
shopName="MODO ESPELHO"
shopDesc="\nJOGUE COM A\nVISÃO ESPELHADA!"
break;
}

if global.CheatUnlock[7]=0 shopSelect=7 else shopSelect=-3}
if shopselY=1 and shopselX=3
{shopPrice=25000 shopName="FULL HEAL SNACKS" shopCheatNO=8; shopCheatP=-2000
shopDesc="\nHEALTH WILL BE\nFULLY RESTORED\nFROM ANY FOOD!"

switch(global.Language)
{
case 2: ///Portuguese
shopName="LANCHES CURA-TUDO"
shopDesc="\nA SAÚDE SERÁ\nTOTALMENTE\nRESTAURADA A\nPARTIR DE\nQUALQUER COMIDA!"
break;
}

if global.CheatUnlock[8]=0 shopSelect=8 else shopSelect=-3}
//
if shopselY=2 and shopselX=0
{shopPrice=25000 shopName="NO MORE DRAIN" shopCheatNO=9; shopCheatP=-2000
shopDesc="\nDISABLE THE HEALTH\nDRAIN FROM USING\nTHE SPECIALS!"

switch(global.Language)
{
case 2: ///Portuguese
shopName="DIETA DE VAMPIRO"
shopDesc="\nDESATIVE A PERCA DE\nSAÚDE AO USAR\nESPECIAIS!"

break;
}

if global.CheatUnlock[9]=0 shopSelect=9 else shopSelect=-3}
if shopselY=2 and shopselX=1
{shopPrice=25000 shopName="SHOWTIME RECHARGER" shopCheatNO=10; shopCheatP=-2000
shopDesc="\nYOUR SHOWTIME\nCHARGES OVER TIME!"

switch(global.Language)
{
case 2: ///Portuguese
shopName="CARREGADOR DE ESPETÁCULO"
shopDesc="\nSEU ESPETÁCULO\nCARREGA COM O TEMPO!"
break;
}

if global.CheatUnlock[10]=0 shopSelect=10 else shopSelect=-3}
if shopselY=2 and shopselX=2
{shopPrice=40000 shopName="UNBREAKABLE" shopCheatNO=11; shopCheatP=-5000
shopDesc="\nYOUR WEAPON WILL\nNEVER RUN OUT OF\nUSES!"

switch(global.Language)
{
case 2: ///Portuguese
shopName="INQUEBRÁVEL"
shopDesc="\nSUAS ARMAS NUNCA\nQUEBRARÃO!"
break;
}

if global.CheatUnlock[11]=0 shopSelect=11 else shopSelect=-3}
if shopselY=2 and shopselX=3
{shopPrice=25000 shopName="TIMELESS" shopCheatNO=12; shopCheatP=-5000
shopDesc="\nDISABLE THE TIMER!"

switch(global.Language)
{
case 2: ///Portuguese
shopName="ATEMPORAL"
shopDesc="\nDESATIVE O TEMPO!"
break;
}

if global.CheatUnlock[12]=0 shopSelect=12 else shopSelect=-3}
//
if shopselY=3 and shopselX=0
{shopPrice=99999 shopName="SUPERDIVA" shopCheatNO=13; shopCheatP=-10000
shopDesc="\nINFINITE HEALTH!"

switch(global.Language)
{
case 2: ///Portuguese
shopName="SUPERDIVA"
shopDesc="\nSAÚDE INFINITA!"
break;
}

if global.CheatUnlock[13]=0 shopSelect=13 else shopSelect=-3}
if shopselY=3 and shopselX=1
{shopPrice=99999 shopName="MS.IMMORTAL" shopCheatNO=14; shopCheatP=-10000
shopDesc="\nLIVES BECOME\nINFINITE!"

switch(global.Language)
{
case 2: ///Portuguese
shopName="SRTA. IMORTAL"
shopDesc="\nVIDAS INFINITAS!"
break;
}

if global.CheatUnlock[14]=0 shopSelect=14 else shopSelect=-3}
if shopselY=3 and shopselX=2
{shopPrice=99999 shopName="UNLIMITED TOKENS" shopCheatNO=15; shopCheatP=-10000
shopDesc="\nCONTINUES BECOME\nINFINITE!"

switch(global.Language)
{
case 2: ///Portuguese
shopName="FICHAS ILIMITADAS"
shopDesc="\nCONTINUE VOLTANDO\nINFINITAMENTE!"
break;
}

if global.CheatUnlock[15]=0 shopSelect=15 else shopSelect=-3}
if shopselY=3 and shopselX=3
{shopPrice=999999 shopName="GOD MODE" shopCheatNO=16; shopCheatP=-999999
shopDesc="\nUNLIMITED POWER!!!"

switch(global.Language)
{
case 2: ///Portuguese
shopName="MODO DEUSA"
shopDesc="\nPODER ONIPOTENTE!!!"
break;
}

if global.CheatUnlock[16]=0 shopSelect=16 else shopSelect=-3}
//


if shopSelect!=-1
{
var _tp="PENALTY"
switch(global.Language)
{///Portuguese
case 2:
_tp="PÊNALTI"
break;
}

var _tp="COST"
var _ct="CHEAT"
switch(global.Language)
{
case 2: ///Portuguese
_tp="CUSTO"
_ct="TRAPAÇA"
break;
}

shopCost=string(_tp)+":"+string(shopPrice)+"\n("+string(_tp)+":"+string(shopCheatP)+")"
if global.CheatUnlock[shopCheatNO]
{shopPrice=0
if global.Cheat[shopCheatNO]=0 shopCost=string(_ct)+":OFF\n"+string(_tp)+string(shopCheatP)
if global.Cheat[shopCheatNO]=1 shopCost=string(_ct)+":ON\n"+string(_tp)+string(shopCheatP)
}
}

if shopselX=4
{shopSelect=0 shopCost="" shopDesc="" shopName=""}
}

///Gallery
if shopSet=2
{
if shopselY=0 and shopselX=0
{shopPrice=5000 shopName="VIVA'S GALLERY" shopCost="COST:5000"
shopDesc="ARTWORK OF THE\nTHUNDEROUS VIVA!"

switch(global.Language)
{
case 2: ///Portuguese
shopName="GALERIA DA VIVA"
shopDesc="ARTES DA\nTROVEJANTE VIVA!"
break;
}

if global.Gallery[1]=0 shopSelect=1 else {shopSelect=-2 shopCost="SOLD OUT!"}
}
if shopselY=0 and shopselX=1
{shopPrice=5000 shopName="HINA'S GALLERY" shopCost="COST:5000"
shopDesc="ARTWORK OF THE\nFLAMING HOT HINA!"

switch(global.Language)
{
case 2: ///Portuguese
shopName="GALERIA DA HINA"
shopDesc="ARTES DA\nARDENTE HINA!"
break;
}

if global.Gallery[2]=0  shopSelect=2 else {shopSelect=-2 shopCost="SOLD OUT!"}
}
if shopselY=0 and shopselX=2
{shopPrice=5000 shopName="BAHATI'S GALLERY" shopCost="COST:5000"
shopDesc="ARTWORK OF THE\nBIG AND FABULOUS\nBAHATI!"

switch(global.Language)
{
case 2: ///Portuguese
shopName="GALERIA DA BAHATI"
shopDesc="ARTES DA GRANDE\nE FABULOSA\nBAHATI!"
break;
}

if global.Gallery[3]=0  shopSelect=3 else {shopSelect=-2 shopCost="SOLD OUT!"}
}
if shopselY=0 and shopselX=3
{shopPrice=5000 shopName="SOFIA'S GALLERY" shopCost="COST:5000"
shopDesc="ARTWORK OF THE\nSPICY AND LEGGY\nSOFIA!"

switch(global.Language)
{
case 2: ///Portuguese
shopName="GALERIA DA SOFIA"
shopDesc="ARTES DA\nPICANTE E COXUDA\nSOFIA!"
break;
}

if global.Gallery[4]=0  shopSelect=4 else {shopSelect=-2 shopCost="SOLD OUT!"}
}
////
if shopselY=1 and shopselX=0
{shopPrice=5000 shopName="ENEMY GALLERY 1" shopCost="COST:5000"
shopDesc="ARTWORK OF THE\nENEMIES FROM THE\n1-2 STAGES!"

switch(global.Language)
{
case 2: ///Portuguese
shopName="GALERIA DO INIMIGOS 1"
shopDesc="ARTES DOS\nINIMIGOS DOS\nPALCOS 1 E 2!"
break;
}

if global.Gallery[5]=0  shopSelect=5 else {shopSelect=-2 shopCost="SOLD OUT!"}
}
if shopselY=1 and shopselX=1
{shopPrice=5000 shopName="ENEMY GALLERY 2" shopCost="COST:5000"
shopDesc="ARTWORK OF THE\nENEMIES FROM THE\n3-4 STAGES!"

switch(global.Language)
{
case 2: ///Portuguese
shopName="GALERIA DO INIMIGOS 2"
shopDesc="ARTES DOS\nINIMIGOS DOS\nPALCOS 3 E 4!"
break;
}

if global.Gallery[6]=0  shopSelect=6 else {shopSelect=-2 shopCost="SOLD OUT!"}
}
if shopselY=1 and shopselX=2
{shopPrice=5000 shopName="ENEMY GALLERY 3" shopCost="COST:5000"
shopDesc="ARTWORK OF THE\nENEMIES FROM THE\n5-6 STAGES!"

switch(global.Language)
{
case 2: ///Portuguese
shopName="GALERIA DO INIMIGOS 3"
shopDesc="ARTES DOS\nINIMIGOS DOS\nPALCOS 5 E 6!"
break;
}

if global.Gallery[7]=0 shopSelect=7 else {shopSelect=-2 shopCost="SOLD OUT!"}
}
if shopselY=1 and shopselX=3
{shopPrice=5000 shopName="ENEMY GALLERY 4" shopCost="COST:5000"
shopDesc="ARTWORK OF THE\nENEMIES FROM THE\n7-8 STAGES!"

switch(global.Language)
{
case 2: ///Portuguese
shopName="GALERIA DO INIMIGOS 4"
shopDesc="ARTES DOS\nINIMIGOS DOS\nPALCOS 7 E 8!"
break;
}

if global.Gallery[8]=0  shopSelect=8 else {shopSelect=-2 shopCost="SOLD OUT!"}
}
/////
if shopselY=2 and shopselX=0
{shopPrice=5000 shopName="BOSS GALLERY 1" shopCost="COST:5000"
shopDesc="ARTWORK OF THE\nBOSSES FROM THE\n1-2 STAGES!"

switch(global.Language)
{
case 2: ///Portuguese
shopName="GALERIA DE CHEFES 1"
shopDesc="ARTES DOS\nCHEFES DOS\nPALCOS 1 E 2!"
break;
}

if global.Gallery[9]=0  shopSelect=9 else {shopSelect=-2 shopCost="SOLD OUT!"}
}
if shopselY=2 and shopselX=1
{shopPrice=5000 shopName="BOSS GALLERY 2" shopCost="COST:5000"
shopDesc="ARTWORK OF THE\nBOSSES FROM THE\n3-4 STAGES!"

switch(global.Language)
{
case 2: ///Portuguese
shopName="GALERIA DE CHEFES 2"
shopDesc="ARTES DOS\nCHEFES DOS\nPALCOS 3 E 4!"
break;
}

if global.Gallery[10]=0  shopSelect=10 else {shopSelect=-2 shopCost="SOLD OUT!"}
}
if shopselY=2 and shopselX=2
{shopPrice=5000 shopName="BOSS GALLERY 3" shopCost="COST:5000"
shopDesc="ARTWORK OF THE\nBOSSES FROM THE\n5-6 STAGES!"

switch(global.Language)
{
case 2: ///Portuguese
shopName="GALERIA DE CHEFES 3"
shopDesc="ARTES DOS\nCHEFES DOS\nPALCOS 5 E 6!"
break;
}

if global.Gallery[11]=0  shopSelect=11 else {shopSelect=-2 shopCost="SOLD OUT!"}
}
if shopselY=2 and shopselX=3
{shopPrice=5000 shopName="BOSS GALLERY 4" shopCost="COST:5000"
shopDesc="ARTWORK OF THE\nBOSSES FROM THE\n7-8 STAGES!"

switch(global.Language)
{
case 2: ///Portuguese
shopName="GALERIA DE CHEFES 4"
shopDesc="ARTES DOS\nCHEFES DOS\nPALCOS 7 E 8!"
break;
}

if global.Gallery[12]=0  shopSelect=12 else {shopSelect=-2 shopCost="SOLD OUT!"}
}
///
if shopselY=3 and shopselX=0
{shopPrice=5000 shopName="MISC GALLERY" shopCost="COST:5000"
shopDesc="ARTWORK OF THE\nSOME OTHER\nCHARACTERS...\nWHICH INCLUDES ME."

switch(global.Language)
{
case 2: ///Portuguese
shopName="GALERIAS DIVERSAS"
shopDesc="ARTES DE ALGUNS\nOUTROS\nPERSONAGENS...\nINCLUINDO EU."
break;
}

if global.Gallery[13]=0  shopSelect=13 else {shopSelect=-2 shopCost="SOLD OUT!"}
}
if shopselY=3 and shopselX=1
{shopPrice=5000 shopName="CONCEPT ART" shopCost="COST:5000"
shopDesc="DEVELOPMENT ART\nOF THIS\nHERE GAME!"

switch(global.Language)
{
case 2: ///Portuguese
shopName="ARTES CONCEITUAIS"
shopDesc="ARTES DE\nDESENVOLVIMENTO\nDESTE JOGO MESMO!"
break;
}

if global.Gallery[14]=0  shopSelect=14 else {shopSelect=-2 shopCost="SOLD OUT!"}
}
if shopselY=3 and shopselX=2
{shopPrice=5000 shopName="KEY ART" shopCost="COST:5000"
shopDesc="PROMOTIONAL,\nNICE ART OF\nTHE GAME!"

switch(global.Language)
{
case 2: ///Portuguese
shopName="ARTES-CHAVE"
shopDesc="BELA ARTE\nPROMOCIONAL DO\nJOGO!"
break;
}

if global.Gallery[15]=0  shopSelect=15 else {shopSelect=-2 shopCost="SOLD OUT!"}
}
if shopselY=3 and shopselX=3
{shopPrice=5000 shopName="GUEST ART" shopCost="COST:5000"
shopDesc="ARTWORK DONE\nBY OTHER PEOPLE!\nNICE STUFF!"

switch(global.Language)
{
case 2: ///Portuguese
shopName="ARTES DOS CONVIDADOS"
shopDesc="ARTE FEITA\nPOR OUTRAS PESSOAS\nINCRÍVEIS!\nMUITO MASSA!"
break;
}

if global.Gallery[16]=0  shopSelect=16 else {shopSelect=-2 shopCost="SOLD OUT!"}
}

if shopselX=4
{shopSelect=0 shopCost="" shopDesc="" shopName=""} else
if shopSelect>0
if global.GalleryUnlock[shopSelect]=0 {shopSelect=-1 shopCost="LOCKED" shopDesc="" shopName=""}
}

if shopDialogueAlt!=0
{
	if canControl=1
	{
if shopDialogueAlt=1
{

if shopHelloR=0	shopDesc="     WELCOME!"
if shopHelloR=1	shopDesc="   HELLO THERE!"
if shopHelloR=2	shopDesc="  HOW DO YOU DO?"
if shopHelloR=3	shopDesc="  WHAT'LL IT BE?"	
switch(global.Language)
{
case 2: ///Portuguese
shopDesc="SORRY,THIS ONE'S\nUNAVAILABLE."
if shopHelloR=0	shopDesc="    BEM-VINDA!"
if shopHelloR=1	shopDesc="  OLÁ, FALA AÍ!"
if shopHelloR=2	shopDesc="   TUDO EM CIMA?"
if shopHelloR=3	shopDesc="  O QUE VAI SER?"	
break;
}

	
	shopName="" shopCost=""}
if shopDialogueAlt=2
{
shopDesc="SORRY,THIS ONE'S\nUNAVAILABLE."
switch(global.Language)
{
case 2: ///Portuguese
shopDesc="PERDÃO,ESSE TÁ\nINDISPONÍVEL." break;
}
	
shopAltFace=3 shopName="" shopCost=""}
if shopDialogueAlt=3
{

shopDesc="  WANT THAT ONE?" 
	
shopAltFace=-1}
shopDialogueTime-=1 if shopDialogueTime=0 {shopDialogueAlt=0 shopAltFace=-1}
if shopDialogueAlt=4
{
if shopHelloR=0	shopDesc="    THANK YOU!"
if shopHelloR=1	shopDesc="      SOLD!"
if shopHelloR=2	shopDesc="THANKS FOR BUYING!"
if shopHelloR=3	shopDesc="   HERE YOU GO!"	
	
switch(global.Language)
{
case 2: ///Portuguese
if shopHelloR=0	shopDesc="     OBRIGADA!"
if shopHelloR=1	shopDesc="     VENDIDO!"
if shopHelloR=2	shopDesc="OBRIGADA POR\nCOMPRAR!"
if shopHelloR=3	shopDesc="      LÁ VAI!"	
break;
}
	
	shopName="" shopCost="" shopAltFace=5
	
	}
if shopDialogueAlt=5 {}
if shopDialogueAlt=6
{shopDesc="OH YOU BOUGHT\nTHAT ONE ALREADY."

switch(global.Language)
{
case 2: ///Portuguese
shopDesc="AH VOCÊ JÁ\nCOMPROU ESSE." break;
}	

	shopAltFace=3 shopName="" shopCost=""}
if shopDialogueAlt=7
{shopDesc="SORRY,YOU DON'T\nHAVE ENOUGH CASH." 
switch(global.Language)
{
case 2: ///Portuguese
shopDesc="PERDÃO, VOCÊ NÃO\nTEM GRANA O\nSUFICIENTE." break;
}		

	shopAltFace=3 shopName="" shopCost=""}
if shopDialogueAlt=8
{
	
	
	if shopHelloR=0 shopDesc="     BYE BYE!" 
	if shopHelloR=1 shopDesc="     SEE YA!" 
	if shopHelloR=2 shopDesc="     SO LONG!" 
	if shopHelloR=3 shopDesc="     GOODBYE!" 
switch(global.Language)
{
case 2: ///Portuguese
	if shopHelloR=0 shopDesc=" TCHAU TCHAU!" 
	if shopHelloR=1 shopDesc="     TE VEJO\nDEPOIS!" 
	if shopHelloR=2 shopDesc="    ATÉ MAIS!" 
	if shopHelloR=3 shopDesc="      ADEUS!" 	
break;	
}
	
	shopAltFace=3 shopName="" shopCost=""}
}else {
	if shopHelloR=0 shopDesc="     BYE BYE!" 
	if shopHelloR=1 shopDesc="     SEE YA!" 
	if shopHelloR=2 shopDesc="     SO LONG!" 
	if shopHelloR=3 shopDesc="     GOODBYE!" 
	shopAltFace=3 shopName="" shopCost=""}

switch(global.Language)
{
case 2: ///Portuguese
	if shopHelloR=0 shopDesc=" TCHAU TCHAU!" 
	if shopHelloR=1 shopDesc="     TE VEJO\nDEPOIS!" 
	if shopHelloR=2 shopDesc="    ATÉ MAIS!" 
	if shopHelloR=3 shopDesc="      ADEUS!" 	
break;	
}

}
else
{
if shopselX!=4
if key_A or keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("J"))
if shopSelect=-1 or shopSelect=-2
{


shopDialogueTime=120 shopDialogueAlt=2 PlaySound(snd_steal)
if shopSelect=-2 {shopDialogueAlt=6}



}
else
{
	

if shopBuy=-1
{
if global.Gold>=shopPrice
{
PlaySound(snd_picked)
shopDialogueAlt=3 shopDialogueTime=-1
shopBuy=1
}
else {shopDialogueTime=120 shopDialogueAlt=7 PlaySound(snd_steal)}
}

}

}



shopFrame0b=0
shopFrame0+=0.1 if shopFrame0>8 shopFrame0=0
if shopFrame0=clamp(shopFrame0,2,8)
{shopFrame0b=1
if shopFrame0=clamp(shopFrame0,4,6) shopFrame0b=2
}

if shopAltFace=-1
{
shopFrame1b=0
shopFrame1+=0.01 if shopFrame1>6 shopFrame1=0
if shopFrame1=clamp(shopFrame1,3-0.1,3+0.1)
{shopFrame1b=1
if shopFrame1=clamp(shopFrame1,3-0.05,3+0.05) shopFrame1b=2
}}
else shopFrame1b=shopAltFace

if shopDialogueAlt=1
{if shopFrameIntro<6-0.15 {shopFrameIntro+=0.15
draw_sprite(spr_shopgirlintro,shopFrameIntro,160,0)}
else draw_sprite(spr_shopgirl,0,160,0)
}
else
{
draw_sprite(spr_shopgirl,shopFrame0b,160,0)
draw_sprite(spr_shopgirl_face,shopFrame1b,160+48,57+round(shopFrame0b))
}

draw_set_color(c_black) draw_set_alpha(0.8)
draw_rectangle(-4,-4,160,300,false)
draw_set_color(c_white) draw_set_alpha(1)
draw_set_halign(fa_center) draw_set_font(global.scorefont)
var _tt="SHOP"
switch(global.Language)
{
case 2: ///Portuguese
_tt="LOJA"
break;	
}
draw_text(80,4,_tt)
draw_set_halign(fa_left)
draw_text(80,12,"")

if shopSet=0 /////Shop Items
{
///Set 1
if 	global.UnlockCharacterData=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem,1*global.UnlockStageA[1],2+2,16) shader_reset() if global.UnlockAltPal=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem,2*global.UnlockStageA[2],2+4+32,16) shader_reset() if global.UnlockAltPal2=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem,3*global.UnlockStageA[3],2+6+64,16) shader_reset() if global.UnlockAltPal3=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem,4*global.UnlockStageA[4],2+8+64+32,16) shader_reset()
///Set 2
if global.UnlockSoundTest=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem,5*global.UnlockStageA[5],2+2,16+2+32) shader_reset()
if global.UnlockMovies=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem,6*global.UnlockStageA[6],2+4+32,16+2+32) shader_reset() if global.FishingUnlock=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem,7*global.UnlockStageA[7],2+6+64,16+2+32) shader_reset() if global.SlotMachineUnlock=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem,8*global.UnlockStageA[8],2+8+64+32,16+2+32) shader_reset() if global.MiniGameUnlock1=0 shader_set(shd_grayscale)
///Set 3
draw_sprite(spr_shopitem,9*global.UnlockStageA[9],2+2,16+4+64) shader_reset() if global.MiniGameUnlock2=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem,10*global.UnlockStageA[10],2+4+32,16+4+64) shader_reset() if global.MiniGameUnlock3=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem,11*global.UnlockStageA[11],2+6+64,16+4+64) shader_reset() if global.MiniGameUnlock4=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem,12*global.UnlockStageA[12],2+8+64+32,16+4+64) shader_reset() if global.MiniGameUnlock5=0 shader_set(shd_grayscale)
///Set 4
draw_sprite(spr_shopitem,13*global.UnlockStageA[13],2+2,16+6+96) shader_reset() if global.MiniGameUnlock6=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem,14*global.UnlockStageA[14],2+4+32,16+6+96) shader_reset() if global.SurvivalUnlock=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem,15*global.UnlockStageA[15],2+6+64,16+6+96) shader_reset() if global.BossBattleUnlock=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem,16*global.UnlockStageA[16],2+8+64+32,16+6+96) shader_reset()
}
if shopSet=1 /////Cheat Items
{
///Set 1
if global.CheatUnlock[1]=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem2,1,2+2,16) shader_reset() if global.CheatUnlock[2]=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem2,2,2+4+32,16) shader_reset() if global.CheatUnlock[3]=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem2,3,2+6+64,16) shader_reset() if global.CheatUnlock[4]=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem2,4,2+8+64+32,16) shader_reset() 
///Set 2
if global.CheatUnlock[5]=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem2,5,2+2,16+2+32) shader_reset()
if global.CheatUnlock[6]=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem2,6,2+4+32,16+2+32) shader_reset() 
if global.CheatUnlock[7]=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem2,7,2+6+64,16+2+32) shader_reset()
if global.CheatUnlock[8]=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem2,8,2+8+64+32,16+2+32) shader_reset() 
///Set 3
if global.CheatUnlock[9]=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem2,9,2+2,16+4+64) shader_reset()
if global.CheatUnlock[10]=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem2,10,2+4+32,16+4+64) shader_reset()
if global.CheatUnlock[11]=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem2,11,2+6+64,16+4+64) shader_reset()
if global.CheatUnlock[12]=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem2,12,2+8+64+32,16+4+64) shader_reset() 
///Set 4
if global.CheatUnlock[13]=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem2,13,2+2,16+6+96) shader_reset() 
if global.CheatUnlock[14]=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem2,14,2+4+32,16+6+96) shader_reset() 
if global.CheatUnlock[15]=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem2,15,2+6+64,16+6+96) shader_reset()
if global.CheatUnlock[16]=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem2,16,2+8+64+32,16+6+96) shader_reset()
}
if shopSet=2 /////Gallery Items
{
///Set 1
if global.Gallery[1]=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem3,1*global.GalleryUnlock[1],2+2,16) shader_reset() if global.Gallery[2]=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem3,2*global.GalleryUnlock[2],2+4+32,16) shader_reset() if global.Gallery[3]=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem3,3*global.GalleryUnlock[3],2+6+64,16) shader_reset() if global.Gallery[4]=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem3,4*global.GalleryUnlock[4],2+8+64+32,16) shader_reset() 
///Set 2
if global.Gallery[5]=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem3,5*global.GalleryUnlock[5],2+2,16+2+32) shader_reset()
if global.Gallery[6]=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem3,6*global.GalleryUnlock[6],2+4+32,16+2+32) shader_reset() 
if global.Gallery[7]=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem3,7*global.GalleryUnlock[7],2+6+64,16+2+32) shader_reset() 
if global.Gallery[8]=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem3,8*global.GalleryUnlock[8],2+8+64+32,16+2+32) shader_reset()
///Set 3
if global.Gallery[9]=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem3,9*global.GalleryUnlock[9],2+2,16+4+64) shader_reset()
if global.Gallery[10]=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem3,10*global.GalleryUnlock[10],2+4+32,16+4+64) shader_reset()
if global.Gallery[11]=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem3,11*global.GalleryUnlock[11],2+6+64,16+4+64) shader_reset()
if global.Gallery[12]=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem3,12*global.GalleryUnlock[12],2+8+64+32,16+4+64) shader_reset()
///Set 4
if global.Gallery[13]=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem3,13*global.GalleryUnlock[13],2+2,16+6+96) shader_reset()
if global.Gallery[14]=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem3,14*global.GalleryUnlock[14],2+4+32,16+6+96) shader_reset() 
if global.Gallery[15]=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem3,15*global.GalleryUnlock[15],2+6+64,16+6+96) shader_reset()
if global.Gallery[16]=0 shader_set(shd_grayscale)
draw_sprite(spr_shopitem3,16*global.GalleryUnlock[16],2+8+64+32,16+6+96) shader_reset()
}

draw_sprite(spr_shoppad,2,140,15)
draw_sprite(spr_shoppad,3,140,15+43+3)
draw_sprite(spr_shoppad,4,140,15+86+6)

///Cursor
if shopBuy=-1
{
if -key_left_pressed {if shopselX=0 shopselX=4 else shopselX-=1 PlaySound(snd_select)}
if key_right_pressed {if shopselX=4 shopselX=0 else shopselX+=1 PlaySound(snd_select)}
if shopselX!=4
{
if key_up_pressed 
{PlaySound(snd_select)
if shopSet=0 or shopSet=1 or shopSet=2
{
if shopselY=0 shopselY=3 else shopselY-=1}
}
if -key_down_pressed
{PlaySound(snd_select)
if shopSet=0 or shopSet=1 or shopSet=2
{
if shopselY=3 shopselY=0 else shopselY+=1
}
}
}
else
{
if key_up_pressed {if shopSet=0 shopSet=2 else shopSet-=1 PlaySound(snd_select)}
if -key_down_pressed {if shopSet=2 shopSet=0 else shopSet+=1 PlaySound(snd_select)}
}}

if shopselX!=4
{
if shopBuy=-1
draw_sprite(spr_shopitemcursor,0,2+2+(2*shopselX)+(32*shopselX),16+(2*shopselY)+(32*shopselY))
else
draw_sprite(spr_shopitemcursor,1,2+2+(2*shopselX)+(32*shopselX),16+(2*shopselY)+(32*shopselY))
}
if shopselX=4
{
shader_set(shd_white_sprite)
draw_sprite(spr_shoppad,1,140,15+46*shopSet)
shader_reset()
}

if shopSet!=0
draw_sprite_ext(spr_shoppad,2,140,15,1,1,0,c_black,0.4)
if shopSet!=1
draw_sprite_ext(spr_shoppad,3,140,15+46,1,1,0,c_black,0.4)
if shopSet!=2
draw_sprite_ext(spr_shoppad,4,140,15+92,1,1,0,c_black,0.4)


draw_set_color(c_white)
draw_rectangle(4,180-24,160-4,240-4,false)

draw_rectangle(320-10-96-1,240-16-1-1,320-10+1,240-16+8+1,false)

draw_set_color(c_black)
draw_rectangle(5,180+1-24,160-5,240-5,false)

draw_rectangle(320-10-96,240-16-1,320-10,240-16+8,false)

draw_set_halign(fa_center) draw_set_color(c_white)
draw_text(80,180+4-24,shopName)
var _tt="SOLD OUT!" var _st=0;
if shopCost="SOLD OUT!" _st=1
switch(global.Language)
{
case 2:
_tt="ESGOTADO!"
break;
}

if shopCost="LOCKED"
{_tt="LOCKED" _st=1
	
switch(global.Language)
{
case 2:
_tt="BLOQUEADO"
break;
}
}

if _st=1 or global.Gold<shopPrice draw_set_color(c_red)
if _st=0
draw_text(80,180+4-16,shopCost)
else
draw_text(80,180+4-16,_tt)
draw_set_color(c_white)
draw_set_halign(fa_left)

draw_text(8,180+4+10-8,shopDesc)
if shopBuy!=-1
{
if shopSet=1 {if global.CheatUnlock[shopCheatNO]=1
{global.Cheat[shopCheatNO]^=1 PlaySound(snd_select) shopBuy=-1; shopBuy=-1 shopDialogueTime=2 shopDialogueAlt=5 exit;}
}

switch(global.Language)
{
case 0: ///English
draw_text(8,180+4+10,"     NO    YES")
if shopBuy=0
draw_text(8,180+4+10,"       ✰     ")
else
draw_text(8,180+4+10,"              ✰")
break;

case 1: ///Espanol
draw_text(8,180+4+10,"     NO     SI")
if shopBuy=0
draw_text(8,180+4+10,"       ✰     ")
else
draw_text(8,180+4+10,"              ✰")
break;

case 2: ///Portuguese
draw_text(8,180+4+10,"    NÃO     SIM")
if shopBuy=0
draw_text(8,180+4+10,"       ✰     ")
else
draw_text(8,180+4+10,"              ✰")
break;
}


}

draw_command(4)

draw_set_halign(fa_right) 
draw_text(320-10,240-16,string(global.Gold)+string("$"))
draw_set_halign(fa_left)

}
}