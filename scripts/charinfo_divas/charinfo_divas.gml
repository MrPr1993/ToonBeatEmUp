// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function charinfo_divas(){
switch (dataSelect)
{
 case 1:
 hp=1;
descleft="AGE:35\nNAT.:USA\nH: 5'10\nW: 130LBS"
descright="LIKES:DINING,RABBITS\nDISLIKES:MISFORTUNE\nHOBBY:PAINTING"
  charinfo_set(1,spr_viva_stand,1,animsetup_viva,draw_enemy,spr_playerpal,0,spr_playerface,0,"VIVA VEGAS",
    "LOVELY, BUT TEMPERAMENTAL, VIVA'S SINGING IS ELECTRIFYING IN MORE WAYS THAN ONE! THOUGH HER LUCK IS... SOUR...")
	dataabilities="LIGHTNING,SING,BALLET\nCOOKING,CHESS,FILMS"
break;
  case 2:
  hp=1;
  descleft="AGE:DRAGON\nNAT.:JAPAN\nH: 6'2\nW: 100LBS"
  descright="LIKES:SEAFOOD,CATS\nDISLIKES:SPICE\nHOBBY:NAPPING"
    charinfo_set(2,spr_hina_stand,1,animsetup_hina,draw_enemy,spr_playerpal,0,spr_playerface,1,"HINA TATSUO",
  "HEAD TENDS TO BE IN THE CLOUDS, BUT SHE'S GOT STRETCHINESS AND A DRAGON'S FIRE ON HER SIDE! BIZARRE...")
  dataabilities="FIRE,ELASTICITY,YOGA,\nPOEMS,FISHING,PINBALL"
break;
  case 3:
  hp=1;
  descleft="AGE:27\nNAT.:NIGERIA\nH: 6'0\nW: 260LBS"
  descright="LIKES:HELPING,OWLS\nDISLIKES:FROGS\nHOBBY:WORKOUTS"
    charinfo_set(3,spr_bahati_stand,1,animsetup_bahati,draw_enemy,spr_playerpal,0,spr_playerface,2,"BAHATI ABARA",
	"LARGE N' HAMMY! SHE'S QUITE THE BRUISER DUE TO HER SIZE AND WRESTLING PROWESS. BUT UNDER THAT GIRTH LIES A BIG HEART.")
  dataabilities="EARTH,WRESTLING,STAMINA,\nHISTORY,QUILTS,MEDICINE"
break;
 case 4:
 hp=1;
 descleft="AGE:28\nNAT.:MEXICO\nH: 5'2\nW: 110LBS"
 descright="LIKES:PARTIES,DOGS\nDISLIKES:CHEATERS\nHOBBY:GYMNASTICS"
 charinfo_set(4,spr_sofia_stand,1,animsetup_sofia,draw_enemy,spr_playerpal,0,spr_playerface,3,"SOFIA MORENO",
"AS SPICY AS SHE IS DARING, SOFIA PARTIES DOWN TO TRIP UP ENEMIES WITH FOOTWORK SO FAST, YOU'D THINK SHE'S THE WIND!")
  dataabilities="WIND,ACROBATICS,SPEED,\nGARDENING,BOUNCING,BREW"
break;
}
charNO=0
}