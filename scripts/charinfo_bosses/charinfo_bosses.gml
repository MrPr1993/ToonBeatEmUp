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

descright=+string(_likesT)+":LEATHER,PIGS\n"+string(_dislikesT)+":SILVER\n"+string(_hobbyT)+":STARGAZING"
dataabilities="SCHEMING,SLAPPING"

switch (dataSelect)
{
  case 1:
  hasVariants=1 enemyID=150 hp=1 
  if dataPal=1{idlestyle=1
	  
      descT[0]=  "A shady woman who works with the thieves to steal the divas’ treasures. And she seems to be hiding something else..."	   
descT[2]="Uma suspeita mulher que trabalha com os ladrões para roubar os tesouros das divas. E parece estar escondendo algo mais..."
desc=descT[global.Language] 
	  
 charinfo_set(11,spr_hwolf_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,9,"LADY WOLF",
desc)

descleft=string(_ageT)+":29\nNAT.:BRITAIN\n"+string(_heightT)+":5'10"+" "+string(_weightT)+":120LBS"

}
 if dataPal=2
	  {enemyID=151 idlestyle=0
		  hp=2
		  
descT[0]=   "Her true form! When this aggressive wolf comes out, beware her fearsome fangs or she’ll rip you apart!" 
descT[2]="Sua verdadeira forma! Quando essa loba agressiva sair da jaula, cuidado com suas presas temíveis ou ela vai te despedaçar!"
desc=descT[global.Language] 
		  
		  charinfo_set(11,spr_wolfita_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,5,"LADY WOLF",
desc)
 
 descleft=string(_ageT)+":29\nNAT.:BRITAIN\n"+string(_heightT)+":7'4"+" "+string(_weightT)+":180LBS"
  
  dataabilities="SCHEMING,SLAPPING\nMAULING,HOWLING"
  }

break;
  case 2:enemyID=152
idlestyle=3

descT[0]=    "She’s big. She’s round. She has a song in her heart. A fight with her won't be over until the fat lady sings."
descT[2]="Ela é grande. Ela é Roliça. Ela tem um coração movido à musica. Uma luta com ela não terminará antes de seu gordelicioso cântico."
desc=descT[global.Language] 

 charinfo_set(12,spr_harpy_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,34,"HARPILDA",
desc)
  descleft=string(_ageT)+":56\nNAT.:GREECE\n"+string(_heightT)+":7'4"+" "+string(_weightT)+":1200LBS"
 
 descright=+string(_likesT)+":GLITTER,THEATERS\n"+string(_dislikesT)+":NEW MUSIC\n"+string(_hobbyT)+":OPERA"
dataabilities="FLYING,SING,CRUSHING,\nAERODYNAMICS"
 
 break;

case 3:enemyID=153
idlestyle=1

descT[0]="A colossal woman who ferries passengers on her beloved ship. Stowaways will be in for a shock in more ways than one."
descT[2]="Um mulherão que transporta passageiros em seu amado navio. Clandestinos terão mais do que uma surpresa."
desc=descT[global.Language]

 charinfo_set(12,spr_franki_stand,1,animsetup_enemy,draw_enemy,spr_boxerpal,0,spr_enemyface,10,"CAPTAIN ROSY",
desc)
  descleft=string(_ageT)+":35\nNAT.:GERMANY\n"+string(_heightT)+":8'2"+" "+string(_weightT)+":1000LBS"
 
 descright=+string(_likesT)+":TRAVELING,SPINACH\n"+string(_dislikesT)+":SABOTEURS\n"+string(_hobbyT)+":CUSTOMIZING BOATS"
dataabilities="BRAWLING,WRESTLING,\nSAILING,LIGHTNING"
 
 break;
 
 case 4:enemyID=154
 
 descT[0]= "This cowgirl in charge of the Loco Dos hunts down stowaways. Two heads, and guns, are better than one."
descT[2]="Esta vaqueira está em cargo de proteger o Loco Dos de clandestinos. Duas cabeças, e armas, são melhores que uma."
desc=descT[global.Language]
 
charinfo_set(12,spr_twoheads_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,35,"DOLORES",
desc)
   descleft=string(_ageT)+":35\nNAT.:USA\n"+string(_heightT)+":7'0"+" "+string(_weightT)+":160LBS"
 
 descright=+string(_likesT)+":MILK,CACTI\n"+string(_dislikesT)+":VARMINTS\n"+string(_hobbyT)+":HORSE RIDING"
dataabilities="SHOOTING,LASSO TRICKS,\nBREWING,CARD GAMES"
 
 break;

 case 5:enemyID=155
 
  descT[0]=  "A head collector in life. She became a ghost after taking her own head. She may enjoy beheadings a bit too much..."
descT[2]="Colecionadora de cabeças em vida. Se tornou um fantasma depois de cortar sua própria cabeça. Talvez ela goste de decapitações um pouco demais..."
desc=descT[global.Language]
 
 charinfo_set(12,spr_ghost_stand,1,animsetup_enemy,ghost_effect,spr_enemypal,0,spr_enemyface,17,"ANNAMARI",
desc)
    descleft=string(_ageT)+":DEAD\nNAT.:FRANCE\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
 
 descright=+string(_likesT)+":HEADS,AXES\n"+string(_dislikesT)+":CAKES\n"+string(_hobbyT)+":HEADS"
dataabilities="GHOST,CUTTING,SCARING\nCUTTING SCARING"
 
 break;
   
  case 6:enemyID=156
  idlestyle=1
  
    descT[0]=  "A goddess who enjoys a good party. But those who disrespect her will be met with some good old fashioned divine punishment."
descT[2]="Uma deusa que gosta de uma boa festa. Mas aqueles que a desrespeitarem receberão um castigo divino bem caprichado."
desc=descT[global.Language]
  
 charinfo_set(12,spr_pharaoh_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,11,"HATHOR",
desc)
     descleft=string(_ageT)+":ANCIENT\nNAT.:EGYPT\n"+string(_heightT)+":7'4"+" "+string(_weightT)+":170LBS"
 
 descright=+string(_likesT)+":COWS,MUSIC\n"+string(_dislikesT)+":INFIDELS\n"+string(_hobbyT)+":PARTYING"
dataabilities="DIVINE,CURSES,CONNECTING\nORGANIZING,LOVEMAKING"
 
 break;
   case 7:enemyID=157
     hasVariants=1
  if dataPal=1
 charinfo_set(12,spr_oni_stand,2,animsetup_enemy,draw_swing,spr_ninjapal,0,spr_enemyface,31,"FUKUKIJO",
desc)
 
 descT[0]=  "The eldest of the Oni Sisters. With fire in her eyes, she scorches opponents and throws magic cards."
descT[2]="A mais velha das irmãs Oni. Com fogo nos olhos, ela queima os oponentes e lança cartas mágicas."
desc=descT[global.Language]
 
  descleft=string(_ageT)+":37\nNAT.:JAPAN\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
 
 descright=+string(_likesT)+":SAKE,MONEY\n"+string(_dislikesT)+":CHEATS\n"+string(_hobbyT)+":CALLIGRAPHY"
dataabilities="GAMBLING,PERFORMING,\nRIDDLES,SMASHING,FIRE"
 
   if dataPal=2
 {enemyID=158
	 charinfo_set(12,spr_oni_stand,2,animsetup_enemy,draw_swing,spr_ninjapal,7,spr_enemyface,31,"SHOKIJO",
desc)
 
  descT[0]= "The younger of the Oni Sisters. With a chilling aura, she freezes her foes and rolls magic dice."
descT[2]="A mais nova das irmãs Oni. Com uma aura de arrepiar, ela congela seus inimigos e lança dados mágicos."
desc=descT[global.Language]
 
 descleft=string(_ageT)+":36\nNAT.:JAPAN\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
 
  descright=+string(_likesT)+":SAKE,MONEY\n"+string(_dislikesT)+":DISRESPECT\n"+string(_hobbyT)+":POETRY"
dataabilities="GAMBLING,PERFORMING,\nRIDDLES,SMASHING,ICE"
 
 }
 
 weapon_add("ONI CLUB")
 weaponanim(weaponspr,weaponIndex,34,-95,180*image_xscale,weaponcolor)
 
 break;
   case 8:
  idlestyle=1 enemyID=159
  
    descT[0]=   "She dwells in the swamp alone with the undead as she stirs her cauldron. She’s a druid, not a witch. Don’t mix it up…"
descT[2]="Ela mora sozinha no pântano com os mortos-vivos e seu caldeirão. Ela é uma druida, não uma bruxa. Não confunda..."
desc=descT[global.Language]
  
 charinfo_set(12,spr_witch_stand,1,animsetup_enemy,draw_enemy,pal_witch,1,spr_enemyface,32,"KIANDRA",
desc)
 
 descleft=string(_ageT)+":ANCIENT?\nNAT.:CELTIC\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":160LBS"
 
  descright=+string(_likesT)+":ISOLATION\n"+string(_dislikesT)+":TRESSPASSERS\n"+string(_hobbyT)+":SWIMMING"
dataabilities="MAGIC,BREWING,\nEXPERIMENTING,\nCOOKING,POSSESSING"
 
 break;
   case 9:
   enemyID=160
   
       descT[0]= "The carnival's crazy ringmaster. She’s a cartoon duck toy person... thing. She’s quite the quack."
descT[2]="A louca mestra de cerimônias do festival. Ela é um brinquedo de um pato de desenho só que... gente. É uma pata pateta."
desc=descT[global.Language]
   
 charinfo_set(12,spr_duck_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,39,"DIXIE",
desc)
 
  descleft=string(_ageT)+":31\nNAT.:FRANCE\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
 
  descright=+string(_likesT)+":FUN,AUDIENCE\n"+string(_dislikesT)+":BOREDOM\n"+string(_hobbyT)+":PRANKING"
dataabilities="LOONY,QUACKING\nJUGGLING,BAKING"
 
 break;
    case 10: enemyID=161 idlestyle=1
	
	       descT[0]=  "The sea witch’s protective pet octopus who mercilessly beats down any interlopers with his tentacles."
descT[2]="O polvo protetor da bruxa do mar, que derrota impiedosamente qualquer intruso com seus tentáculos."
desc=descT[global.Language]
	
 charinfo_set(12,spr_octopus_stand,1,animsetup_enemy,draw_swing_2,spr_enemypal,0,spr_enemyface,40,"LARRY",
desc)
 
   descleft=string(_ageT)+":26\nNAT.:GREECE\n"+string(_heightT)+":8'4"+" "+string(_weightT)+":180LBS"
  
var watchtarget=0;
watchtarget=point_direction(x,y,x,y+16) weaponBack=1
weaponspr=spr_octopus_eye weaponIndex=0 weaponX=0 weaponY=0
weaponspr2=spr_octopus_eye weaponIndex2=1 weaponX2=0 weaponY2=8

  descright=+string(_likesT)+":CIRCE,MOLLUSKS\n"+string(_dislikesT)+":DOLPHINS\n"+string(_hobbyT)+":SANDCASTLES"
dataabilities="TENTACLES,DANCING,\nCRAFTING,SAILING"

break;
  
  case 11: enemyID=162 idlestyle=0
  
  	       descT[0]=  "A cave dwelling sea witch who enjoys company so long as they don't cause trouble. Otherwise, they get a spankin'."
descT[2]="Uma bruxa do mar que habita uma caverna e gosta de companhia, desde que não causem problemas. Caso contrário, eles levam palmadas."
desc=descT[global.Language]
  
 charinfo_set(12,spr_seaweed_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,41,"CIRCE",
desc) 
 
descleft=string(_ageT)+":ANCIENT\nNAT.:GREECE\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":360LBS"
 
   descright=+string(_likesT)+":PETS,TRANSFORMING\n"+string(_dislikesT)+":BAD MEN\n"+string(_hobbyT)+":SUNBATHING"
dataabilities="MAGIC,ENCHANT,BREWING,\nSUMMONING,CURSING"
 
 break;
   case 12: enemyID=163
   
     	       descT[0]= "She is the captain of a space pirate crew! And they’ll crush anyone in their way with their out of this world technology!"
descT[2]="Ela é capitã de uma tripulação de piratas espaciais! E esmagam qualquer um que estiver em seu caminho usando tecnologia de outro mundo."
desc=descT[global.Language]
   
 charinfo_set(12,spr_martianb_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,54,"KWINN",
desc) 
 
 descleft=string(_ageT)+":48\nNAT.:ALIEN\n"+string(_heightT)+":9'0"+" "+string(_weightT)+":190LBS"
 
   descright=+string(_likesT)+":GOLD,SPECIMENS\n"+string(_dislikesT)+":JUSTICE\n"+string(_hobbyT)+":COLLECTING"
dataabilities="CYBERNETICS,BRAINPOWER,\nFENCING,CANNONING"
 
 break;
   case 13: enemyID=164
   
        	       descT[0]= "One of the thieves' submarines that dive into the depths, plundering the sea’s treasures."
descT[2]="Um dos submarinos dos ladrões que mergulha nas profundezas, saqueando os tesouros do mar."
desc=descT[global.Language]
   
 charinfo_set(12,spr_submarine,1,animsetup_enemy,draw_swing_2,spr_enemypal,0,spr_enemyface,57,"SEA BANDIT",
desc)
 
 descleft=string(_heightT)+":12'0"+" "+string(_weightT)+":6000LBS"
 
   descright=""
dataabilities="MISSILES,MINES,DIVING"
 
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
descT[2]="O regente incrivelmente extravagante dos sete mares que busca grandes desafios com estilo e muita ostentação. Ah, e ele é primo da Viva."
desc=descT[global.Language]

 charinfo_set(12,spr_prince_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,30,"PRINCE",
desc)
 
 descleft=string(_ageT)+":38\nNAT.:GREECE\n"+string(_heightT)+":7'4"+" "+string(_weightT)+":180LBS"
 
   descright=+string(_likesT)+":STRENGTH,WORKOUTS\n"+string(_dislikesT)+":FAKERS\n"+string(_hobbyT)+":SCULPTING"
dataabilities="WATER,BRAWLING\nMAGIC,ATHLETE"
 
  if dataPal=2 
  {enemyID=166 hp=0.25
	  
	         	       descT[0]=  "He prefers summoning copies of himself over making his troops join in, to even the odds for a fairer fight. Or so he says."
descT[2]="Ele prefere invocar cópias de si mesmo à fazer tropas se unirem a ele, equilibrando as chances, tornando a luta mais justa. Pelo menos é o que ele diz."
desc=descT[global.Language]
	  
	  charinfo_set(12,spr_prince_stand,2,animsetup_enemy,draw_enemy,spr_zombiepal,7,spr_enemyface,30,"WATER PRINCE",
desc)
   
   descleft=string(_heightT)+":7'4"+" "+string(_weightT)+":180LBS"
   
     descright=""
dataabilities=""
   
   }
 
 break;

    case 15: enemyID=167 idlestyle=1
	
 descT[0]=   "A genie of the lamp who willingly listens to her master as she crushes intruders. How deep is her devotion?"
descT[2]="Uma gênia da lâmpada que ouve de bom grado seu mestre enquanto destroça intrusos. Quão profunda é sua devoção?"
desc=descT[global.Language]
	
 charinfo_set(12,spr_genie_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,47,"HAIFA",
desc) 
 
  descleft=string(_ageT)+":ANCIENT\nNAT.:MIDDLE EAST\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
 
descright=+string(_likesT)+":HER MASTER,LOVE\n"+string(_dislikesT)+":EXPLOITERS\n"+string(_hobbyT)+":WORKOUTS"
dataabilities="WISHES,MAGIC\nBRAWLING,DANCING"
 
 break;
     case 16: enemyID=168 idlestyle=2
     hasVariants=1
	 
  descright=""
dataabilities=""
	 
 if dataPal=1
 {idlestyle=1
	 
 descT[0]= "The mistress of the mirror, who enjoys toying with intruders by sending their reflections after them."
descT[2]="A senhora do espelho, que gosta de brincar com os invasores enviando seus reflexos atrás deles."
desc=descT[global.Language]
	 
charinfo_set(12,spr_mirrorlady_stand,5,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,62,"MIRROSA",
desc) 

  descleft=string(_ageT)+":ANCIENT\nNAT.:GERMANY\n"+string(_heightT)+":5'10"+" "+string(_weightT)+":0LBS"

  descright=+string(_likesT)+":MIRRORS,HERSELF\n"+string(_dislikesT)+":SHATTERING\n"+string(_hobbyT)+":FIGURE SKATING"
dataabilities="SNEAKING,MIRROR COPY,\nREFLECTING,DECORATING"

}
 if dataPal=2
 {enemyID=169 hp=1
	 
 descT[0]= "Viva's reflection, who’s as ill-tempered as she is. Being a mirror she’s as fragile as the original’s waistline."
descT[2]="O reflexo da Viva, que é tão mal-humorado quanto ela. Por ser um espelho, é tão frágil quanto a cintura da original."
desc=descT[global.Language]
	 
	 charinfo_set(12,spr_viva_stand,5,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_playerface,0,"MIRROR VIVA",
desc)
  descleft=string(_heightT)+":5'10"+" "+string(_weightT)+":160LBS"

  
}
  if dataPal=3{enemyID=170 hp=1
	  
	 descT[0]="Hina's reflection, who’s as odd as she is stretchy. She’s just as weird and fiery as the genuine article."
descT[2]="O reflexo da Hina, que é tão estranha quanto elástica. Ela é tão esquisita e ardente quanto a original."
desc=descT[global.Language]
	  
 charinfo_set(12,spr_hina_stand,5,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_playerface,1,"MIRROR HINA",
desc) 

descleft=string(_heightT)+":6'2"+" "+string(_weightT)+":100LBS"

}
  if dataPal=4
{hp=1 enemyID=171 
	
	 descT[0]="Bahati's reflection, who’s as full-figured as she is. For a mirror, she’s as strong as the real deal."
descT[2]="O reflexo da Bahati, que é tão cheio quanto ela. Para um espelho, ela é tão forte quanto a original."
desc=descT[global.Language]
	
	charinfo_set(12,spr_bahati_stand,5,animsetup_enemy,draw_enemy,spr_playerface,2,spr_playerface,2,"MIRROR BAHATI",
desc) 

descleft=string(_heightT)+":6'0"+" "+string(_weightT)+":260LBS"

}
  if dataPal=5
 {hp=1 enemyID=172
	 
	 descT[0]="Sofia's reflection, who has her aggressive demeanor. She may be small, but she’s just as quick and deadly."
descT[2]="O reflexo da Sofia, que tem um comportamento agressivo. Ela pode ser pequena, mas é igualmente veloz e letal."
desc=descT[global.Language]
	 
	 charinfo_set(12,spr_sofia_stand,5,animsetup_enemy,draw_enemy,spr_playerface,3,spr_playerface,3,"MIRROR SOFIA",
desc) 

 descleft=string(_heightT)+":5'2"+" "+string(_weightT)+":110LBS"

}
 
 break;
     case 17: enemyID=173
idlestyle=1

	 descT[0]= "A pretty plant who rules the fantastical depths of the caverns. This party loving plant princess won’t let you leave anytime soon..."
descT[2]="Uma linda planta que governa as profundezas fantásticas das cavernas. Esta princesa planta amante de festas, não vai deixar você fugir tão cedo..."
desc=descT[global.Language]

 charinfo_set(12,spr_plantprincess_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,33,"SYNTHESA",
desc)
 
   descleft=string(_ageT)+":ANCIENT\nNAT.:BRITAIN\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":190LBS"
 
   descright=+string(_likesT)+":PARTIES,ATTENTION\n"+string(_dislikesT)+":BOREDOM\n"+string(_hobbyT)+":GARDENING"
dataabilities="PLANT,MUSIC\nSINGING,FLOWERING"
 
 break;
     case 18: enemyID=174
idlestyle=1

	 descT[0]=  "A maiden from the clouds looking for true love. But failing to find suitors keeps her in a terrible mood."
descT[2]="Uma donzela das nuvens em busca do amor verdadeiro. Mas não encontrar pretendentes a deixa de mau humor."
desc=descT[global.Language]

 charinfo_set(12,spr_dragonmaiden_head,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,56,"FIONA",
desc)
 
    descleft=string(_ageT)+":18\nNAT.:BRITAIN\n"+string(_heightT)+":50'0"+" "+string(_weightT)+":10000LBS"
 
   descright=+string(_likesT)+":LOVE,LOVING\n"+string(_dislikesT)+":BUGS\n"+string(_hobbyT)+":KNITTING"
dataabilities="FIRE BREATH,\nCLEANING,GARDENING"
 
 break;
     case 19: enemyID=175
idlestyle=1 hasVariants=1 hp=0.1

	 descT[0]=  "The scientist who runs the factory and is Van Bad’s most loyal underling. She’ll pull out all the stops to finish the divas."
descT[2]="A cientista que comanda a fábrica e é a subordinada mais leal de Van Bad. Ela fará de tudo para acabar com as divas."
desc=descT[global.Language]

 charinfo_set(12,spr_scientist_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,36,"DR.FRAN",
desc)
 
 descleft=string(_ageT)+":64\nNAT.:GERMANY\n"+string(_heightT)+":3'2"+" "+string(_weightT)+":80LBS"
 
   descright=+string(_likesT)+":SCIENCE,SQUIDS\n"+string(_dislikesT)+":INCOMPETENCE\n"+string(_hobbyT)+":EXPERIMENTING"
dataabilities="SCIENCE,ROBOTICS,\nBIOLOGY,MEDICINE"
 
      if dataPal=2
	{hp=2
		
	 descT[0]=  "With her security failing, she resorts to mutation. This berserker is the definition of 'mad science'!"
descT[2]="Com sua segurança falhando, ela recorre à mutação. Essa berserker é a definição de ‘cientista maluca’!"
desc=descT[global.Language]
		
charinfo_set(12,spr_scientistm_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,60,"DR.FRAN",
desc);
 
  descleft=string(_ageT)+":72\nNAT.:GERMANY\n"+string(_heightT)+":8'2"+" "+string(_weightT)+":350LBS"

 
   	}break;
	case 20: enemyID=176
     hasVariants=1
idlestyle=0

	 descT[0]=  "The one and only head honcho, he scours the world for treasure of all kinds to add to his vast collection."
descT[2]="O único e verdadeiro chefão, ele vasculha o mundo em busca de tesouros de todos os tipos para adicionar à sua vasta coleção."
desc=descT[global.Language]

 charinfo_set(12,spr_dastardly_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,18,"VAN BAD",
desc)
 
   descleft=string(_ageT)+":???\nNAT.:BRITAIN\n"+string(_heightT)+":11'2"+" "+string(_weightT)+":190LBS"
 
    descright=+string(_likesT)+":???\n"+string(_dislikesT)+":???\n"+string(_hobbyT)+":???"
dataabilities="???"
 
  if dataPal=2
{enemyID=177
idlestyle=1

	 descT[0]=  "The head honcho was an illustrious vampire all along! She merely disguised herself as a cartoon villain. Now the real show can begin."
descT[2]="O chefão era uma ilustre vampira o tempo todo! Ela apenas se disfarçou como um vilão de desenho animado. Agora o verdadeiro show vai começar."
desc=descT[global.Language]

 charinfo_set(12,spr_dastardly2_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,58,"VAN BAD",
desc)
 
   descleft=string(_ageT)+":300\nNAT.:BRITAIN\n"+string(_heightT)+":7'4"+" "+string(_weightT)+":180LBS"
 
    descright=+string(_likesT)+":TREASURE,BLOOD\n"+string(_dislikesT)+":DISORDER\n"+string(_hobbyT)+":ORGANIZING"
dataabilities="VAMPIRE,THIEVERY\nCONTROL,MECHANICS"
 
}
 break;
       case 21: enemyID=200
	   
		 descT[0]=  "I don't understand… I have no recorded info on this subject… Who is she? What is she? Where’d she even come from?!"
descT[2]="Não entendo... Não tenho nenhuma informação registrada sobre esse indivíduo... Quem é ela? O que ela é? De onde ela veio?!"
desc=descT[global.Language]
	   
 charinfo_set(12,spr_painter_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,59,"???",
desc)
 descleft=""
descright=""
 dataabilities=""
 break;

}
unlockedChar[enemyID]=global.UnlockEnemy[enemyID] if unlockedChar[enemyID]!=0 image_blend=c_white else image_blend=c_black
if image_blend=c_black {name="???" desc="" idlestyle=0
	  descleft=""
descright=""
dataabilities=""
	}
}