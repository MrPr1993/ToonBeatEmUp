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
 charinfo_set(11,spr_hwolf_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,9,"LADY WOLF",
 "A shady woman who works with the thieves to steal the divas’ treasures. And she seems to be hiding something else...")

descleft=string(_ageT)+":29\nNAT.:BRITAIN\n"+string(_heightT)+":5'10"+" "+string(_weightT)+":120LBS"

}
 if dataPal=2
	  {enemyID=151 idlestyle=0
		  hp=2
		  charinfo_set(11,spr_wolfita_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,5,"LADY WOLF",
 "Her true form! When this aggressive wolf comes out, beware her fearsome fangs or she’ll rip you apart!")
 
 descleft=string(_ageT)+":29\nNAT.:BRITAIN\n"+string(_heightT)+":7'4"+" "+string(_weightT)+":180LBS"
  
  dataabilities="SCHEMING,SLAPPING\nMAULING,HOWLING"
  }

break;
  case 2:enemyID=152
idlestyle=3
 charinfo_set(12,spr_harpy_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,34,"HARPILDA",
 "She’s big. She’s round. She has a song in her heart. A fight with her won't be over until the fat lady sings.")
  descleft=string(_ageT)+":56\nNAT.:GREECE\n"+string(_heightT)+":7'4"+" "+string(_weightT)+":1200LBS"
 
 descright=+string(_likesT)+":GLITTER,THEATERS\n"+string(_dislikesT)+":NEW MUSIC\n"+string(_hobbyT)+":OPERA"
dataabilities="FLYING,SING,CRUSHING,\nAERODYNAMICS"
 
 break;

case 3:enemyID=153
idlestyle=1
 charinfo_set(12,spr_franki_stand,1,animsetup_enemy,draw_enemy,spr_boxerpal,0,spr_enemyface,10,"CAPTAIN ROSY",
 "A colossal woman who ferries passengers on her beloved ship. Stowaways will be in for a shock in more ways than one.")
  descleft=string(_ageT)+":35\nNAT.:GERMANY\n"+string(_heightT)+":8'2"+" "+string(_weightT)+":1000LBS"
 
 descright=+string(_likesT)+":TRAVELING,SPINACH\n"+string(_dislikesT)+":SABOTEURS\n"+string(_hobbyT)+":CUSTOMIZING BOATS"
dataabilities="BRAWLING,WRESTLING,\nSAILING,LIGHTNING"
 
 break;
 
 case 4:enemyID=154
charinfo_set(12,spr_twoheads_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,35,"DOLORES",
 "This cowgirl in charge of the Loco Dos hunts down stowaways. Two heads, and guns, are better than one.")
   descleft=string(_ageT)+":35\nNAT.:USA\n"+string(_heightT)+":7'0"+" "+string(_weightT)+":160LBS"
 
 descright=+string(_likesT)+":MILK,CACTI\n"+string(_dislikesT)+":VARMINTS\n"+string(_hobbyT)+":HORSE RIDING"
dataabilities="SHOOTING,LASSO TRICKS,\nBREWING,CARD GAMES"
 
 break;

 case 5:enemyID=155
 charinfo_set(12,spr_ghost_stand,1,animsetup_enemy,ghost_effect,spr_enemypal,0,spr_enemyface,17,"ANNAMARI",
 "A head collector in life. She became a ghost after taking her own head. She may enjoy beheadings a bit too much...")
    descleft=string(_ageT)+":DEAD\nNAT.:FRANCE\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
 
 descright=+string(_likesT)+":HEADS,AXES\n"+string(_dislikesT)+":CAKES\n"+string(_hobbyT)+":HEADS"
dataabilities="GHOST,CUTTING,SCARING\nCUTTING SCARING"
 
 break;
   
  case 6:enemyID=156
  idlestyle=1
 charinfo_set(12,spr_pharaoh_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,11,"HATHOR",
 "A goddess who enjoys a good party. But those who disrespect her will be met with some good old fashioned divine punishment.")
     descleft=string(_ageT)+":ANCIENT\nNAT.:EGYPT\n"+string(_heightT)+":7'4"+" "+string(_weightT)+":170LBS"
 
 descright=+string(_likesT)+":COWS,MUSIC\n"+string(_dislikesT)+":INFIDELS\n"+string(_hobbyT)+":PARTYING"
