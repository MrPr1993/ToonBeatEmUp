// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function charinfo_bosses(){
switch (dataSelect)
{
  case 1:
  hasVariants=1
  if dataPal=1
 charinfo_set(11,spr_hwolf_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,9,"LADY WOLF",
 "A shady woman who works with the thieves to steal the treasures of the divas. And she appears to be hiding something else...")
 if dataPal=2
	  charinfo_set(11,spr_wolfita_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,5,"LADY WOLF",
 "BIG, RUDE AND NASTY,\n"+
	 "THESE GUYS CHARGE AT\n"+
	 "YOU AND EVEN TRY TO\n"+
	 "SQUASH YOU WITH THEIR\n"+ 
	 "REAR! DON'T GET\n"+
	 "FLATTENED!")

break;
  case 2:
 charinfo_set(12,spr_twoheads_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,35,"DOLORES",
 "???") break;
   case 3:
 charinfo_set(12,spr_franki_stand,1,animsetup_enemy,draw_enemy,spr_boxerpal,0,spr_enemyface,10,"CAPTAIN ROSY",
 "???") break;
   case 4:
 charinfo_set(12,spr_harpy_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,34,"HARPILDA",
 "???") break;
   case 5:
 charinfo_set(12,spr_ghost_stand,1,animsetup_enemy,ghost_effect,spr_enemypal,0,spr_enemyface,17,"ANNAMARI",
 "???") break;
   case 6:
 charinfo_set(12,spr_pharaoh_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,11,"HATHOR",
 "???") break;
   case 7:
     hasVariants=1
  if dataPal=1
 charinfo_set(12,spr_oni_stand,2,animsetup_enemy,draw_enemy,spr_ninjapal,0,spr_enemyface,31,"FUKUKIJO",
 "???")
   if dataPal=2
 charinfo_set(12,spr_oni_stand,2,animsetup_enemy,draw_enemy,spr_ninjapal,7,spr_enemyface,31,"SHOKIJO",
 "???")
 break;
   case 8:
 charinfo_set(12,spr_witch_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,32,"MS.PUNCH",
 "???") break;
   case 9:
 charinfo_set(12,spr_clown_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,38,"MS.PUNCH",
 "???") break;
    case 10:
 charinfo_set(12,spr_clown_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,39,"MS.PUNCH",
 "???") break;
   case 11:
 charinfo_set(12,spr_octopus_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,40,"MS.PUNCH",
 "???") break;
   case 12:
 charinfo_set(12,spr_seaweed_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,41,"MS.PUNCH",
 "???") break;
   case 13:
 charinfo_set(12,spr_boxer_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,0,"MS.PUNCH",
 "???") break;
}
}