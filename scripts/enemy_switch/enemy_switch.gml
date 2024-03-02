// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_switch(_name,_isweak){

switch(_name)
{
///Mr. Burg

case "MR.LAR": enemy_modify(my_pal_sprite,4,_name,0,0.24,0.24) enemyID=2 break;	
case "MR.ROB": enemy_modify(my_pal_sprite,6,_name,0,0.35,0.35) enemyID=3 break;	

///Mr. Teef
case "MR.LAD": enemy_modify(my_pal_sprite,4,_name,0,0.24,0.24) enemyID=6  break;	
case "MR.RON": enemy_modify(my_pal_sprite,6,_name,0,0.35,0.35) enemyID=7 break;	

///Mr. Sneak
case "MR.SLIP": enemy_modify(my_pal_sprite,1,_name,0,0.35,0.24) enemyID=11 break;	
case "MR.SLINK": enemy_modify(my_pal_sprite,2,_name,0,0.40,0.40) enemyID=12 break;	
case "MR.SIDLE": enemy_modify(my_pal_sprite,3,_name,0,0.40,0.40) enemyID=13 break;	
case "MR.PROWL": enemy_modify(my_pal_sprite,4,_name,0,0.45,0.45) enemyID=14 break;	

///Ms. Spice
case "MS.CHILL": enemy_modify(my_pal_sprite,4,"MS.CHILL",0,0.2,0.2) enemyID=16  break;

///Ms. Swing
case "MS.TRIG": enemy_modify(my_pal_sprite,4,_name,0,0.2,0.2) enemyID=21 break;
case "MS.DOMI": enemy_modify(my_pal_sprite,6,_name,0,0.2,0.2) enemyID=22 break;
case "MS.THRU": enemy_modify(my_pal_sprite,8,_name,0,0.2,0.2) enemyID=23 break;
case "MS.BRAN": enemy_modify(my_pal_sprite,10,_name,0,0.2,0.2) enemyID=24 break;


///Mr. Large
case "MR.WIDE": enemy_modify(my_pal_sprite,4,_name,0,0.4,0.4)  enemyID=26 break;	
case "MR.HUGE": enemy_modify(my_pal_sprite,6,_name,0,1,1)  enemyID=27 break;	

///Ms. Punch
case "MS.JAB": enemy_modify(my_pal_sprite,4,_name,0,0.5,0.5)  enemyID=29 break;

///Ms. Slams
case "MS.CRUSH": enemy_modify(my_pal_sprite,6,_name,0,0.8,0.8)  enemyID=31 break;

///Mr. Chip
case "MR.DALE": enemy_modify(my_pal_sprite,6,_name,0,0.8,0.8)  enemyID=33 break;

///Ms. Ki
case "MS.CHI": enemy_modify(my_pal_sprite,0,_name,0,0.35,0.35)  enemyID=35 break;
case "MS.MANA": enemy_modify(my_pal_sprite,4,_name,0,0.35,0.35)  enemyID=36 break;



///Harpy
case "ICARA": enemy_modify(my_pal_sprite,1,_name,0,0.5,0.5) enemyID=38 break;

///Zombilly
case "ZOMBOBBY": enemy_modify(my_pal_sprite,1,_name,0,0.25,0.25) enemyID=40 break;
case "MORTI": enemy_modify(my_pal_sprite,2,_name,0,0.15,0.15) enemyID=41 break;

//Zombetty
case "ZOMBELLE": enemy_modify(my_pal_sprite,1,_name,0,0.25,0.25) enemyID=43 break;
case "RIGORA": enemy_modify(my_pal_sprite,2,_name,0,0.15,0.15) enemyID=44 break;

////MAU
case "BASTET": enemy_modify(my_pal_sprite,1,_name,0,0.3,0.3) enemyID=52 break;

////Aspa
case "VIPERA": enemy_modify(my_pal_sprite,1,_name,0,0.6,0.6) enemyID=54 break;

///Usagi
case "NOUSAGI": enemy_modify(my_pal_sprite,2,_name,0,0.3,0.3) enemyID=56 break;
case "KONI": enemy_modify(my_pal_sprite,4,_name,0,0.4,0.4) enemyID=57 break;

///Sake
case "MUGI": enemy_modify(my_pal_sprite,2,_name,0,0.3,0.3) enemyID=59 break;

///ANette the puppet
case "MARI": enemy_modify(my_pal_sprite,1,_name,0,0.3,0.3) enemyID=61 break;
case "POPPI": enemy_modify(my_pal_sprite,2,_name,0,0.4,0.4) enemyID=62 break;

///Teddy Bears
//case "ROOSEVELT": enemy_modify(spr_bearpal,0,"ROOSEVELT",0,0.2,0.2) break;
case "TEDDIE": enemy_modify(my_pal_sprite,1,_name,0,0.2,0.2) enemyID=64 break;
case "YOGI": enemy_modify(my_pal_sprite,2,_name,0,0.15,0.15) enemyID=65 break;
case "FOZZI": enemy_modify(my_pal_sprite,3,_name,0,0.15,0.15) enemyID=66 break;
case "PADDY": enemy_modify(my_pal_sprite,4,_name,0,0.2,0.2) enemyID=67 break;
case "RONI": enemy_modify(my_pal_sprite,5,_name,0,0.2,0.2) enemyID=68 break;

///Fairy
case "WENDY": enemy_modify(my_pal_sprite,1,_name,0,0.5,0.5) enemyID=70 break;
case "LUSH": enemy_modify(my_pal_sprite,3,_name,0,0.4,0.4) enemyID=71 break;

///Plant
case "FAUNA": enemy_modify(my_pal_sprite,1,_name,0,0.5,0.5) enemyID=73 break;
case "FOLI": enemy_modify(my_pal_sprite,3,_name,0,0.7,0.7) enemyID=74 break;

////Pincho
case "PINCHER": enemy_modify(my_pal_sprite,1,_name,0,0.5,0.5) enemyID=76 break;

////Danza
case "RULA": enemy_modify(my_pal_sprite,1,_name,0,0.4,0.4) enemyID=78 break;
case "JAZMYN": enemy_modify(my_pal_sprite,2,_name,0,0.5,0.5) enemyID=79 break;

////Mr. Dive
case "MR.DROP": enemy_modify(my_pal_sprite,2,_name,0,0.4,0.4) enemyID=81 break;

///Douglas the fish man
case "ERIK": enemy_modify(my_pal_sprite,1,_name,0,0.4,0.4) enemyID=83 break;
case "ADAM": enemy_modify(my_pal_sprite,5,_name,0,0.4,0.4) enemyID=84 break;

////Sirena the mermaid
case "MARINA": enemy_modify(my_pal_sprite,1,_name,0,0.3,0.3) enemyID=86 break;
case "SKYLA": enemy_modify(my_pal_sprite,6,_name,0,0.3,0.3) enemyID=87 break;


////Martia
case "INVA": enemy_modify(my_pal_sprite,1,_name,0,0.3,0.3) enemyID=89 break;
case "EXTA": enemy_modify(my_pal_sprite,6,_name,0,0.3,0.3) enemyID=90 break;

///Alien robot
case "DESTRON": enemy_modify(my_pal_sprite,1,_name,0,0.4,0.4) enemyID=92 break;

////Ojo
case "VER": enemy_modify(my_pal_sprite,1,_name,0,0.4,0.4) enemyID=94 break;

///Gobert
case "GOHNNY": enemy_modify(my_pal_sprite,1,_name,0,0.4,0.4) enemyID=96 break;

////Shroom gal
case "CERANA": enemy_modify(my_pal_sprite,1,_name,0,0.25,0.25) enemyID=98 break;
case "ELEGANS": enemy_modify(my_pal_sprite,2,_name,0,0.3,0.3) enemyID=99 break;
case "PHOLIOTA": enemy_modify(my_pal_sprite,3,_name,0,0.4,0.4) enemyID=100 break;

////Slime Girl
case "CHERRY": enemy_modify(my_pal_sprite,1,_name,0,0.5,0.5) enemyID=102 break;
case "BLUEBERRY": enemy_modify(my_pal_sprite,2,_name,0,0.35,0.35) enemyID=103 break;
case "BANANA": enemy_modify(my_pal_sprite,3,_name,0,0.4,0.4) enemyID=104 break;
case "CALCIUM": enemy_modify(my_pal_sprite,4,_name,0,0.3,0.3) enemyID=105 break;
case "CHEMI": enemy_modify(my_pal_sprite,5,_name,0,0.4,0.4) enemyID=106 break;

///Snow Girl
case "EVA": enemy_modify(my_pal_sprite,1,_name,0,0.6,0.6) enemyID=108 break;
case "UNDA": enemy_modify(my_pal_sprite,2,_name,0,0.6,0.6) enemyID=109 break;


////Nurse gal
case "DR.SULF": enemy_modify(my_pal_sprite,2,_name,0,0.2,0.2) enemyID=111 break;
case "DR.MONIA": enemy_modify(my_pal_sprite,6,_name,0,0.2,0.2) enemyID=112 break;
case "DR.GLUCO": enemy_modify(my_pal_sprite,4,_name,0,0.4,0.4) enemyID=113 break;



///O-Polis the Robot
case "METR-A": enemy_modify(my_pal_sprite,3,_name,0,0.8,0.8) enemyID=115 break;

}

////This will be used for spawners such as the ambushers
if _isweak {hp=0.00001 maxhp=0.00001}

}