// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function charinfo_bosses(){
var _ageT="AGE";
var _likesT="LIKES";
var _dislikesT="DISLIKES";
var _hobbyT="HOBBY";
var _heightT="H";
var _weightT="W";
var _abilitiesT="ABILITIES"

desc=""
descleft=""
descright=""
desc=""

switch(global.Language)
{
case 1: ///Espanol
_ageT="EDAD";
_likesT="GUSTOS";
_dislikesT="DISGUSTOS";
_hobbyT="PASATIEMPOS";
_heightT="A";
_weightT="P";
_abilitiesT="ABILIDADES"
break;
case 2: ///Portuguese
_ageT="IDADE";
_likesT="GOSTA";
_dislikesT="DESGOSTA";
_hobbyT="PASSATIEMPOS";
_heightT="A";
_weightT="P";
_abilitiesT="HABILIDADES"
break;
}	

dataabilitiesB=_abilitiesT;

hp=2

switch (dataSelect)
{
  case 1:
  hasVariants=1 enemyID=150 hp=1 
 
descT[0]="A shady woman who works with the thieves to steal the divas’ treasures. And she seems to be hiding something else..."	   
descleftT[0]=string(_ageT)+":29\nNAT.:BRITAIN\n"+string(_heightT)+":5'10"+" "+string(_weightT)+":120LBS"
descrightT[0]=string(_likesT)+":LEATHER,PIGS\n"+string(_dislikesT)+":SILVER\n"+string(_hobbyT)+":STARGAZING"
descabsT[0]="SCHEMING,SLAPPING"

descT[1]= "Una mujer sombría que trabaja con los ladrones para robar los tesoros de las divas. Y parece que esconde algo más..."   
descleftT[1]=string(_ageT)+":29\nNAT.:G.BRETAÑA\n"+string(_heightT)+":5'10"+" "+string(_weightT)+":120LBS"
descrightT[1]=string(_likesT)+":CUERO,CERDOS\n"+string(_dislikesT)+":PLATA\n"+string(_hobbyT)+":ASTRÓNOMÍA"
descabsT[1]="PLANEANDO,BOFETANDO"

descT[2]="Uma suspeita mulher que trabalha com os ladrões para roubar os tesouros das divas. E parece estar escondendo algo mais..."
descleftT[2]=string(_ageT)+":29\nNAT.:G.BRETANHA\n"+string(_heightT)+":5'10"+" "+string(_weightT)+":120LBS"
descrightT[2]=string(_likesT)+":COURO,PORCOS\n"+string(_dislikesT)+":PRATA\n"+string(_hobbyT)+":ASTRONOMIA"
descabsT[2]="PLANEJANDO,DANDO TAPA"	
 
  if dataPal=1{idlestyle=1
	  


 charinfo_set(11,spr_hwolf_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,9,"LADY WOLF",
descT[global.Language] )



}
 if dataPal=2
	  {enemyID=151 idlestyle=0
		  hp=2
		  
descT[0]=   "Her true form! When this aggressive wolf comes out, beware her fearsome fangs or she’ll rip you apart!" 
descabsT[0]="SCHEMING,SLAPPING,\nMAULING,HOWLING"
descleftT[0]=string(_ageT)+":29\nNAT.:BRITAIN\n"+string(_heightT)+":7'4"+" "+string(_weightT)+":180LBS"


descT[1]=  "¡Su verdadera forma! Cuando sale esta agresiva loba, cuidado con sus temibles colmillos o te hará pedazos."

descleftT[1]=string(_ageT)+":29\nNAT.:G.BRETAÑA\n"+string(_heightT)+":7'4"+" "+string(_weightT)+":180LBS"

descabsT[1]="PLANEANDO,BOFETANDO,\nRASGUÑOS AULLIDOS"

descT[2]="Sua verdadeira forma! Quando essa loba agressiva sair da jaula, cuidado com suas presas temíveis ou ela vai te despedaçar!"
descabsT[2]="PLANEJANDO,DANDO TAPA,\nDESTRUINDO,UIVANDO"
descleftT[2]=string(_ageT)+":29\nNAT.:G.BRETANHA\n"+string(_heightT)+":7'4"+" "+string(_weightT)+":180LBS"


desc=descT[global.Language] 
		  
		  charinfo_set(11,spr_wolfita_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,5,"LADY WOLF",
descT[global.Language] )
 


  }

break;
  case 2:enemyID=152
idlestyle=3

descT[0]=    "She’s big. She’s round. She has a song in her heart. A fight with her won't be over until the fat lady sings."
descleftT[0]=string(_ageT)+":56\nNAT.:GREECE\n"+string(_heightT)+":7'4"+" "+string(_weightT)+":1200LBS"
descrightT[0]=string(_likesT)+":GLITTER,THEATERS\n"+string(_dislikesT)+":NEW MUSIC\n"+string(_hobbyT)+":OPERA"
descabsT[0]="FLYING,SING,CRUSHING,\nAERODYNAMICS"

descT[1]= "Es grande. Es redonda. Tiene una canción en su corazón. Una pelea con ella no terminará hasta que la gorda cante."
descleftT[1]=string(_ageT)+":56\nNAT.:GRECIA\n"+string(_heightT)+":7'4"+" "+string(_weightT)+":1200LBS"
descrightT[1]=string(_likesT)+":BRILLOS,TEATROS\n"+string(_dislikesT)+":NUEVA MÚSICA\n"+string(_hobbyT)+":ÓPERA"
descabsT[1]="VOLANDO,CANTAR,\nAPLASTANDO,AERODINÁMICA"

descT[2]="Ela é grande. Ela é Roliça. Ela tem um coração movido à musica. Uma luta com ela não terminará antes de seu gordelicioso cântico."
descleftT[2]=string(_ageT)+":56\nNAT.:GRÉCIA\n"+string(_heightT)+":7'4"+" "+string(_weightT)+":1200LBS"
descrightT[2]=string(_likesT)+":GLITTER,TEATROS\n"+string(_dislikesT)+":NOVA MÚSICA\n"+string(_hobbyT)+":ÓPERA"
descabsT[2]="VOANDO,CANTANDO,\nESMAGANDO,AERODINÂMICA"

 charinfo_set(12,spr_harpy_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,34,"HARPILDA",
descT[global.Language] )
 
 break;

case 3:enemyID=153
idlestyle=1

descT[0]="A colossal woman who ferries passengers on her beloved ship. Stowaways will be in for a shock in more ways than one."
descleftT[0]=string(_ageT)+":35\nNAT.:GERMANY\n"+string(_heightT)+":8'2"+" "+string(_weightT)+":1000LBS"
descrightT[0]=string(_likesT)+":TRAVELING,SPINACH\n"+string(_dislikesT)+":SABOTEURS\n"+string(_hobbyT)+":CUSTOMIZING BOATS"
descabsT[0]="BRAWLING,WRESTLING,\nSAILING,LIGHTNING"

descT[1]= "Una mujer colosal que transporta pasajeros en su amado barco. Los polizones se llevarán una sorpresa… de más de una manera."
descleftT[1]=string(_ageT)+":35\nNAT.:ALEMANIA\n"+string(_heightT)+":8'2"+" "+string(_weightT)+":1000LBS"
descrightT[1]=string(_likesT)+":VIAJANDO,ESPINACA\n"+string(_dislikesT)+":SABOTEADORES\n"+string(_hobbyT)+":PERSONALIZANDO BARCOS"
descabsT[1]="PELEA,LUCHA,\nNAVEGACIÓN,RELÁMPAGO"

descT[2]="Um mulherão que transporta passageiros em seu amado navio. Clandestinos terão mais do que uma surpresa."
descleftT[2]=string(_ageT)+":35\nNAT.:ALEMANHA\n"+string(_heightT)+":8'2"+" "+string(_weightT)+":1000LBS"
descrightT[2]=string(_likesT)+":VIAJANDO,ESPINAFRE\n"+string(_dislikesT)+":SABOTADORES\n"+string(_hobbyT)+":PERSONALIZANDO BARCOS"
descabsT[2]="BRIGANDO,LUTANDO,\nNAVEGANDO,RAIO"


 charinfo_set(12,spr_franki_stand,1,animsetup_enemy,draw_enemy,spr_boxerpal,0,spr_enemyface,10,"CAPTAIN ROSY",
descT[global.Language] )
 
 break;
 
 case 4:enemyID=154
 
 descT[0]= "This cowgirl in charge of the Loco Dos hunts down stowaways. Two heads, and guns, are better than one."
descleftT[0]=string(_ageT)+":35\nNAT.:USA\n"+string(_heightT)+":7'0"+" "+string(_weightT)+":160LBS"
descrightT[0]=string(_likesT)+":MILK,CACTI\n"+string(_dislikesT)+":VARMINTS\n"+string(_hobbyT)+":HORSE RIDING"
descabsT[0]="SHOOTING,LASSO TRICKS,\nBREWING,CARD GAMES"

 descT[1]=  "Esta vaquera a cargo del Loco Dos caza polizones. Dos cabezas —y dos armas— son mejores que una."
descleftT[1]=string(_ageT)+":35\nNAT.:USA\n"+string(_heightT)+":7'0"+" "+string(_weightT)+":160LBS"
descrightT[1]=string(_likesT)+":LECHE,CACTOS\n"+string(_dislikesT)+":MALOS\n"+string(_hobbyT)+":EQUITACIÓN"
descabsT[1]="DISPAROS,TRUCOS CON LAZO,\nCERVEZAS, JUEGOS DE CARTAS"

descT[2]="Esta vaqueira está em cargo de proteger o Loco Dos de clandestinos. Duas cabeças, e armas, são melhores que uma."
descleftT[2]=string(_ageT)+":35\nNAT.:USA\n"+string(_heightT)+":7'0"+" "+string(_weightT)+":160LBS"
descrightT[2]=string(_likesT)+":LEITE,CACTOS\n"+string(_dislikesT)+":RUIMS\n"+string(_hobbyT)+":EQUITACÃO"
descabsT[2]="TIRO,TRUQUES DE LAÇO,\nCERVEJAS,JOGOS DE CARTAS"
 
charinfo_set(12,spr_twoheads_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,35,"DOLORES",
descT[global.Language] )
 
 break;

 case 5:enemyID=155
 
  descT[0]=  "A head collector in life. She became a ghost after taking her own head. She may enjoy beheadings a bit too much..."
descleftT[0]=string(_ageT)+":DEAD\nNAT.:FRANCE\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
descrightT[0]=string(_likesT)+":HEADS,AXES\n"+string(_dislikesT)+":CAKES\n"+string(_hobbyT)+":HEADS"
descabsT[0]="GHOST,CUTTING,SCARING\nCUTTING SCARING"

  descT[1]=  "Recolectora de cabezas en vida. Se volvió un fantasma después de arrancarse la suya propia. Quizás disfruta demasiado las decapitaciones…"
descleftT[1]=string(_ageT)+":MUERTA\nNAT.:FRANCIA\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
descrightT[1]=string(_likesT)+":CABEZAS,HACHAS\n"+string(_dislikesT)+":PASTELLES\n"+string(_hobbyT)+":CAVEZAS"
descabsT[1]="FANTASMA,CORTANDO,ASSUSTANDO\nCORTANDO,ASSUSTANDO"

descT[2]="Colecionadora de cabeças em vida. Se tornou um fantasma depois de cortar sua própria cabeça. Talvez ela goste de decapitações um pouco demais..."
descleftT[2]=string(_ageT)+":MORTA\nNAT.:FRANÇA\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
descrightT[2]=string(_likesT)+":CABEÇAS,MACHADOS\n"+string(_dislikesT)+":BOLOS\n"+string(_hobbyT)+":CARAS"
descabsT[2]="FANTASMA,CORTANDO,ASSUSTANDO\nCORTANDO,ASSUSTANDO"
 
 charinfo_set(12,spr_ghost_stand,1,animsetup_enemy,ghost_effect,spr_enemypal,0,spr_enemyface,17,"ANNA MARI",
descT[global.Language] )

 
 break;
   
  case 6:enemyID=156
  idlestyle=1
  
    descT[0]=  "A goddess who enjoys a good party. But those who disrespect her will be met with some good old fashioned divine punishment."
descleftT[0]=string(_ageT)+":ANCIENT\nNAT.:EGYPT\n"+string(_heightT)+":7'4"+" "+string(_weightT)+":170LBS"
descrightT[0]=string(_likesT)+":COWS,MUSIC\n"+string(_dislikesT)+":INFIDELS\n"+string(_hobbyT)+":PARTYING"
descabsT[0]="DIVINE,CURSES,CONNECTING\nORGANIZING,LOVEMAKING"

    descT[1]=  "Una diosa que disfruta una buena fiesta. Pero quienes la irrespeten recibirán un buen castigo divino a la antigua."
descleftT[1]=string(_ageT)+":ANTIGUA\nNAT.:EGIPTO\n"+string(_heightT)+":7'4"+" "+string(_weightT)+":170LBS"
descrightT[1]=string(_likesT)+":VACAS,MÚSICA\n"+string(_dislikesT)+":INFIELES\n"+string(_hobbyT)+":FESTEJANDO"
descabsT[1]="DIVINO,MALDICIONES,CONECTANDO\nORGANIZANDO,HACIENDO EL AMOR"

descT[2]="Uma deusa que gosta de uma boa festa. Mas aqueles que a desrespeitarem receberão um castigo divino bem caprichado."
descleftT[2]=string(_ageT)+":ANTIGA\nNAT.:EGITO\n"+string(_heightT)+":7'4"+" "+string(_weightT)+":170LBS"
descrightT[2]=string(_likesT)+":VACAS,MÚSICA\n"+string(_dislikesT)+":INFIÉIS\n"+string(_hobbyT)+":FESTEJANDO"
descabsT[2]="DIVINO,MALDIÇÕES,CONECTANDO\nORGANIZANDO,FAZENDO AMOR"
  
 charinfo_set(12,spr_pharaoh_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,11,"HATHOR",
descT[global.Language] )
 
 break;
   case 7:enemyID=157
     hasVariants=1
  if dataPal=1
 charinfo_set(12,spr_oni_stand,2,animsetup_enemy,draw_swing,spr_ninjapal,0,spr_enemyface,31,"FUKUKIJO",
descT[global.Language] )

 
 descT[0]=  "The eldest of the Oni Sisters. With fire in her eyes, she scorches opponents and throws magic cards."
descleftT[0]=string(_ageT)+":37\nNAT.:JAPAN\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
descrightT[0]=string(_likesT)+":SAKE,MONEY\n"+string(_dislikesT)+":CHEATS\n"+string(_hobbyT)+":CALLIGRAPHY"
descabsT[0]="GAMBLING,PERFORMING,\nRIDDLES,SMASHING,FIRE"

 descT[1]=  "La mayor de las Hermanas Oni. Con fuego en los ojos, calcina a sus oponentes y lanza cartas mágicas."
descleftT[1]=string(_ageT)+":37\nNAT.:JAPÓN\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
descrightT[1]=string(_likesT)+":SAKE,DINERO\n"+string(_dislikesT)+":TRAMPOSOS\n"+string(_hobbyT)+":CALIGRAFÍA"
descabsT[1]="JUEGOS DE AZAR,ACTUAR,\nACERTIJOS,ROMPER,FUEGO"

descT[2]="A mais velha das irmãs Oni. Com fogo nos olhos, ela queima os oponentes e lança cartas mágicas."
descleftT[2]=string(_ageT)+":37\nNAT.:JAPÃO\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
descrightT[2]=string(_likesT)+":SAKE,DINHEIRO\n"+string(_dislikesT)+":TRAPACEIRAS\n"+string(_hobbyT)+":CALIGRAFIA"
descabsT[2]="JOGAR,APRESENTAR,ENIGMAS,\nQUEBRAR,FOGO"

desc=descT[global.Language]


 
   if dataPal=2
 {
	 charinfo_set(12,spr_oni_stand,2,animsetup_enemy,draw_swing,spr_ninjapal,7,spr_enemyface,31,"SHOKIJO",
descT[global.Language] )
 
enemyID=158
 
 descT[0]= "The younger of the Oni Sisters. With a chilling aura, she freezes her foes and rolls magic dice."
descleftT[0]=string(_ageT)+":36\nNAT.:JAPAN\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
descrightT[0]=string(_likesT)+":SAKE,MONEY\n"+string(_dislikesT)+":DISRESPECT\n"+string(_hobbyT)+":POETRY"
descabsT[0]="GAMBLING,PERFORMING,\nRIDDLES,SMASHING,ICE"

 descT[1]=  "La menor de las Hermanas Oni. Con un aura helada, congela a sus enemigos y lanza dados mágicos."
descleftT[1]=string(_ageT)+":36\nNAT.:JAPÓN\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
descrightT[1]=string(_likesT)+":SAKE,DINERO\n"+string(_dislikesT)+":TRAMPOSOS\n"+string(_hobbyT)+":POESÍA"
descabsT[1]="JUEGOS DE AZAR,ACTUAR,\nACERTIJOS,ROMPER,HIELO"

descT[2]="A mais nova das irmãs Oni. Com uma aura de arrepiar, ela congela seus inimigos e lança dados mágicos."
descleftT[2]=string(_ageT)+":6\nNAT.:JAPÃO\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
descrightT[2]=string(_likesT)+":SAKE,DINHEIRO\n"+string(_dislikesT)+":TRAPACEIRAS\n"+string(_hobbyT)+":POESIA"
descabsT[2]="JOGAR,APRESENTAR,ENIGMAS,\nQUEBRAR,GELO"
 
 
 }
 
 weapon_add("ONI CLUB")
 weaponanim(weaponspr,weaponIndex,34,-95,180*image_xscale,weaponcolor)
 
 break;
   case 8:
  idlestyle=1 enemyID=159
  
descT[0]=   "She dwells in the swamp alone with the undead as she stirs her cauldron. She’s a druid, not a witch. Don’t mix it up…"
descrightT[0]=string(_likesT)+":ISOLATION\n"+string(_dislikesT)+":TRESSPASSERS\n"+string(_hobbyT)+":SWIMMING"
descleftT[0]=string(_ageT)+":ANCIENT?\nNAT.:CELTIC\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":120LBS"
descabsT[0]="MAGIC,BREWING,\nEXPERIMENTING,\nCOOKING,POSSESSING"

descT[1]=  "Vive sola en el pantano junto a los muertos mientras remueve su caldero. Es una druida, no una bruja. No lo confundas…"
descrightT[1]=string(_likesT)+":AISLAMIENTO\n"+string(_dislikesT)+":INTRUSOS\n"+string(_hobbyT)+":NATACIÓN"
descleftT[1]=string(_ageT)+":ANTIGUA?\nNAT.:CÉLTICA\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":120LBS"
descabsT[1]="MAGIA,HECHICERÍA,\nEXPERIMENTACIÓN,\nCOCINA,POSESIÓN"

descT[2]="Ela mora sozinha no pântano com os mortos-vivos e seu caldeirão. Ela é uma druida, não uma bruxa. Não confunda..."
descrightT[2]=string(_likesT)+":ISOLAÇÃO\n"+string(_dislikesT)+":INVASORES\n"+string(_hobbyT)+":NATAÇÃO"
descleftT[2]=string(_ageT)+":ANTIGA?\nNAT.:CELTA\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":120LBS"
descabsT[2]="MAGIA,POÇÃO,\nEXPERIMENTANDO,\nCOZINHANDO, POSSUINDO"
  
 charinfo_set(12,spr_witch_stand,1,animsetup_enemy,draw_enemy,pal_witch,1,spr_enemyface,32,"KIANDRA",
descT[global.Language] )
 break;
   case 9:
   enemyID=160
   
descT[0]= "The carnival's crazy ringmaster. She’s a cartoon duck toy person... thing. She’s quite the quack."
descleftT[0]=string(_ageT)+":31\nNAT.:FRANCE\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
descrightT[0]=string(_likesT)+":FUN,AUDIENCE\n"+string(_dislikesT)+":BOREDOM\n"+string(_hobbyT)+":PRANKING"
descabsT[0]="LOONY,QUACKING,\nJUGGLING,BAKING"

descT[1]= "La loca maestra de pista del carnaval. Es una especie de… persona-juguete-pato de caricatura. Está bien loca."
descleftT[1]=string(_ageT)+":31\nNAT.:FRANCIA\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
descrightT[1]=string(_likesT)+":DIVERSIÓN,PÚBLICO\n"+string(_dislikesT)+":ABURRIMIENTO\n"+string(_hobbyT)+":BROMEAR"
descabsT[1]="LOCURAS,CUA CUA,\nMALABARISMO,HORNEANDO"

descT[2]="A louca mestra de cerimônias do festival. Ela é um brinquedo de um pato de desenho só que... gente. É uma pata pateta."
descleftT[2]=string(_ageT)+":31\nNAT.:FRANÇA\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
descrightT[2]=string(_likesT)+":DIVERSÃO,PÚBLICO\n"+string(_dislikesT)+":TÉDIO\n"+string(_hobbyT)+":PEGADINHAS"
descabsT[2]="LOUCOS,,GRITANDO,\mMALABARISMO,COZINHANDO"

   

 charinfo_set(12,spr_duck_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,39,"DIXIE",
descT[global.Language] )

 
 break;
    case 10: enemyID=161 idlestyle=1
	
	
descT[0]=  "The sea witch’s protective pet octopus who mercilessly beats down any interlopers with his tentacles."
descleftT[0]=string(_ageT)+":26\nNAT.:GREECE\n"+string(_heightT)+":8'4"+" "+string(_weightT)+":900LBS"
descrightT[0]=string(_likesT)+":CIRCE,MOLLUSKS\n"+string(_dislikesT)+":DOLPHINS\n"+string(_hobbyT)+":SANDCASTLES"
descabsT[0]="TENTACLES,DANCING,\nCRAFTING,SAILING"
	
descT[1]=  "La mascota pulpo protectora de la bruja marina, que golpea sin piedad a cualquier intruso con sus tentáculos."
descleftT[1]=string(_ageT)+":26\nNAT.:GRECIA\n"+string(_heightT)+":8'4"+" "+string(_weightT)+":900LBS"
descrightT[1]=string(_likesT)+":CIRCE,MOLLUSCOS\n"+string(_dislikesT)+":DELFINES\n"+string(_hobbyT)+":CASTILLOS DE ARENA"
descabsT[1]="TENTÁCULOS,BAILANDO,\nARTESANÍA,NAVEGACIÓN"
	       
descT[2]="O polvo protetor da bruxa do mar, que derrota impiedosamente qualquer intruso com seus tentáculos."
descleftT[2]=string(_ageT)+":26\nNAT.:GRÉCIA\n"+string(_heightT)+":8'4"+" "+string(_weightT)+":900LBS"
descrightT[2]=string(_likesT)+":CIRCE,MOLLUSCOS\n"+string(_dislikesT)+":GOLFINHOS\n"+string(_hobbyT)+":CASTELOS DE AREIA"
descabsT[2]="TENTÁCULOS,DANÇANDO,\nARTESANATO,NAVEGAÇÃO"
	
 charinfo_set(12,spr_octopus_stand,1,animsetup_enemy,draw_swing_2,spr_enemypal,0,spr_enemyface,40,"LARRY",
descT[global.Language] )
  
var watchtarget=0;
watchtarget=point_direction(x,y,x,y+16) weaponBack=1
weaponspr=spr_octopus_eye weaponIndex=0 weaponX=0 weaponY=0
weaponspr2=spr_octopus_eye weaponIndex2=1 weaponX2=0 weaponY2=8

break;
  
  case 11: enemyID=162 idlestyle=0
   	      	   
descT[0]=  "A cave dwelling sea witch who enjoys company so long as they don't cause trouble. Otherwise, they get a spankin'."
descleftT[0]=string(_ageT)+":ANCIENT\nNAT.:GREECE\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":360LBS"
descrightT[0]=string(_likesT)+":PETS,TRANSFORMING\n"+string(_dislikesT)+":BAD MEN\n"+string(_hobbyT)+":SUNBATHING"
descabsT[0]="MAGIC,ENCHANT,BREWING,\nSUMMONING,CURSING" 
		
descT[1]=   "Una bruja marina de caverna que disfruta la compañía mientras no causen problemas. De lo contrario… se lleva una buena paliza."
descleftT[1]=string(_ageT)+":ANTIGUA\nNAT.:GRECIA\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":360LBS"
descrightT[1]=string(_likesT)+":MASCOTAS,TRANSFORMANDO\n"+string(_dislikesT)+":HOMBRES MALOS\n"+string(_hobbyT)+":TOMAR EL SOL"
descabsT[1]="MAGIA,ENCANTAR,ELABORACIÓN,\nINVOCACIÓN,MALDICIONES" 

descT[2]="Uma bruxa do mar que habita uma caverna e gosta de companhia, desde que não causem problemas. Caso contrário, eles levam palmadas."
descleftT[2]=string(_ageT)+":ISOLAÇÃO\nNAT.:GRÉCIA\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":360LBS"
descrightT[2]=string(_likesT)+":MASCOTES,TRANSFORMANDO\n"+string(_dislikesT)+":HOMENS RUINS\n"+string(_hobbyT)+":TOMAR SOL"
descabsT[2]="MAGIA,ENCANTAMENTO,POÇÃO,\nINVOCAR,MALDIÇÕES" 
  
 charinfo_set(12,spr_seaweed_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,41,"CIRCE",
descT[global.Language] ) 

 break;
   case 12: enemyID=163
   
descT[0]= "She is the captain of a space pirate crew! And they’ll crush anyone in their way with their out of this world technology!"
descleftT[0]=string(_ageT)+":48\nNAT.:ALIEN\n"+string(_heightT)+":9'0"+" "+string(_weightT)+":210LBS"
descrightT[0]=string(_likesT)+":GOLD,SPECIMENS\n"+string(_dislikesT)+":JUSTICE\n"+string(_hobbyT)+":COLLECTING"
descabsT[0]="CYBERNETICS,BRAINPOWER,\nFENCING,CANNONING"  

descT[1]= "Es la capitana de una tripulación de piratas espaciales. Y aplastarán a quien se les cruce con su tecnología fuera de este mundo."
descleftT[1]=string(_ageT)+":48\nNAT.:EXTRATERRESTRE\n"+string(_heightT)+":9'0"+" "+string(_weightT)+":210LBS"
descrightT[1]=string(_likesT)+":ORO,MUESTRAS\n"+string(_dislikesT)+":JUSTICIA\n"+string(_hobbyT)+":COLECCIONANDO"
descabsT[1]="CIBERNÉTICA,PODER MENTAL,\nESGRIMA,CAÑONEO"  

descT[2]="Ela é capitã de uma tripulação de piratas espaciais! E esmagam qualquer um que estiver em seu caminho usando tecnologia de outro mundo."
descleftT[2]=string(_ageT)+":48\nNAT.:ALIENÍGENA\n"+string(_heightT)+":9'0"+" "+string(_weightT)+":210LBS"
descrightT[2]=string(_likesT)+":OURO,AMOSTRAS\n"+string(_dislikesT)+":JUSTIÇA\n"+string(_hobbyT)+":COLETANDO"
descabsT[2]="CIBERNÉTICA,PODER CEREBRAL,\nESGRIMA,CANHONAMENTO"  

 charinfo_set(12,spr_martianb_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,54,"KWINN",
descT[global.Language] ) 

 
 break;
   case 13: enemyID=164
   
   
descT[0]= "One of the thieves' submarines that dive into the depths, plundering the sea’s treasures."
descleftT[0]=string(_heightT)+":12'0"+" "+string(_weightT)+":6000LBS"
descrightT[0]=""
descabsT[0]="MISSILES,MINES,DIVING"

descT[1]=  "Uno de los submarinos de los ladrones que se sumergen en las profundidades para saquear los tesoros del mar."
descleftT[1]=string(_heightT)+":12'0"+" "+string(_weightT)+":6000LBS"
descrightT[1]=""
descabsT[1]="MISILES, MINAS, BUCEO"

descT[2]="Um dos submarinos dos ladrões que mergulha nas profundezas, saqueando os tesouros do mar."
descleftT[2]=string(_heightT)+":12'0"+" "+string(_weightT)+":6000LBS"
descrightT[2]=""
descabsT[2]="MÍSSEIS, MINAS, MERGULHO"
        	       
   
 charinfo_set(12,spr_submarine,1,animsetup_enemy,draw_swing_2,spr_enemypal,0,spr_enemyface,57,"SEA BANDIT",
descT[global.Language] )
 
 image_index=0;
 weaponBack=1 weaponangle=0
  weaponBack2=1
weaponspr=spr_submarine_scope weaponIndex=2
weaponspr2=spr_submarine_rotor
weaponIndex=0
 weaponIndex2+=0.1
weaponX=0 weaponY=0 weaponX2=0 weaponY2=0
  
 break;
 
   case 14: enemyID=165
idlestyle=1 hasVariants=1

descT[0]=  "The incredibly flamboyant ruler of the seven seas who seeks great challenges with style and lots of flexing. Oh, and he's Viva's cousin."
descleftT[0]=string(_ageT)+":38\nNAT.:GREECE\n"+string(_heightT)+":7'4"+" "+string(_weightT)+":180LBS"
descrightT[0]=string(_likesT)+":STRENGTH,WORKOUTS\n"+string(_dislikesT)+":FAKERS\n"+string(_hobbyT)+":SCULPTING"
descabsT[0]="WATER,BRAWLING\nMAGIC,ATHLETE"

descT[1]=  "El increíblemente extravagante gobernante de los siete mares, que busca grandes desafíos con estilo y muchos músculos. Ah, y es primo de Viva."
descleftT[1]=string(_ageT)+":38\nNAT.:GRECIA\n"+string(_heightT)+":7'4"+" "+string(_weightT)+":180LBS"
descrightT[1]=string(_likesT)+":FUERZA,ENTRENAMIENTOS\n"+string(_dislikesT)+":FALSOS\n"+string(_hobbyT)+":ESCULTURA"
descabsT[1]="AGUA,PELEA,\nMAGIA,ATLETA" 			
	
descT[2]="O regente incrivelmente extravagante dos sete mares que busca grandes desafios com estilo e muita ostentação. Ah, e ele é primo da Viva."
descleftT[2]=string(_ageT)+":38\nNAT.:GRÉCIA\n"+string(_heightT)+":7'4"+" "+string(_weightT)+":180LBS"
descrightT[2]=string(_likesT)+":FORÇA,TREINOS\n"+string(_dislikesT)+":FALSOS\n"+string(_hobbyT)+":ESCULTURA"
descabsT[2]="ÁGUA,BRIGA,\nMAGIA,ATLETA"

 charinfo_set(12,spr_prince_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,30,"PRINCE",
descT[global.Language] )
 

 
  if dataPal=2 
  {enemyID=166 hp=0.25
	  
descT[0]=  "He prefers summoning copies of himself over making his troops join in, to even the odds for a fairer fight. Or so he says."
descleftT[0]=string(_heightT)+":7'4"+" "+string(_weightT)+":180LBS"

descT[1]=  "Prefiere invocar copias de sí mismo en lugar de hacer que sus tropas participen, para equilibrar la pelea de forma “más justa”. O eso dice."
descleftT[1]=string(_heightT)+":7'4"+" "+string(_weightT)+":180LBS"

descT[2]="Ele prefere invocar cópias de si mesmo à fazer tropas se unirem a ele, equilibrando as chances, tornando a luta mais justa. Pelo menos é o que ele diz."
descleftT[2]=string(_heightT)+":7'4"+" "+string(_weightT)+":180LBS"
	  
	  charinfo_set(12,spr_prince_stand,2,animsetup_enemy,draw_enemy,spr_zombiepal,7,spr_enemyface,30,"WATER PRINCE",
descT[global.Language] )
 
     descright=""
dataabilities=""


descrightT[global.Language]=""
descabsT[global.Language]=""
   
   }
 
 break;

    case 15: enemyID=167 idlestyle=1
	
 descT[0]=   "A genie of the lamp who willingly listens to her master as she crushes intruders. How deep is her devotion?"
descleftT[0]=string(_ageT)+":ANCIENT\nNAT.:MIDDLE EAST\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":1333LBS"
descrightT[0]=string(_likesT)+":HER MASTER,LOVE\n"+string(_dislikesT)+":EXPLOITERS\n"+string(_hobbyT)+":WORKOUTS"
descabsT[0]="WISHES,MAGIC\nBRAWLING,DANCING"

 descT[1]=   "Una genio de la lámpara que obedece voluntariamente a su amo mientras aplasta intrusos. ¿Qué tan profunda es su devoción?"
descleftT[1]=string(_ageT)+":ANTIGUA\nNAT.:MEDIO O.\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":1333LBS"
descrightT[1]=string(_likesT)+":SU AMO,AMOR\n"+string(_dislikesT)+":EXPLOTADORES\n"+string(_hobbyT)+":EJERCISIOS"
descabsT[1]="DESEOS,MAGIA\nPELEAS,BAILANDO"	

descT[2]="Uma gênia da lâmpada que ouve de bom grado seu mestre enquanto destroça intrusos. Quão profunda é sua devoção?"
descleftT[2]=string(_ageT)+":ANTIGA\nNAT.:O.MÉDIO\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":1333LBS"
descrightT[2]=string(_likesT)+":SEU MESTRE,AMOR\n"+string(_dislikesT)+":EXPLORADORES\n"+string(_hobbyT)+":EXERCÍCIOS"
descabsT[2]="DESEJOS,MAGIA,\nBRIGANDO,DANÇANDO"

 charinfo_set(12,spr_genie_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,47,"HAIFA",
descT[global.Language] ) 

 
 break;
     case 16: enemyID=168 idlestyle=2
     hasVariants=1
	 
  descright=""
dataabilities=""

 descT[global.Language]=""
descleftT[global.Language]=""
descrightT[global.Language]=""
descabsT[global.Language]=""
	 
 if dataPal=1
 {idlestyle=1
	 
 descT[0]= "The mistress of the mirror, who enjoys toying with intruders by sending their reflections after them."
descleftT[0]=string(_ageT)+":ANCIENT\nNAT.:GERMANY\n"+string(_heightT)+":5'10"+" "+string(_weightT)+":0LBS"
descrightT[0]=string(_likesT)+":MIRRORS,HERSELF\n"+string(_dislikesT)+":SHATTERING\n"+string(_hobbyT)+":FIGURE SKATING"
descabsT[0]="SNEAKING,MIRROR COPY,\nREFLECTING,DECORATING"

 descT[1]= "La dama del espejo, que disfruta jugar con intrusos enviando sus propios reflejos contra ellos."
descleftT[1]=string(_ageT)+":ANTIGUA\nNAT.:ALEMANIA\n"+string(_heightT)+":5'10"+" "+string(_weightT)+":0LBS"
descrightT[1]=string(_likesT)+":ESPEJOS,ELLA MISMA\n"+string(_dislikesT)+":ROMPIÉNDOSE\n"+string(_hobbyT)+":PATINAJE ARTÍSTICO"
descabsT[1]="FISGÓN,COPIA ESPEJO,\nREFLEJANDO,DECORANDO"

descT[2]="A senhora do espelho, que gosta de brincar com os invasores enviando seus reflexos atrás deles."
descleftT[2]=string(_ageT)+":ANTIGA\nNAT.:ALEMANHA\n"+string(_heightT)+":5'10"+" "+string(_weightT)+":0LBS"
descrightT[2]=string(_likesT)+":ESPELHOS,ELA MESMA\n"+string(_dislikesT)+":QUEBRANDO\n"+string(_hobbyT)+":PATINAÇÃO ARTÍSTICA"
descabsT[2]="FURTANDO,CÓPIA NO ESPELHO,\nREFLETINDO,DECORANDO"
	 
charinfo_set(12,spr_mirrorlady_stand,5,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,62,"MIRROSA",
descT[global.Language] ) 

}
 if dataPal=2
 {enemyID=169 hp=1
	 
 descT[0]= "Viva's reflection, who’s as ill-tempered as she is. Being a mirror she’s as fragile as the original’s waistline."
descT[1]= "El reflejo de Viva, tan malhumorado como ella. Siendo un espejo, es tan frágil como la cintura de la original."
descT[2]="O reflexo da Viva, que é tão mal-humorado quanto ela. Por ser um espelho, é tão frágil quanto a cintura da original."
desc=descT[global.Language]
	 
	 charinfo_set(12,spr_viva_stand,5,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_playerface,0,"MIRROR VIVA",
descT[global.Language] )
descleftT[global.Language]=string(_heightT)+":5'10"+" "+string(_weightT)+":160LBS"

  
}
  if dataPal=3{enemyID=170 hp=1
	  
	 descT[0]="Hina's reflection, who’s as odd as she is stretchy. She’s just as weird and fiery as the genuine article."
descT[1]="El reflejo de Hina, tan extraña y elástica como ella. Igual de rara y ardiente que la auténtica."
descT[2]="O reflexo da Hina, que é tão estranha quanto elástica. Ela é tão esquisita e ardente quanto a original."
desc=descT[global.Language]
	  
 charinfo_set(12,spr_hina_stand,5,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_playerface,1,"MIRROR HINA",
descT[global.Language] ) 

descleftT[global.Language]=string(_heightT)+":6'2"+" "+string(_weightT)+":100LBS"

}
  if dataPal=4
{hp=1 enemyID=171 
	
	 descT[0]="Bahati's reflection, who’s as full-figured as she is. For a mirror, she’s as strong as the real deal."
descT[1]= "El reflejo de Bahati, tan bien formada como ella. Para ser un espejo, es tan fuerte como la real."
descT[2]="O reflexo da Bahati, que é tão cheio quanto ela. Para um espelho, ela é tão forte quanto a original."
desc=descT[global.Language]
	
	charinfo_set(12,spr_bahati_stand,5,animsetup_enemy,draw_enemy,spr_playerface,2,spr_playerface,2,"MIRROR BAHATI",
descT[global.Language] ) 

descleftT[global.Language]=string(_heightT)+":6'0"+" "+string(_weightT)+":260LBS"

}
  if dataPal=5
 {hp=1 enemyID=172
	 
	 descT[0]="Sofia's reflection, who has her aggressive demeanor. She may be small, but she’s just as quick and deadly."
descT[1]="El reflejo de Sofia, que tiene su mismo carácter agresivo. Será pequeña, pero igual de rápida y letal."
descT[2]="O reflexo da Sofia, que tem um comportamento agressivo. Ela pode ser pequena, mas é igualmente veloz e letal."
desc=descT[global.Language]
	 
	 charinfo_set(12,spr_sofia_stand,5,animsetup_enemy,draw_enemy,spr_playerface,3,spr_playerface,3,"MIRROR SOFIA",
descT[global.Language] ) 

descleftT[global.Language]=string(_heightT)+":5'2"+" "+string(_weightT)+":110LBS"

}
 
 break;
     case 17: enemyID=173
idlestyle=1


descT[0]= "A pretty plant who rules the fantastical depths of the caverns. This party loving plant princess won’t let you leave anytime soon..."
descleftT[0]=string(_ageT)+":ANCIENT\nNAT.:BRITAIN\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":190LBS"
descrightT[0]=string(_likesT)+":PARTIES,ATTENTION\n"+string(_dislikesT)+":LONELINESS\n"+string(_hobbyT)+":GARDENING"
descabsT[0]="PLANT,MUSIC\nSINGING,FLOWERING"

descT[1]=  "Una bella planta que gobierna las fantásticas profundidades de las cavernas. Esta princesa fiestera no te dejará irte tan pronto..."
descleftT[1]=string(_ageT)+":ANTIGUA\nNAT.:G.BRETAÑA\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":190LBS"
descrightT[1]=string(_likesT)+":FIESTAS,ATENCIÓN\n"+string(_dislikesT)+":SOLEDAD\n"+string(_hobbyT)+":JARDINERÍA"
descabsT[1]="PLANTA,MÚSICA\nCANTANDO,FLORACIÓN"

descT[2]="Uma linda planta que governa as profundezas fantásticas das cavernas. Esta princesa planta amante de festas, não vai deixar você fugir tão cedo..."
descleftT[2]=string(_ageT)+":ANTIGA\nNAT.:G.BRETANHA\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":190LBS"
descrightT[2]=string(_likesT)+":FESTAS,ATENÇÃO\n"+string(_dislikesT)+":SOLIDÃO\n"+string(_hobbyT)+":JARDINAGEM"
descabsT[2]="PLANTA,MÚSICA\nCANTANDO,FLORESCENDO"

desc=descT[global.Language]

 charinfo_set(12,spr_plantprincess_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,33,"SYNTHESA",
descT[global.Language] )
 

 
 break;
     case 18: enemyID=174
idlestyle=1

descT[0]=  "A maiden from the clouds looking for true love. But failing to find suitors keeps her in a terrible mood."
descleftT[0]=string(_ageT)+":18\nNAT.:CLOUDSVILLE\n"+string(_heightT)+":50'0"+" "+string(_weightT)+":10000LBS"
descrightT[0]=string(_likesT)+":LOVE,ROMANCE\n"+string(_dislikesT)+":BUGS\n"+string(_hobbyT)+":KNITTING"
descabsT[0]="FIRE BREATH,\nCLEANING,GARDENING"


descT[1]=  "Una doncella de las nubes que busca el amor verdadero. Pero no encontrar pretendientes la mantiene de muy mal humor."
descleftT[1]=string(_ageT)+":18\nNAT.:VILLA NUBE\n"+string(_heightT)+":50'0"+" "+string(_weightT)+":10000LBS"
descrightT[1]=string(_likesT)+":AMOR,ROMANCE\n"+string(_dislikesT)+":INSECTOS\n"+string(_hobbyT)+":TEJIDO"
descabsT[1]="ALIENTO DE FUEGO,\nLIMPIEZA,JARDINERÍA"

descT[2]="Uma donzela das nuvens em busca do amor verdadeiro. Mas não encontrar pretendentes a deixa de mau humor."
descleftT[2]=string(_ageT)+":18\nNAT.:VILLA NUBE\n"+string(_heightT)+":50'0"+" "+string(_weightT)+":10000LBS"
descrightT[2]=string(_likesT)+":AMOR,ROMANCE\n"+string(_dislikesT)+":INSETOS\n"+string(_hobbyT)+":TRICÔ"
descabsT[2]="SOPRO DE FOGO,\nLIMPEZA,JARDINAGEM"

 charinfo_set(12,spr_dragonmaiden_head,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,56,"FIONA",
descT[global.Language] )
 
 
 break;
     case 19: enemyID=175
idlestyle=1 hasVariants=1 hp=0.1


descT[0]=  "The scientist who runs the factory and is Van Bad’s most loyal underling. She’ll pull out all the stops to finish the divas."
descleftT[0]=string(_ageT)+":74\nNAT.:GERMANY\n"+string(_heightT)+":3'2"+" "+string(_weightT)+":80LBS"
descrightT[0]=string(_likesT)+":SCIENCE,SQUIDS\n"+string(_dislikesT)+":INCOMPETENCE\n"+string(_hobbyT)+":EXPERIMENTING"
descabsT[0]="SCIENCE,ROBOTICS,\nBIOLOGY,MEDICINE"

descT[1]= "La científica que dirige la fábrica y la subordinada más leal de Van Bad. Hará lo que sea para acabar con las divas."
descleftT[1]=string(_ageT)+":74\nNAT.:ALEMANIA\n"+string(_heightT)+":3'2"+" "+string(_weightT)+":80LBS"
descrightT[1]=string(_likesT)+":CIENCIA,CALAMARES\n"+string(_dislikesT)+":INCOMPETENCIA\n"+string(_hobbyT)+":EXPERIMENTANDO"
descabsT[1]="CIENCIA,ROBÓTICA,\nBIOLOGÍA,MEDICINA"

descT[2]="A cientista que comanda a fábrica e é a subordinada mais leal de Van Bad. Ela fará de tudo para acabar com as divas."
descleftT[2]=string(_ageT)+":74\nNAT.:ALEMANHA\n"+string(_heightT)+":3'2"+" "+string(_weightT)+":80LBS"
descrightT[2]=string(_likesT)+":CIÊNCIA,LULAS\n"+string(_dislikesT)+":INCOMPETÊNCIA\n"+string(_hobbyT)+":EXPERIMENTANDO"
descabsT[2]="CIÊNCIA,ROBÓTICA,\nBIOLOGIA,MEDICINA"


 charinfo_set(12,spr_scientist_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,36,"DR.FRAN",
descT[global.Language] )
 
      if dataPal=2
	{hp=2
		
 descT[0]=  "With her security failing, she resorts to mutation. This berserker is the definition of 'mad science'!"
 descT[1]=   "Con su seguridad fallando, recurre a la mutación. Esta berserker es la definición de ‘ciencia loca’."
descT[2]="Com sua segurança falhando, ela recorre à mutação. Essa berserker é a definição de ‘cientista maluca’!"
desc=descT[global.Language]
		
charinfo_set(12,spr_scientistm_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,60,"DR.FRAN",
descT[global.Language] );
 
descleftT[0]=string(_ageT)+":72\nNAT.:GERMANY\n"+string(_heightT)+":8'2"+" "+string(_weightT)+":350LBS"
descleftT[1]=string(_ageT)+":72\nNAT.:ALEMANIA\n"+string(_heightT)+":8'2"+" "+string(_weightT)+":350LBS"
descleftT[2]=string(_ageT)+":72\nNAT.:ALEMANHA\n"+string(_heightT)+":8'2"+" "+string(_weightT)+":350LBS"

 
   	}break;
	case 20: enemyID=176
     hasVariants=1
idlestyle=0

descT[0]=  "The one and only head honcho, he scours the world for treasure of all kinds to add to his vast collection."
descleftT[0]=string(_ageT)+":???\nNAT.:BRITAIN\n"+string(_heightT)+":11'2"+" "+string(_weightT)+":???LBS"
descrightT[0]=string(_likesT)+":???\n"+string(_dislikesT)+":???\n"+string(_hobbyT)+":???"
descabsT[0]="???"

descT[1]=   "El único y verdadero mandamás, recorre el mundo buscando tesoros de todo tipo para añadirlos a su vasta colección."
descleftT[1]=string(_ageT)+":???\nNAT.:G.BRETAÑA\n"+string(_heightT)+":11'2"+" "+string(_weightT)+":???LBS"
descrightT[1]=string(_likesT)+":???\n"+string(_dislikesT)+":???\n"+string(_hobbyT)+":???"
descabsT[1]="???"

descT[2]="O único e verdadeiro chefão, ele vasculha o mundo em busca de tesouros de todos os tipos para adicionar à sua vasta coleção."
descleftT[2]=string(_ageT)+":???\nNAT.:G.BRETANHA\n"+string(_heightT)+":11'2"+" "+string(_weightT)+":???LBS"
descrightT[2]=string(_likesT)+":???\n"+string(_dislikesT)+":???\n"+string(_hobbyT)+":???"
descabsT[2]="???"
	 

 charinfo_set(12,spr_dastardly_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,18,"VAN BAD",
descT[global.Language] )

 
  if dataPal=2
{enemyID=177
idlestyle=1

descT[0]= "The head honcho was an illustrious vampire all along! She merely disguised herself as a cartoon villain. Now the real show can begin."
descleftT[0]=string(_ageT)+":666\nNAT.:BRITAIN\n"+string(_heightT)+":7'4"+" "+string(_weightT)+":180LBS"
descrightT[0]=string(_likesT)+":TREASURE,BLOOD\n"+string(_dislikesT)+":DISORDER\n"+string(_hobbyT)+":ORGANIZING"
descabsT[0]="VAMPIRE,THIEVERY\nCONTROL,MECHANICS"

descT[1]=  "¡El mandamás era una ilustre vampira todo este tiempo! Sólo se disfrazó de villano de caricatura. Ahora puede comenzar el verdadero espectáculo."
descleftT[1]=string(_ageT)+":666\nNAT.:G.BRETAÑA\n"+string(_heightT)+":7'4"+" "+string(_weightT)+":180LBS"
descrightT[1]=string(_likesT)+":TESORO,SANGRE\n"+string(_dislikesT)+":DESORDEN\n"+string(_hobbyT)+":ORGANIZANDO"
descabsT[1]="VAMPIRA,ROBO,\nCONTROL,MECÁNICAS"
 
descT[2]="O chefão era uma ilustre vampira o tempo todo! Ela apenas se disfarçou como um vilão de desenho animado. Agora o verdadeiro show vai começar."
descleftT[2]=string(_ageT)+":666\nNAT.:G.BRETANHA\n"+string(_heightT)+":7'4"+" "+string(_weightT)+":180LBS"
descrightT[2]=string(_likesT)+":TESOURO,SANGUE\n"+string(_dislikesT)+":DESORDEN\n"+string(_hobbyT)+":ORGANIZANDO"
descabsT[2]="VAMPIRA,ROUBO\nCONTROLE,MECÂNICAS"

desc=descT[global.Language]

 charinfo_set(12,spr_dastardly2_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,58,"VAN BAD",
descT[global.Language] )
  
 
}
 break;
       case 21: enemyID=200
	   
descleftT[global.Language]=""
descrightT[global.Language]=""
descabsT[global.Language]=""
	   
descT[0]=  "I don't understand… I have no recorded info on this subject… Who is she? What is she? Where’d she even come from?!"
descT[1]= "No lo entiendo... No tengo información registrada sobre este sujeto… ¿Quién es ella? ¿Qué es ella? ¿De dónde salió?"
descT[2]="Não entendo... Não tenho nenhuma informação registrada sobre esse indivíduo... Quem é ela? O que ela é? De onde ela veio?!"
desc=descT[global.Language]
	   
 charinfo_set(12,spr_painter_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,59,"???",
descT[global.Language] )
 descleft=""
descright=""
 dataabilities=""
 break;

}

desc=descT[global.Language] 
descleft=descleftT[global.Language]
descright=descrightT[global.Language]
dataabilities=descabsT[global.Language] 

unlockedChar[enemyID]=global.UnlockEnemy[enemyID] if unlockedChar[enemyID]!=0 image_blend=c_white else image_blend=c_black
if image_blend=c_black {name="???" desc="" idlestyle=0
	  descleft=""
descright=""
dataabilities=""
	}
}