dataabilities="DIVINE,CURSES,CONNECTING\nORGANIZING,LOVEMAKING"
 
 break;
   case 7:enemyID=157
     hasVariants=1
  if dataPal=1
 charinfo_set(12,spr_oni_stand,2,animsetup_enemy,draw_swing,spr_ninjapal,0,spr_enemyface,31,"FUKUKIJO",
 "The eldest of the Oni Sisters. With fire in her eyes, she scorches opponents and throws magic cards.")
 
  descleft=string(_ageT)+":37\nNAT.:JAPAN\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
 
 descright=+string(_likesT)+":SAKE,MONEY\n"+string(_dislikesT)+":CHEATS\n"+string(_hobbyT)+":CALLIGRAPHY"
dataabilities="GAMBLING,PERFORMING,\nRIDDLES,SMASHING,FIRE"
 
   if dataPal=2
 {enemyID=158
	 charinfo_set(12,spr_oni_stand,2,animsetup_enemy,draw_swing,spr_ninjapal,7,spr_enemyface,31,"SHOKIJO",
 "The younger of the Oni Sisters. With a chilling aura, she freezes her foes and rolls magic dice.")
 descleft=string(_ageT)+":36\nNAT.:JAPAN\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
 
  descright=+string(_likesT)+":SAKE,MONEY\n"+string(_dislikesT)+":DISRESPECT\n"+string(_hobbyT)+":POETRY"
dataabilities="GAMBLING,PERFORMING,\nRIDDLES,SMASHING,ICE"
 
 }
 
 weapon_add("ONI CLUB")
 weaponanim(weaponspr,weaponIndex,34,-95,180*image_xscale,weaponcolor)
 
 break;
   case 8:
  idlestyle=1 enemyID=159
 charinfo_set(12,spr_witch_stand,1,animsetup_enemy,draw_enemy,pal_witch,1,spr_enemyface,32,"KIANDRA",
 "She dwells in the swamp alone with the undead as she stirs her cauldron. She’s a druid, not a witch. Don’t mix it up…")
 
 descleft=string(_ageT)+":ANCIENT?\nNAT.:CELTIC\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":160LBS"
 
  descright=+string(_likesT)+":ISOLATION\n"+string(_dislikesT)+":TRESSPASSERS\n"+string(_hobbyT)+":SWIMMING"
dataabilities="MAGIC,BREWING,\nEXPERIMENTING,\nCOOKING,POSSESSING"
 
 break;
   case 9:
   enemyID=160
 charinfo_set(12,spr_duck_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,39,"DIXIE",
 "The carnival's crazy ringmaster. She’s a cartoon duck toy person... thing. She’s quite the quack.")
 
  descleft=string(_ageT)+":31\nNAT.:FRANCE\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
 
  descright=+string(_likesT)+":FUN,AUDIENCE\n"+string(_dislikesT)+":BOREDOM\n"+string(_hobbyT)+":PRANKING"
dataabilities="LOONY,QUACKING\nJUGGLING,BAKING"
 
 break;
    case 10: enemyID=161 idlestyle=1
 charinfo_set(12,spr_octopus_stand,1,animsetup_enemy,draw_swing_2,spr_enemypal,0,spr_enemyface,40,"LARRY",
 "The sea witch’s protective pet octopus who mercilessly beats down any interlopers with his tentacles.")
 
   descleft=string(_ageT)+":26\nNAT.:GREECE\n"+string(_heightT)+":8'4"+" "+string(_weightT)+":180LBS"
  
var watchtarget=0;
watchtarget=point_direction(x,y,x,y+16) weaponBack=1
weaponspr=spr_octopus_eye weaponIndex=0 weaponX=0 weaponY=0
weaponspr2=spr_octopus_eye weaponIndex2=1 weaponX2=0 weaponY2=8

  descright=+string(_likesT)+":CIRCE,MOLLUSKS\n"+string(_dislikesT)+":DOLPHINS\n"+string(_hobbyT)+":SANDCASTLES"
dataabilities="TENTACLES,DANCING,\nCRAFTING,SAILING"

break;
  
  case 11: enemyID=162 idlestyle=0
 charinfo_set(12,spr_seaweed_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,41,"CIRCE",
 "A cave dwelling sea witch who enjoys company so long as they don't cause trouble. Otherwise, they get a spankin'.") 
 
