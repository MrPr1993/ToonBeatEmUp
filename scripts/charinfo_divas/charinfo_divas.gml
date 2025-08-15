// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function charinfo_divas(){
var _ageT="AGE";
var _likesT="LIKES";
var _dislikesT="DISLIKES";
var _hobbyT="HOBBY";
var _heightT="H";
var _weightT="W";
var _abilitiesT="ABILITIES"

switch(global.Language)
{
case 1:
_ageT="EDAD";
_likesT="GUSTOS";
_dislikesT="DISGUSTOS";
_hobbyT="PASATIEMPOS";
_heightT="A";
_weightT="P";
_abilitiesT="ABILIDADES"
break;
}	

dataabilitiesB=_abilitiesT;

switch (dataSelect)
{
 case 1:
 hp=1;
descleft=string(_ageT)+":35\nNAT.:USA\n"+string(_heightT)+":5'10"+string(_weightT)+": 130LBS"
descright=+string(_ageT)+":DINING,RABBITS\n"+string(_dislikesT)+":MISFORTUNE\n"+string(_hobbyT)+":PAINTING"
  charinfo_set(1,spr_viva_stand,1,animsetup_viva,draw_enemy,spr_playerpal,0,spr_playerface,0,"VIVA VEGAS",
    "LOVELY, BUT TEMPERAMENTAL, VIVA'S SINGING IS ELECTRIFYING IN MORE WAYS THAN ONE! THOUGH HER LUCK IS... SOUR...")
	dataabilities="LIGHTNING,SING,BALLET\nCOOKING,CHESS,FILMS"
break;
  case 2:
  hp=1;
  descleft=string(_ageT)+":DRAGON\nNAT.:JAPAN\n"+string(_heightT)+":6'2"+string(_weightT)+": 100LBS"
  descright=+string(_ageT)+":SEAFOOD,CATS\n"+string(_dislikesT)+":SPICE\n"+string(_hobbyT)+":NAPPING"
    charinfo_set(2,spr_hina_stand,1,animsetup_hina,draw_enemy,spr_playerpal,0,spr_playerface,1,"HINA TATSUO",
  "HEAD TENDS TO BE IN THE CLOUDS, BUT SHE'S GOT STRETCHINESS AND A DRAGON'S FIRE ON HER SIDE! BIZARRE...")
  dataabilities="FIRE,ELASTICITY,YOGA,\nPOEMS,FISHING,PINBALL"
break;
  case 3:
  hp=1;
  descleft=string(_ageT)+":27\nNAT.:NIGERIA\n"+string(_heightT)+":6'0"+string(_weightT)+": 260LBS"
  descright=+string(_ageT)+":HELPING,OWLS\n"+string(_dislikesT)+":FROGS\n"+string(_hobbyT)+":WORKOUTS"
    charinfo_set(3,spr_bahati_stand,1,animsetup_bahati,draw_enemy,spr_playerpal,0,spr_playerface,2,"BAHATI ABARA",
	"LARGE N' HAMMY! SHE'S QUITE THE BRUISER DUE TO HER SIZE AND WRESTLING PROWESS. BUT UNDER THAT GIRTH LIES A BIG HEART.")
  dataabilities="EARTH,WRESTLING,STAMINA,\nHISTORY,QUILTS,MEDICINE"
break;
 case 4:
 hp=1;
 descleft=string(_ageT)+":28\nNAT.:MEXICO\n"+string(_heightT)+":5'2"+string(_weightT)+": 110LBS"
 descright=+string(_ageT)+":PARTIES,DOGS\n"+string(_dislikesT)+":CHEATERS\n"+string(_hobbyT)+":GYMNASTICS"
 charinfo_set(4,spr_sofia_stand,1,animsetup_sofia,draw_enemy,spr_playerpal,0,spr_playerface,3,"SOFIA MORENO",
"AS SPICY AS SHE IS DARING, SOFIA PARTIES DOWN TO TRIP UP ENEMIES WITH FOOTWORK SO FAST, YOU'D THINK SHE'S THE WIND!")
  dataabilities="WIND,ACROBATICS,SPEED,\nGARDENING,BOUNCING,BREW"
break;
}
charNO=0
}