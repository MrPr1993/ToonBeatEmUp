/// @description Insert description here
// You can write your code in this editor


alarm[0]=200+choose(16,32,48,64,80,98,128)

if oControl.p1.anim!=50
and oControl.p2.anim!=50
and oControl.p3.anim!=50
and oControl.p4.anim!=50
{
if arrayamount=0 {arrayamount=2;}

var enemyset=choose(oEnemy1,oEnemy1B);

var _enemyadd0=choose(oEnemy1,oEnemy1B);
var _enemyadd1=oSneak;
var _enemyadd2=choose(_enemyadd0,oFemBurglar,oFatBurglar,oWrestler);
var _enemyadd3=choose(oCowboy,oSwing,oDiver,oRobot);
var _enemyadd4=choose(oCatman,oNinjaBun,oSamurai,oCobra);
var _enemyadd5=choose(oWrestler,oBoxer,oFatBurglar);
var _enemyadd6=choose(oPlant,oBeeLady,oZombieMan,oZombieWoman,oSkeleton);
var _enemyadd7=choose(oAnimatedObject,oPainting,oHarpyE,oKnight,oRobotIce,oRobotBurn);
var _enemyadd8=choose(oBear,oClown,oMonk,oLobster,oHieroglyph);
var _enemyadd9=choose(oSiren,oMerman,oFairy,oDancer,oMartian,oAlienRobot);
var _enemyadd10=choose(oGoblin,oShroom);
var _enemyadd11=choose(oSlime,oSnowGirl);
var _enemyadd12=choose(oNurse,oLadybot);
var _enemyadd13=oEnemy1;
var _enemyadd14=oEnemy1;
var _enemyadd15=oEnemy1;
var _enemyadd16=oEnemy1;
var _enemyadd17=oEnemy1;
var _enemyadd18=oEnemy1;
var _enemyadd19=oEnemy1;
var _enemyadd20=oEnemy1;

if enemiesdefeated>2 enemyset=choose(oEnemy1,oEnemy1B,_enemyadd1)
if enemiesdefeated>4 enemyset=choose(oEnemy1,oEnemy1B,_enemyadd1,_enemyadd2)
if enemiesdefeated>8 enemyset=choose(oEnemy1,oEnemy1B,_enemyadd1,_enemyadd2,_enemyadd3)
if enemiesdefeated>10 enemyset=choose(oEnemy1,oEnemy1B,_enemyadd1,_enemyadd2,_enemyadd3,_enemyadd4)
if enemiesdefeated>15 enemyset=choose(oEnemy1,oEnemy1B,_enemyadd1,_enemyadd2,_enemyadd3,_enemyadd4,_enemyadd5)
if enemiesdefeated>20 enemyset=choose(oEnemy1,oEnemy1B,_enemyadd1,_enemyadd2,_enemyadd3,_enemyadd4,_enemyadd5,_enemyadd6)
if enemiesdefeated>25 enemyset=choose(oEnemy1,oEnemy1B,_enemyadd1,_enemyadd2,_enemyadd3,_enemyadd4,_enemyadd5,_enemyadd6,_enemyadd7)
if enemiesdefeated>30 enemyset=choose(oEnemy1,oEnemy1B,_enemyadd1,_enemyadd2,_enemyadd3,_enemyadd4,_enemyadd5,_enemyadd6,_enemyadd7,_enemyadd8)
if enemiesdefeated>35 enemyset=choose(oEnemy1,oEnemy1B,_enemyadd1,_enemyadd2,_enemyadd3,_enemyadd4,_enemyadd5,_enemyadd6,_enemyadd7,_enemyadd8,_enemyadd9)
if enemiesdefeated>40 enemyset=choose(oEnemy1,oEnemy1B,_enemyadd1,_enemyadd2,_enemyadd3,_enemyadd4,_enemyadd5,_enemyadd6,_enemyadd7,_enemyadd8,_enemyadd9,_enemyadd10)
if enemiesdefeated>45 enemyset=choose(oEnemy1,oEnemy1B,_enemyadd1,_enemyadd2,_enemyadd3,_enemyadd4,_enemyadd5,_enemyadd6,_enemyadd7,_enemyadd8,_enemyadd9,_enemyadd10,_enemyadd11)
if enemiesdefeated>50 enemyset=choose(oEnemy1,oEnemy1B,_enemyadd1,_enemyadd2,_enemyadd3,_enemyadd4,_enemyadd5,_enemyadd6,_enemyadd7,_enemyadd8,_enemyadd9,_enemyadd10,_enemyadd11,_enemyadd12)

//if enemiesdefeated>12 if useonce=0 {useonce=1 enemyset=oBoss1a alarm[0]+=100}
//if enemiesdefeated>18 if useonce=1 {useonce=2 enemyset=oRobot alarm[0]+=100}
//if enemiesdefeated>24 if useonce=2 if !instance_exists(oBoss1a) {useonce=3 enemyset=oBoss1 alarm[0]+=200}

if enemyset=oFemBurglar if twinswitch=2 {enemyset=choose(oEnemy1,oEnemy1B,_enemyadd1) twinswitch=0}

en=instance_create_depth(choose(-96,320+96),176+choose(16,32,48,64,96,128),-1,enemyset)
with en
{
isBoss=0
specialBossState=0
}

if enemyset=oFemBurglar 
{
if twinswitch=1 with en {enemy_switch("MS.CHILL",0)}	

if twinswitch=2 twinswitch=0 else twinswitch+=1;
}

if enemiesdefeated>1 with en
{
var _enswitch1="NULL";
var _enswitch2="NULL";
var _enswitch3="NULL";
var _enswitch4="NULL";
var _enswitch5="NULL";
var _enswitch6="NULL";

switch(object_index)
{
case oEnemy1:
if name="MR.ROB"
{
_enswitch1="MR.LAR"; _enswitch2="MR.LAR"; 
if oArenaSurvival.enemiesdefeated>45 {_enswitch3="MR.ROB" _enswitch4="MR.ROB"};
}
break;

case oEnemy1B:
_enswitch1="MR.LAD";
if oArenaSurvival.enemiesdefeated>45 _enswitch2="MR.RON";
break;

case oSneak:
_enswitch1="MR.SLIP";
_enswitch2="MR.SLINK";
_enswitch3="MR.SIDLE";

if oArenaSurvival.enemiesdefeated>45 _enswitch5="MR.PROWL";
break;

case oSwing:
_enswitch1=choose(name,"MS.TRIG","MS.DOMI","MS.BOOM","MS.BRAN");
_enswitch2=_enswitch1;
_enswitch3=_enswitch1;
_enswitch4=_enswitch1;
_enswitch5=_enswitch1;
_enswitch6=_enswitch1;

if _enswitch1="MS.TRIG" weapon_add("HANDGUN")
if _enswitch1="MS.DOMI" weapon_add("WHIP")
if _enswitch1="MS.BOOM" weapon_add("DYNAMITE")
if _enswitch1="MS.BRAN" weapon_add("KNIFE")

break;

case oFatBurglar:
_enswitch1="MR.WIDE";
_enswitch2=_enswitch1;
_enswitch3=_enswitch1;

if oArenaSurvival.enemiesdefeated>45 _enswitch6="MR.HUGE";
break;

case oBoxer:
_enswitch1="MS.JAB";
_enswitch2=_enswitch1;
_enswitch3=_enswitch1;
break;

case oWrestler:
_enswitch1="MS.CRUSH";
_enswitch2=_enswitch1;
_enswitch3=_enswitch1;
break;

case oStrongBurg:
_enswitch1="MR.DALE";
_enswitch2=_enswitch1;
_enswitch3=_enswitch1;
break;

case oMonk:
_enswitch1="MS.CHI";
_enswitch2=_enswitch1;
_enswitch3="MS.CHI";
_enswitch4=_enswitch3;
_enswitch5="MS.MANA";
_enswitch6=_enswitch5;
break;

case oHarpyE:
_enswitch1="ICARA";
_enswitch2=_enswitch1;
_enswitch3=_enswitch1;
break;

case oZombieMan:
_enswitch1="ZOMBOBBY";
_enswitch2="MORTI";
_enswitch3=_enswitch1;
_enswitch4=_enswitch2;
break;

case oZombieWoman:
_enswitch1="ZOMBELLE";
_enswitch2="RIGORA";
_enswitch3=_enswitch1;
_enswitch4=_enswitch2;
break;

case oSkeleton:
_enswitch1="SKELIE";
_enswitch2=_enswitch1;
_enswitch3=_enswitch1;
break;

case oCatman:
_enswitch1="BASTET";
_enswitch2=_enswitch1;
_enswitch3=_enswitch1;
break;

case oCobra:
_enswitch1="VIPERA";
_enswitch2=_enswitch1;
_enswitch3=_enswitch1;
break;

case oNinjaBun:
_enswitch1=name;
_enswitch2=_enswitch1;
_enswitch3="NOUSAGI";
_enswitch4=_enswitch3;
_enswitch5="KONI";
_enswitch6=_enswitch5;
break;

case oSamurai:
_enswitch1="MUGI";
_enswitch2=_enswitch1;
_enswitch3=_enswitch1;
break;

case oClown:
_enswitch1=choose(name,"MARI","POPPI");
_enswitch2=_enswitch1;
_enswitch3=_enswitch1;
_enswitch4=_enswitch1;
_enswitch5=_enswitch1;
_enswitch6=_enswitch1;

weapon_add_double("JUGGLE")
if _enswitch1="MARI" weapon_add_double("TWIRL")

break;

case oBear:
_enswitch1=choose(name,"TEDDIE","YOGI","FOZZI","PADDY","MONO");
_enswitch2=_enswitch1;
_enswitch3=_enswitch1;
_enswitch4=_enswitch1;
_enswitch5=_enswitch1;
_enswitch6=_enswitch1;
break;

case oFairy:
_enswitch1=name;
_enswitch2=_enswitch1;
_enswitch3="WENDY";
_enswitch4=_enswitch3;
_enswitch5="LUSH";
_enswitch6=_enswitch5;
break;

case oPlant:
_enswitch1=name;
_enswitch2=_enswitch1;
_enswitch3="PETI";
_enswitch4=_enswitch3;
_enswitch5="FOLI";
_enswitch6=_enswitch5;
break;

case oBeeLady:
_enswitch1=name;
_enswitch2=_enswitch1;
_enswitch3="HONEYDEW";
_enswitch4=_enswitch3;
_enswitch5="WASPELLA";
_enswitch6=_enswitch5;
break;

case oLobster:
_enswitch1="PINCHER";
_enswitch2=_enswitch1;
_enswitch3=_enswitch1;
break;

case oDancer:
_enswitch1=name;
_enswitch2=_enswitch1;
_enswitch3="RULA";
_enswitch4=_enswitch3;
_enswitch5="JAZMYN";
_enswitch6=_enswitch5;
break;

case oDiver:
_enswitch1=choose(name,"MR.DROP");
_enswitch2=_enswitch1;
_enswitch3=_enswitch1;
_enswitch4=_enswitch1;
_enswitch5=_enswitch1;
_enswitch6=_enswitch1;
if _enswitch1="MR.DROP" weapon_add("HARPOONGUN")

break;

case oMerman:
_enswitch1=choose(name,"ERIK","ADAM");
_enswitch2=_enswitch1;
_enswitch3=_enswitch1;
_enswitch4=_enswitch1;
_enswitch5=_enswitch1;
_enswitch6=_enswitch1;

if _enswitch1=name weapon_add("SPEAR")
if _enswitch1="ERIK" weapon_add("TRIDENT")

break;

case oSiren:
_enswitch1=choose(name,"MARINA","SKYLA");
_enswitch2=_enswitch1;
_enswitch3=_enswitch1;
_enswitch4=_enswitch1;
_enswitch5=_enswitch1;
_enswitch6=_enswitch1;
break;

case oMartian:
_enswitch1=choose(name,"INVA","EXTA");
_enswitch2=_enswitch1;
_enswitch3=_enswitch1;
_enswitch4=_enswitch1;
_enswitch5=_enswitch1;
_enswitch6=_enswitch1;
break;

case oAlienRobot:
_enswitch1=choose(name,"DESTRON");
_enswitch2=_enswitch1;
_enswitch3=_enswitch1;
_enswitch4=_enswitch1;
_enswitch5=_enswitch1;
_enswitch6=_enswitch1;
break;

case oSpacer:
_enswitch1=choose(name,"VER");
_enswitch2=_enswitch1;
_enswitch3=_enswitch1;
_enswitch4=_enswitch1;
_enswitch5=_enswitch1;
_enswitch6=_enswitch1;
break;

case oGoblin:
_enswitch1=choose(name,"GOHNNY");
_enswitch2=_enswitch1;
_enswitch3=_enswitch1;
_enswitch4=_enswitch1;
_enswitch5=_enswitch1;
_enswitch6=_enswitch1;

if _enswitch1="GOHNNY" weapon_add("PICKAXE")

break;

case oShroom:
_enswitch1=choose(name,"CERANA","ELEGANS","PHOLIOTA");
_enswitch2=_enswitch1;
_enswitch3=_enswitch1;
_enswitch4=_enswitch1;
_enswitch5=_enswitch1;
_enswitch6=_enswitch1;
break;

case oSlime:
_enswitch1=choose(name,"CHERRY","BLUEBERRY","BANANA","CALCIUM","CHEMI");
_enswitch2=_enswitch1;
_enswitch3=_enswitch1;
_enswitch4=_enswitch1;
_enswitch5=_enswitch1;
_enswitch6=_enswitch1;
break;

case oSnowGirl:
_enswitch1=choose(name,"EVA","UNDA");
_enswitch2=_enswitch1;
_enswitch3=_enswitch1;
_enswitch4=_enswitch1;
_enswitch5=_enswitch1;
_enswitch6=_enswitch1;
break;

case oNurse:
_enswitch1=choose(name,"DR.SULF","DR.MONIA","DR.GLUCO");
_enswitch2=_enswitch1;
_enswitch3=_enswitch1;
_enswitch4=_enswitch1;
_enswitch5=_enswitch1;
_enswitch6=_enswitch1;
break;

case oLadybot:
_enswitch1=choose(name,"METR-A");
_enswitch2=_enswitch1;
_enswitch3=_enswitch1;
_enswitch4=_enswitch1;
_enswitch5=_enswitch1;
_enswitch6=_enswitch1;
break;

case oCowboy:
_enswitch1=choose(name,"BUCK");
_enswitch2=_enswitch1;
_enswitch3=_enswitch1;
_enswitch4=_enswitch1;
_enswitch5=_enswitch1;
_enswitch6=_enswitch1;
break;

case oKnight:
_enswitch1=choose(name,"DANIEL");
_enswitch2=_enswitch1;
_enswitch3=_enswitch1;
_enswitch4=_enswitch1;
_enswitch5=_enswitch1;
_enswitch6=_enswitch1;

if _enswitch1="DANIEL" weapon_add("CLUB")

break;

case oPainting:
_enswitch1=choose(name,"ANNIE","FREDERICK");
_enswitch2=_enswitch1;
_enswitch3=_enswitch1;
_enswitch4=_enswitch1;
_enswitch5=_enswitch1;
_enswitch6=_enswitch1;

if _enswitch1="ANNIE" {paintingSpr=spr_painting2 enemyID=49}
if _enswitch1="FREDERICK" {paintingSpr=spr_painting3 enemyID=50}

break;

case oHieroglyph:
_enswitch1=choose(name, "SCARAB","ANKH","ANUBIS");
_enswitch2=_enswitch1;
_enswitch3=_enswitch1;
_enswitch4=_enswitch1;
_enswitch5=_enswitch1;
_enswitch6=_enswitch1;

if _enswitch1="SCARAB" {paintingSpr=spr_heys enemyID=126 }
if _enswitch1="ANKH" {paintingSpr=spr_heyankh enemyID=127}
if _enswitch1="ANUBIS" {paintingSpr=spr_heya enemyID=128 }
break;

}





enemy_switch(choose(name,_enswitch1,_enswitch2,_enswitch3,_enswitch4,_enswitch5,_enswitch6),0);

}


}


