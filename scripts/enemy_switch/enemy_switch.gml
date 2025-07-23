// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_switch(_name,_isweak){

switch(_name)
{
///Mr. Burg

case "MR.LAR": enemy_modify(spr_enemypal,4,_name,0,0.24,0.24) enemyID=2 break;	
case "MR.ROB": enemy_modify(spr_enemypal,6,_name,0,0.35,0.35) enemyID=3 break;	

///Mr. Teef
case "MR.LAD": enemy_modify(spr_enemypal,4,_name,0,0.24,0.24) enemyID=6  break;	
case "MR.RON": enemy_modify(spr_enemypal,6,_name,0,0.35,0.35) enemyID=7 break;	

///Mr. Sneak
case "MR.SLIP": enemy_modify(spr_sneakpal,1,_name,0,0.35,0.24) enemyID=11 break;	
case "MR.SLINK": enemy_modify(spr_sneakpal,2,_name,0,0.40,0.40) enemyID=12 break;	
case "MR.SIDLE": enemy_modify(spr_sneakpal,3,_name,0,0.40,0.40) enemyID=13 break;	
case "MR.PROWL": enemy_modify(spr_sneakpal,4,_name,0,0.45,0.45) enemyID=14 break;	

///Ms. Spice
case "MS.CHILL": enemy_modify(spr_enemypal,4,"MS.CHILL",0,0.2,0.2) enemyID=16  break;

///Ms. Swing
case "MS.TRIG": enemy_modify(spr_swingpal,4,_name,0,0.2,0.2) enemyID=21 break;
case "MS.DOMI": enemy_modify(spr_swingpal,6,_name,0,0.4,0.4) enemyID=22 break;
case "MS.BOOM": enemy_modify(spr_swingpal,8,_name,0,0.2,0.2) enemyID=23 break;
case "MS.BRAN": enemy_modify(spr_swingpal,10,_name,0,0.3,0.3) enemyID=24 break;


///Mr. Large
case "MR.WIDE": enemy_modify(spr_enemypal,4,_name,0,0.4,0.4)  enemyID=26 break;	
case "MR.HUGE": enemy_modify(spr_enemypal,6,_name,0,1,1)  enemyID=27 break;	

///Ms. Punch
case "MS.JAB": enemy_modify(spr_boxerpal,4,_name,0,0.5,0.5)  enemyID=29 break;

///Ms. Slams
case "MS.CRUSH": enemy_modify(spr_ninjapal,6,_name,0,0.8,0.8)  enemyID=31 break;

///Mr. Chip
case "MR.DALE": enemy_modify(spr_enemypal,12,_name,0,0.8,0.8)  enemyID=33 break;

///Ms. Ki
case "MS.CHI": enemy_modify(spr_ninjapal,0,_name,0,0.5,0.5)  enemyID=35 break;
case "MS.MANA": enemy_modify(spr_ninjapal,4,_name,0,0.7,0.7)  enemyID=36 break;



///Harpy
case "ICARA": enemy_modify(spr_zombiepal,2,_name,0,0.5,0.5) enemyID=38 break;

///Zombilly
case "ZOMBOBBY": enemy_modify(spr_zombiepal,1,_name,0,0.25,0.25) enemyID=40 break;
case "MORTI": enemy_modify(spr_zombiepal,2,_name,0,0.15,0.15) enemyID=41 break;

//Zombetty
case "ZOMBELLE": enemy_modify(spr_zombiepal,1,_name,0,0.3,0.3) enemyID=43 break;
case "RIGORA": enemy_modify(spr_zombiepal,2,_name,0,0.15,0.15) enemyID=44 break;

///Skeleton
case "SKELIE": enemy_modify(spr_mummypal,1,_name,0,0.3,0.3) enemyID=46 break;

////MAU
case "BASTET": enemy_modify(spr_mummypal,1,_name,0,0.3,0.3) enemyID=52 break;

////Aspa
case "VIPERA": enemy_modify(spr_mummypal,1,_name,0,0.8,0.8) enemyID=54 break;

///Usagi
case "NOUSAGI": enemy_modify(spr_ninjapal,2,_name,0,0.2,0.2) enemyID=56 break;
case "KONI": enemy_modify(spr_ninjapal,4,_name,0,0.7,0.7) enemyID=57 break;

///Sake
case "MUGI": enemy_modify(spr_ninjapal,2,_name,0,0.3,0.3) enemyID=59 break;

///ANette the puppet
case "MARI": enemy_modify(spr_bearpal,1,_name,0,0.3,0.3) enemyID=61 break;
case "POPPI": enemy_modify(spr_bearpal,2,_name,0,0.4,0.4) enemyID=62 break;

///Teddy Bears
//case "ROOSEVELT": enemy_modify(spr_bearpal,0,"ROOSEVELT",0,0.2,0.2) break;
case "TEDDIE": enemy_modify(spr_bearpal,1,_name,0,0.2,0.2) enemyID=64 break;
case "YOGI": enemy_modify(spr_bearpal,2,_name,0,0.2,0.2) enemyID=65 break;
case "FOZZI": enemy_modify(spr_bearpal,3,_name,0,0.2,0.2) enemyID=66 break;
case "PADDY": enemy_modify(spr_bearpal,4,_name,0,0.2,0.2) enemyID=67 break;
case "MONO": enemy_modify(spr_bearpal,5,_name,0,0.2,0.2) enemyID=68 break;

///Fairy
case "WENDY": enemy_modify(spr_fairypal,1,_name,0,0.5,0.5) enemyID=70 break;
case "LUSH": enemy_modify(spr_fairypal,3,_name,0,0.4,0.4) enemyID=71 break;

///Plant
case "PETI": enemy_modify(spr_plantpal,1,_name,0,0.5,0.5) enemyID=73 break;
case "FOLI": enemy_modify(spr_plantpal,3,_name,0,0.7,0.7) enemyID=74 break;

///Beeatrice
case "HONEYDEW": enemy_modify(spr_dancerpal,4,_name,0,0.6,0.6) enemyID=118 break;
case "WASPELLA": enemy_modify(spr_dancerpal,3,_name,0,0.6,0.6) enemyID=119 break;
////Pincho
case "PINCHER": enemy_modify(spr_lobsterpal,1,_name,0,0.5,0.5) enemyID=76 break;

////Danza
case "RULA": enemy_modify(spr_dancerpal,1,_name,0,0.4,0.4) enemyID=78 break;
case "JAZMYN": enemy_modify(spr_dancerpal,2,_name,0,0.5,0.5) enemyID=79 break;

////Mr. Dive
case "MR.DROP": enemy_modify(spr_ninjapal,6,_name,0,0.4,0.4) enemyID=81 break;

///Douglas the fish man
case "ERIK": enemy_modify(spr_zombiepal,1,_name,0,0.4,0.4) enemyID=83 break;
case "ADAM": enemy_modify(spr_zombiepal,5,_name,0,0.4,0.4) enemyID=84 break;

////Sirena the mermaid
case "MARINA": enemy_modify(spr_zombiepal,1,_name,0,0.3,0.3) enemyID=86 break;
case "SKYLA": enemy_modify(spr_zombiepal,6,_name,0,0.3,0.3) enemyID=87 break;


////Martia
case "INVA": enemy_modify(spr_zombiepal,1,_name,0,0.3,0.3) enemyID=89 break;
case "EXTA": enemy_modify(spr_zombiepal,6,_name,0,0.3,0.3) enemyID=90 break;

///Alien robot
case "DESTRON": enemy_modify(spr_robotpal,1,_name,0,0.4,0.4) enemyID=92 break;

////Ojo
case "VER": enemy_modify(spr_fairypal,1,_name,0,0.4,0.4) enemyID=94 break;

///Gobert
case "GOHNNY": enemy_modify(spr_zombiepal,1,_name,0,0.4,0.4) enemyID=96 break;

////Shroom gal
case "CERANA": enemy_modify(spr_playerpal,1,_name,0,0.25,0.25) enemyID=98 break;
case "ELEGANS": enemy_modify(spr_playerpal,2,_name,0,0.3,0.3) enemyID=99 break;
case "PHOLIOTA": enemy_modify(spr_playerpal,3,_name,0,0.4,0.4) enemyID=100 break;

////Slime Girl
case "CHERRY": enemy_modify(spr_slimepal,1,_name,0,0.5,0.5) enemyID=102 break;
case "BLUEBERRY": enemy_modify(spr_slimepal,2,_name,0,0.35,0.35) enemyID=103 break;
case "BANANA": enemy_modify(spr_slimepal,3,_name,0,0.4,0.4) enemyID=104 break;
case "CALCIUM": enemy_modify(spr_slimepal,4,_name,0,0.3,0.3) enemyID=105 break;
case "CHEMI": enemy_modify(spr_slimepal,5,_name,0,0.4,0.4) enemyID=106 break;

///Snow Girl
case "EVA": enemy_modify(spr_zombiepal,1,_name,0,0.5,0.5) enemyID=108 break;
case "UNDA": enemy_modify(spr_zombiepal,2,_name,0,0.6,0.6) enemyID=109 break;


////Nurse gal
case "DR.SULF": enemy_modify(spr_ninjapal,2,_name,0,0.2,0.2) enemyID=111 break;
case "DR.MONIA": enemy_modify(spr_ninjapal,6,_name,0,0.2,0.2) enemyID=112 break;
case "DR.GLUCO": enemy_modify(spr_ninjapal,10,_name,0,0.4,0.4) enemyID=113 break;



///O-Polis the Robot
case "METR-A": enemy_modify(spr_robotpal,3,_name,0,0.8,0.8) enemyID=115 break;

///Cowboy
case "BUCK": enemy_modify(spr_ninjapal,6,_name,0,0.5,0.5) enemyID=131 break;
case "PESO": enemy_modify(spr_robotpal,3,_name,0,0.8,0.8) enemyID=132 break; ///Unused

///Knight
case "DANIEL": enemy_modify(spr_robotpal,1,_name,0,0.8,0.8) enemyID=134 break;
case "ARTIE": enemy_modify(spr_robotpal,2,_name,0,0.8,0.8) enemyID=135 break; ///Unused


////////Boss only
///Water Prince
case "W.PRINCE": enemy_modify(spr_zombiepal,7,_name,0,0.5,0.5) isBoss=0  enemyID=166 break;

}

////This will be used for spawners such as the ambushers
if _isweak {hp=0.01 maxhp=0.01}

}