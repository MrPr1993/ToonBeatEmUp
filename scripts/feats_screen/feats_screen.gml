// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function feats_screen(){
	//controller_setup()
draw_set_halign(fa_left)
draw_set_font(global.scorefont)
//draw_set_color(c_black) draw_set_alpha(0.75)
//draw_rectangle(0,0+24,320,48+24,false)
//draw_sprite(spr_featicon,0,4+24,4+32)
//(c_white) draw_text(4+24,4+24,"SHOWTIME")
//draw_text(4+28+32,4+32,"DEFEAT 100 ENEMIES")

////////Default feats

if betatest
{
if keyboard_check(ord("I"))	global.EnemyDeath=0

if keyboard_check_pressed(ord("P")) {
for (var i=0; i<100; i++) {global.Feats[i]=1} if keyboard_check(vk_control) feats_default()}
if keyboard_check_pressed(ord("O")) {if global.Feats[featsel]=2 global.Feats[featsel]=0 else global.Feats[featsel]^=1
	if keyboard_check(vk_shift) global.Feats[featsel]=2
	}

if keyboard_check(ord("U"))
{
if featsel=35 global.EnemyDeath=99
if featsel=36 global.EnemyDeath=499
if featsel=37 global.EnemyDeath=999
}

}
var _maxfeat=52;//100



if key_up_pressed {PlaySound(snd_select) if featsel=1 {featY=lerp(featY,-48*_maxfeat,1) featsel=_maxfeat} else featsel-=1}
if -key_down_pressed {PlaySound(snd_select) if featsel=_maxfeat {featY=lerp(featY,0,1) featsel=1} else featsel+=1}