descleft=string(_ageT)+":ANCIENT\nNAT.:GREECE\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":360LBS"
 
   descright=+string(_likesT)+":PETS,TRANSFORMING\n"+string(_dislikesT)+":BAD MEN\n"+string(_hobbyT)+":SUNBATHING"
dataabilities="MAGIC,ENCHANT,BREWING,\nSUMMONING,CURSING"
 
 break;
   case 12: enemyID=163
 charinfo_set(12,spr_martianb_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,54,"KWINN",
 "She is the captain of a space pirate crew! And they’ll crush anyone in their way with their out of this world technology!") 
 
 descleft=string(_ageT)+":48\nNAT.:ALIEN\n"+string(_heightT)+":9'0"+" "+string(_weightT)+":190LBS"
 
   descright=+string(_likesT)+":GOLD,SPECIMENS\n"+string(_dislikesT)+":JUSTICE\n"+string(_hobbyT)+":COLLECTING"
dataabilities="CYBERNETICS,BRAINPOWER,\nFENCING,CANNONING"
 
 break;
   case 13: enemyID=164
 charinfo_set(12,spr_submarine,1,animsetup_enemy,draw_swing_2,spr_enemypal,0,spr_enemyface,57,"SEA BANDIT",
 "One of the thieves' submarines that dive into the depths, plundering the sea’s treasures.")
 
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
 charinfo_set(12,spr_prince_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,30,"PRINCE",
 "The incredibly flamboyant ruler of the seven seas who seeks great challenges with style and lots of flexing. Oh, and he's Viva's cousin.")
 
 descleft=string(_ageT)+":38\nNAT.:GREECE\n"+string(_heightT)+":7'4"+" "+string(_weightT)+":180LBS"
 
   descright=+string(_likesT)+":STRENGTH,WORKOUTS\n"+string(_dislikesT)+":FAKERS\n"+string(_hobbyT)+":SCULPTING"
dataabilities="WATER,BRAWLING\nMAGIC,ATHLETE"
 
  if dataPal=2 
  {enemyID=166 hp=0.25
	  charinfo_set(12,spr_prince_stand,2,animsetup_enemy,draw_enemy,spr_zombiepal,7,spr_enemyface,30,"WATER PRINCE",
 "He prefers summoning copies of himself over making his troops join in, to even the odds for a fairer fight. Or so he says.")
   
   descleft=string(_heightT)+":7'4"+" "+string(_weightT)+":180LBS"
   
     descright=""
dataabilities=""
   
   }
 
 break;

    case 15: enemyID=167 idlestyle=1
 charinfo_set(12,spr_genie_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,47,"HAIFA",
 "A genie of the lamp who willingly listens to her master as she crushes intruders. How deep is her devotion?") 
 
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
charinfo_set(12,spr_mirrorlady_stand,5,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,62,"MIRROSA",
"The mistress of the mirror, who enjoys toying with intruders by sending their reflections after them.") 

  descleft=string(_ageT)+":ANCIENT\nNAT.:GERMANY\n"+string(_heightT)+":5'10"+" "+string(_weightT)+":0LBS"

  descright=+string(_likesT)+":MIRRORS,HERSELF\n"+string(_dislikesT)+":SHATTERING\n"+string(_hobbyT)+":FIGURE SKATING"
dataabilities="SNEAKING,MIRROR COPY,\nREFLECTING,DECORATING"

}
 if dataPal=2
 {enemyID=169 hp=1
	 charinfo_set(12,spr_viva_stand,5,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_playerface,0,"MIRROR VIVA",
"Viva's reflection, who’s as ill-tempered as she is. Being a mirror she’s as fragile as the original’s waistline.")
  descleft=string(_heightT)+":5'10"+" "+string(_weightT)+":160LBS"

  
}
  if dataPal=3{enemyID=170 hp=1
 charinfo_set(12,spr_hina_stand,5,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_playerface,1,"MIRROR HINA",
"Hina's reflection, who’s as odd as she is stretchy. She’s just as weird and fiery as the genuine article.") 

descleft=string(_heightT)+":6'2"+" "+string(_weightT)+":100LBS"

}
  if dataPal=4
{hp=1 enemyID=171 charinfo_set(12,spr_bahati_stand,5,animsetup_enemy,draw_enemy,spr_playerface,2,spr_playerface,2,"MIRROR BAHATI",
"Bahati's reflection, who’s as full-figured as she is. For a mirror, she’s as strong as the real deal.") 

descleft=string(_heightT)+":6'0"+" "+string(_weightT)+":260LBS"

}
  if dataPal=5
 {hp=1 enemyID=172 charinfo_set(12,spr_sofia_stand,5,animsetup_enemy,draw_enemy,spr_playerface,3,spr_playerface,3,"MIRROR SOFIA",
"Sofia's reflection, who has her aggressive demeanor. She may be small, but she’s just as quick and deadly.") 

 descleft=string(_heightT)+":5'2"+" "+string(_weightT)+":110LBS"

}
 
 break;
     case 17: enemyID=173
idlestyle=1
 charinfo_set(12,spr_plantprincess_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,33,"SYNTHESA",
 "A pretty plant who rules the fantastical depths of the caverns. This party loving plant princess won’t let you leave anytime soon...")
 
   descleft=string(_ageT)+":ANCIENT\nNAT.:BRITAIN\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":190LBS"
 
   descright=+string(_likesT)+":PARTIES,ATTENTION\n"+string(_dislikesT)+":BOREDOM\n"+string(_hobbyT)+":GARDENING"
dataabilities="PLANT,MUSIC\nSINGING,FLOWERING"
 
 break;
     case 18: enemyID=174
idlestyle=1
 charinfo_set(12,spr_dragonmaiden_head,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,56,"FIONA",
 "A maiden from the clouds looking for true love. But failing to find suitors keeps her in a terrible mood.")
 
    descleft=string(_ageT)+":18\nNAT.:BRITAIN\n"+string(_heightT)+":50'0"+" "+string(_weightT)+":10000LBS"
 
   descright=+string(_likesT)+":LOVE,LOVING\n"+string(_dislikesT)+":BUGS\n"+string(_hobbyT)+":KNITTING"
dataabilities="FIRE BREATH,\nCLEANING,GARDENING"
 
 break;
     case 19: enemyID=175
idlestyle=1 hasVariants=1 hp=0.1
 charinfo_set(12,spr_scientist_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,36,"DR.FRAN",
 "The scientist who runs the factory and is Van Bad’s most loyal underling. She’ll pull out all the stops to finish the divas.")
 
 descleft=string(_ageT)+":64\nNAT.:GERMANY\n"+string(_heightT)+":3'2"+" "+string(_weightT)+":80LBS"
 
   descright=+string(_likesT)+":SCIENCE,SQUIDS\n"+string(_dislikesT)+":INCOMPETENCE\n"+string(_hobbyT)+":EXPERIMENTING"
dataabilities="SCIENCE,ROBOTICS,\nBIOLOGY,MEDICINE"
 
      if dataPal=2
	{hp=2
charinfo_set(12,spr_scientistm_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,60,"DR.FRAN",
 "With her security failing, she resorts to mutation. This berserker is the definition of 'mad science'!");
 
  descleft=string(_ageT)+":72\nNAT.:GERMANY\n"+string(_heightT)+":8'2"+" "+string(_weightT)+":350LBS"

 
   	}break;
	case 20: enemyID=176
     hasVariants=1
idlestyle=0
 charinfo_set(12,spr_dastardly_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,18,"VAN BAD",
 "The one and only head honcho, he scours the world for treasure of all kinds to add to his vast collection.")
 
   descleft=string(_ageT)+":???\nNAT.:BRITAIN\n"+string(_heightT)+":11'2"+" "+string(_weightT)+":190LBS"
 
    descright=+string(_likesT)+":???\n"+string(_dislikesT)+":???\n"+string(_hobbyT)+":???"
dataabilities="???"
 
  if dataPal=2
{enemyID=177
idlestyle=1
 charinfo_set(12,spr_dastardly2_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,58,"VAN BAD",
 "The head honcho was an illustrious vampire all along! She merely disguised herself as a cartoon villain. Now the real show can begin.")
 
   descleft=string(_ageT)+":300\nNAT.:BRITAIN\n"+string(_heightT)+":7'4"+" "+string(_weightT)+":180LBS"
 
    descright=+string(_likesT)+":TREASURE,BLOOD\n"+string(_dislikesT)+":DISORDER\n"+string(_hobbyT)+":ORGANIZING"
dataabilities="VAMPIRE,THIEVERY\nCONTROL,MECHANICS"
 
}
 break;
       case 21: enemyID=200
 charinfo_set(12,spr_painter_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,59,"???",
 "I don't understand… I have no recorded info on this subject… Who is she? What is she? Where’d she even come from?!")
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