var _At1="DIVA'S DEBUT"  var _Bt1="CLEAR STAGE 1" 
var _At2="MUST PET!"  var _Bt2="PET THE FIRST ANIMAL IN ANY STAGE."
var _At3="ENCORE!"  var _Bt3="USE YOUR FIRST CONTINUE."
var _At4="SHOWTIME FINISH"  var _Bt4="DEFEAT A BOSS WITH A SHOWTIME ATTACK."
var _At5="One long note"  var _Bt5="Beat any stage WITHOUT DYING."
var _At6="I'm Not Stage Frightened!"  var _Bt6="Beat any Stage without using Showtime once."
var _At7="Legendary Dancing Diva!"  var _Bt7="Beat Arcade Mode WITHOUT LOSING A SINGLE LIFE/ (Normal difficulty or higher only)"
var _At8="Don't Touch the Diva"  var _Bt8="Beat any stage WITHOUT TAKING DAMAGE."
var _At9="Sorry, I'm on a Diet..."  var _Bt9="Beat any stage without Picking up any Food."
var _At10="Almost Went Off Key"  var _Bt10="Beat any Stage with 10% of Your health left WITHOUT DYING."
var _At11="Performer Practice"  var _Bt11="Clear training mode with all 4 Divas." 
var _At12="Wolf Whisperer"  var _Bt12="Defeat Lady Wolf."
var _At13="Singing Fat Lady"  var _Bt13="Defeat Harpilda."
var _At14="We Can Do It"  var _Bt14="Defeat Captain Rosy."
var _At15="Double Header"  var _Bt15="Defeat Dolores." 
var _At16="Off With Her Head"  var _Bt16="Defeat Annamari."
var _At17="Divine Punishment"  var _Bt17="Defeat Hathor."
var _At18="Oni Jackpot"  var _Bt18="Defeat The Oni Sisters."
var _At19="Swamped Out"  var _Bt19="Defeat Kiandra."
var _At20="Daffy Amuck"  var _Bt20="Defeat Dixie."
var _At21="Beached Witch"  var _Bt21="Defeat Circe."
var _At22="Spaced Out"  var _Bt22="Defeat Kuinn."
var _At23="Watered Prince"  var _Bt23="Defeat Prince."
var _At24="Wished Beating"  var _Bt24="Defeat Haifa."
var _At25="All Shattered"  var _Bt25="Defeat Mirrosa."
var _At26="Royally Planted"  var _Bt26="Defeat Synthesa."
var _At27="Mean To Dragon"  var _Bt27="Defeat Fiona."
var _At28="Science Project"  var _Bt28="Defeat Dr.Fran."
var _At29="Dastardly Bite"  var _Bt29="Defeat Van Bad."
var _At30="That's All Folks!"  var _Bt30="Clear Arcade Mode for the First Time."
var _At31="Best In Show"  var _Bt31="Clear Arcade Mode on Very Hard."
var _At32="World Mapper"  var _Bt32="Clear all stages in the game."
var _At33="Animal Tamer"  var _Bt33="Pet all animals from all stages."
var _At34="Diva Detective."  var _Bt34="Find all Stage Secrets."
var _At35="Goon Bruiser."  var _Bt35="Defeat 100 enemies.\n"+string(clamp(global.EnemyDeath,0,100))+"/100"
var _At36="Goon Crusher."  var _Bt36="Defeat 500 enemies.\n"+string(clamp(global.EnemyDeath,0,500))+"/500"
var _At37="Goon Slayer."  var _Bt37="Defeat 1000 enemies.\n"+string(clamp(global.EnemyDeath,0,1000))+"/1000"
var _At38="Shopping List"  var _Bt38="Buy out all of the Extras." //DONE
var _At39="Big Cheater"  var _Bt39="Buy out all of the Cheats." //DONE
var _At40="Art Collector"  var _Bt40="Buy out all of the Gallery." //DONE
var _At41="Missed The Ride"  var _Bt41="Get the Bad Ending." //DONE
var _At42="All Written"  var _Bt42="Complete the Profile & Info" //DONE
var _At43="Filmography"  var _Bt43="Unlock All Cutscenes"  ///DONE
var _At44="Back From World Tour"  var _Bt44="Clear All Stage Mode./ (Normal difficulty or higher only)"
var _At45="Diva Survivor"  var _Bt45="Get a High Score of 10000 on Survival Mode." //DONE
var _At46="Diva Champion"  var _Bt46="Beat Boss Battles Mode." //DONE
var _At47="Game Queen"  var _Bt47="Win all of the six Minigames." //DONE
var _At48="Beauty Fishing"  var _Bt48="Get all fish in the Fishing minigame."
var _At49="It's Bad For You!"  var _Bt49="Smoke up to 4 times in a row as Viva."
var _At50="Zzz..."  var _Bt50="Remain in idle as Hina for one minute."
var _At51="Nice froggy..."  var _Bt51="Pet a toad as Bahati."
var _At52="Boingy, Boingy!" var _Bt52="Bounce on an enemy 8 times in a row as Sofia!"


switch(global.Language)
{
case 2:
_At1="DEBUT DAS DIVAS" _Bt1="CONCLUA O PALCO 1"
_At2="CAFUNÉ CONPULSIVO!" _Bt2="FAÇA CARINHO NO PRIMEIRO ANIMAL DE QUALQUER PALCO."
_At3="PEDE BIS!" _Bt3="USE SEU PRIMEIRO CONTINUE."
_At4="GRAND FINALE" _Bt4="FINALIZE UM CHEFÃO COM O ATAQUE ESPETÁCULO."
_At5="Uma longa jornada" _Bt5= "Conclua qualquer palco SEM MORRER."
_At6="Não Tenho Medo de Palco!" _Bt6= "Conclua qualquer Palco sem usar o Espetáculo."
_At7="Lendária Dancing Diva!" _Bt7= "Conclua o modo Arcade SEM PERDER NENHUMA VIDA/n (Dificuldade normal ou maior apenas)"
_At8="Não Toque na Diva" _Bt8= "Conclua qualquer Palco SEM LEVAR DANO."
_At9="Desculpe, estou de Dieta..." _Bt9= "Conclua qualquer Palco sem pegar nenhuma comida."
_At10="Quase Perdeu o Tom" _Bt10= "Conclua qualquer Palco com 10% de saúde restante SEM MORRER."
_At11="Ensaio artístico" _Bt11= "Conclua o modo de treinamento com todas as 4 Divas."
_At12="Encantadora de Lobos" _Bt12= "Derrote Lady Wolf."
_At13="Cantora Gordelícia" _Bt13= "Derrote Harpilda."
_At14="Nós Conseguimos" _Bt14= "Derrote a Capitã Rosy."
_At15="Cabeçada Dupla" _Bt15= "Derrote Dolores."
_At16="Cortem a Cabeça" _Bt16= "Derrote Annamari."
_At17="Punição Divina" _Bt17= "Derrote Hathor."
_At18="Jackpot Diabólico" _Bt18= "Derrote as Irmãs Oni."
_At19="Foi pro Brejo" _Bt19= "Derrote Kiandra."
_At20="Pata Pateta" _Bt20= "Derrote Dixie."
_At21="Bruxa Encalhada" _Bt21= "Derrote Circe."
_At22="Vendo Estrelas" _Bt22= "Derrote Kuinn."
_At23="Príncipe Afogado" _Bt23= "Derrote Prince."
_At24="Tão sonhada surra" _Bt24= "Derrote Haifa."
_At25="Estilhaçada" _Bt25= "Derrote Mirrosa."
_At26="Realmente Plantado" _Bt26= "Derrote Synthesa."
_At27="Maus tratos draconianos" _Bt27= "Derrote Fiona."
_At28="Projeto Científico" _Bt28="Derrote Dr.Fran."
_At29="Esforço Infame" _Bt29="Derrote Van Bad."
_At30="Isso é Tudo P-P-Pessoal!" _Bt30="Conclua o Modo Arcade pela primeira vez."
_At31="Melhor à Mostra" _Bt31="Conclua o Modo Arcade no Muito Difícil."
_At32="Mapa-Mundeiro" _Bt32="Conclua todos os Palcos no jogo."
_At33="Domadora de animais" _Bt33="Acaricie todos os animais de todos os Palcos."
_At34="Diva Detetive." _Bt34="Encontre todos os secredos de Palco."
_At35="Caçador de Marginais." _Bt35="Derrote 100 inimigos."
_At36="Exterminador de Marginaisr." _Bt36="Derrote 500 inimigos."
_At37="Aniquilador de Marginais." _Bt37="Derrote 1000 inimigos."
_At38="Lista de Compras" _Bt38="Compre todos os Extras."
_At39="Grande Trapaceiro" _Bt39="Compre todas as Trapaças."
_At40="Sommelier de arte" _Bt40="Compre toda a Galeria."
_At41="Perdeu a Mão" _Bt41="Faça o Final Ruim."
_At42="Tudo Documentado" _Bt42="Complete o Perfil & Info"
_At43="Filmografia" _Bt43="Desbloqueie todas as Cenas"
_At44="Retorno de Turnê Mundial" _Bt44="Conclua todo o Modo Palco./n (Dificuldade normal ou maior apenas)"
_At45="Divas Sobrevivem!" _Bt45="Faça uma Pontuação Potal de 10000 no Modo de Sobrevivência."
_At46="Diva Campeã" _Bt46="Vença o Modo Caça-Chefes."
_At47="Jogo de Rainha" _Bt47="Vença em todos os 6 Minigames."
_At48="Beauty Fishing" _Bt48="Pesque todos os peixes no minigame de pesca."
_At49="Vai te Fazer Mal" _Bt49="Fume 4 vezes seguidas com a Viva."
_At50="Zzz..." _Bt50="Fique parado por 1 minuto com a Hina."
_At51="Sapinho Camarada..." _Bt51="Acaricie um sapo com a Bahati."
_At52="Boing,Boing!" _Bt52="Quique em um inimigo 8 vezes seguidas com a Sofia!"
break;
}
draw_feat(1,spr_featicon,1,c_white,_At1,_Bt1) //DONE
draw_feat(2,spr_featicon,2,c_white,_At2,_Bt2) //DONE
draw_feat(3,spr_featicon,3,c_white,_At3,_Bt3) //DONE
draw_feat(4,spr_featicon,4,c_white,_At4,_Bt4) //DONE
draw_feat(5,spr_featicon,5,c_white,_At5,_Bt5) //DONE
draw_feat(6,spr_featicon,6,c_white,_At6,_Bt6) //DONE
draw_feat(7,spr_featicon,7,c_white,_At7,_Bt7) //DONE
draw_feat(8,spr_featicon,8,c_white,_At8,_Bt8) //DONE
draw_feat(9,spr_featicon,9,c_white,_At9,_Bt9) //DONE
draw_feat(10,spr_featicon,10,c_white,_At10,_Bt10)
draw_feat(11,spr_featicon,11,c_white,_At11,_Bt11)//DONE
draw_feat(12,spr_featicon,12,c_white,_At12,_Bt12) //DONE
draw_feat(13,spr_featicon,13,c_white,_At13,_Bt13) //DONE
draw_feat(14,spr_featicon,14,c_white,_At14,_Bt14) //DONE
draw_feat(15,spr_featicon,15,c_white,_At15,_Bt15)//DONE
draw_feat(16,spr_featicon,16,c_white,_At16,_Bt16) //DONE
draw_feat(17,spr_featicon,17,c_white,_At17,_Bt17) //DONE
draw_feat(18,spr_featicon,18,c_white,_At18,_Bt18) //DONE
draw_feat(19,spr_featicon,19,c_white,_At19,_Bt19) //DONE
draw_feat(20,spr_featicon,20,c_white,_At20,_Bt20) //DONE
draw_feat(21,spr_featicon,21,c_white,_At21,_Bt21) //DONE
draw_feat(22,spr_featicon,22,c_white,_At22,_Bt22) //DONE
draw_feat(23,spr_featicon,23,c_white,_At23,_Bt23) //DONE
draw_feat(24,spr_featicon,24,c_white,_At24,_Bt24) //DONE
draw_feat(25,spr_featicon,25,c_white,_At25,_Bt25) //DONE
draw_feat(26,spr_featicon,26,c_white,_At26,_Bt26) //DONE
draw_feat(27,spr_featicon,27,c_white,_At27,_Bt27) //DONE
draw_feat(28,spr_featicon,28,c_white,_At28,_Bt28) //DONE
draw_feat(29,spr_featicon,29,c_white,_At29,_Bt29) //DONE
draw_feat(30,spr_featicon,30,c_white,_At30,_Bt30) //DONE
draw_feat(31,spr_featicon,31,c_white,_At31,_Bt31) //DONE
draw_feat(32,spr_featicon,32,c_white,_At32,_Bt32) //DONE
draw_feat(33,spr_featicon,33,c_white,_At33,_Bt33)
draw_feat(34,spr_featicon,34,c_white,_At34,_Bt34)
draw_feat(35,spr_featicon,35,c_white,_At35,_Bt35)
draw_feat(36,spr_featicon,36,c_white,_At36,_Bt36)
draw_feat(37,spr_featicon,37,c_white,_At37,_Bt37)
draw_feat(38,spr_featicon,38,c_white,_At38,_Bt38)
draw_feat(39,spr_featicon,39,c_white,_At39,_Bt39)
draw_feat(40,spr_featicon,40,c_white,_At40,_Bt40)
draw_feat(41,spr_featicon,41,c_white,_At41,_Bt41)
draw_feat(42,spr_featicon,42,c_white,_At42,_Bt42)
draw_feat(43,spr_featicon,43,c_white,_At43,_Bt43)
draw_feat(44,spr_featicon,44,c_white,_At44,_Bt44)
draw_feat(45,spr_featicon,45,c_white,_At45,_Bt45)
draw_feat(46,spr_featicon,46,c_white,_At46,_Bt46)
draw_feat(47,spr_featicon,47,c_white,_At47,_Bt47)
draw_feat(48,spr_featicon,48,c_white,_At48,_Bt48)
draw_feat(49,spr_featicon,49,c_white,_At49,_Bt49) //Smoke 4 times as Viva 
draw_feat(50,spr_featicon,50,c_white,_At50,_Bt50) //
draw_feat(51,spr_featicon,51,c_white,_At51,_Bt51)
draw_feat(52,spr_featicon,52,c_white,_At52,_Bt52)
if x=9999999
{

draw_feat(53,spr_featicon,53,c_white,"BOO!","F2000 POUNDS")
draw_feat(54,spr_featicon,54,c_white,"BOO!","F2000 POUNDS")
draw_feat(55,spr_featicon,55,c_white,"BOO!","F2000 POUNDS")
draw_feat(56,spr_featicon,56,c_white,"BOO!","F2000 POUNDS")
draw_feat(57,spr_featicon,57,c_white,"BOO!","F2000 POUNDS")
draw_feat(58,spr_featicon,58,c_white,"BOO!","F2000 POUNDS")
draw_feat(59,spr_featicon,59,c_white,"BOO!","F2000 POUNDS")
draw_feat(60,spr_featicon,60,c_white,"BOO!","F2000 POUNDS")
draw_feat(61,spr_featicon,61,c_white,"BOO!","F2000 POUNDS")
draw_feat(62,spr_featicon,62,c_white,"BOO!","F2000 POUNDS")
draw_feat(63,spr_featicon,63,c_white,"BOO!","F2000 POUNDS")
draw_feat(64,spr_featicon,64,c_white,"BOO!","F2000 POUNDS")
draw_feat(65,spr_featicon,65,c_white,"BOO!","F2000 POUNDS")
draw_feat(66,spr_featicon,66,c_white,"BOO!","F2000 POUNDS")
draw_feat(67,spr_featicon,67,c_white,"FAT","GAIN 1000 POUNDS")
draw_feat(68,spr_featicon,68,c_white,"RRR","GAIN 2000 POUNDS")
draw_feat(69,spr_featicon,69,c_white,"123","MAX")
draw_feat(70,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(71,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(72,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(73,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(74,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(75,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(76,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(77,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(78,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(79,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(80,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(81,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(82,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(83,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(84,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(85,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(86,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(87,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(88,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(89,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(90,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(91,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(92,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(93,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(94,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(95,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(96,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(97,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(98,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(99,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(100,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
}

if featsel<1+4 featY=lerp(featY,0,0.5)
else if featsel<1+8 featY=lerp(featY,-48*4,0.5)
else if featsel<1+12 featY=lerp(featY,-48*8,0.5)
else if featsel<1+16 featY=lerp(featY,-48*12,0.5)
else if featsel<1+20 featY=lerp(featY,-48*16,0.5)
else if featsel<1+24 featY=lerp(featY,-48*20,0.5)
else if featsel<1+28 featY=lerp(featY,-48*24,0.5)
else if featsel<1+32 featY=lerp(featY,-48*28,0.5)
else if featsel<1+36 featY=lerp(featY,-48*32,0.5)
else if featsel<1+40 featY=lerp(featY,-48*36,0.5)
else if featsel<1+44 featY=lerp(featY,-48*40,0.5)
else if featsel<1+48 featY=lerp(featY,-48*44,0.5)
else if featsel<1+52 featY=lerp(featY,-48*48,0.5)
else if featsel<1+56 featY=lerp(featY,-48*52,0.5)
else if featsel<1+60 featY=lerp(featY,-48*56,0.5)
else if featsel<1+64 featY=lerp(featY,-48*60,0.5)
else if featsel<1+68 featY=lerp(featY,-48*64,0.5)
else if featsel<1+72 featY=lerp(featY,-48*68,0.5)
else if featsel<1+76 featY=lerp(featY,-48*72,0.5)
else if featsel<1+80 featY=lerp(featY,-48*76,0.5)
else if featsel<1+84 featY=lerp(featY,-48*80,0.5)
else if featsel<1+88 featY=lerp(featY,-48*84,0.5)
else if featsel<1+92 featY=lerp(featY,-48*88,0.5)
else if featsel<1+96 featY=lerp(featY,-48*92,0.5)
else if featsel<1+100 featY=lerp(featY,-48*96,0.5)

draw_set_color(c_black) draw_set_alpha(1)
draw_rectangle(-32,-32,340,24,false)

draw_rectangle(-32,240-24,340,240,false)

draw_set_color(c_white) draw_set_halign(fa_center)
draw_text(160,8,"ACHIEVEMENTS")
//draw_text(160,240-16,"1/100 COMPLETE")

}
