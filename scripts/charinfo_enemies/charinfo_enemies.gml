// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function charinfo_enemies(){
switch (dataSelect) 
{
  case 1:
  hp=0.2
  charinfo_set(5,spr_burglar_stand,3,animsetup_burglar,draw_enemy,spr_enemypal,2,spr_enemyface,1,"MR.BURG",
"RUN OF THE MILL BURGLAR. THIS CHUMP'S FODDER, BUT HIS KICK'LL SEND YOU ROLLING SO WATCH OUT!")
break;
  case 2:
    hp=0.2
   charinfo_set(6,spr_burglarB_stand,3,animsetup_burglar,draw_enemy,spr_enemypal,2,spr_enemyface,20,"MR.TEEF",
"ANOTHER BURGLAR, WHO'S ALSO ANOTHER DUMMY FODDER. BUT HE MAY SHOW UP WITH A WEAPON TO STRIKE YOU WITH! STILL A CHUMP.")
break;

 case 3:
   hp=0.4
   charinfo_set(7,spr_sneak_stand,3,animsetup_burglar,draw_enemy,spr_sneakpal,0,spr_enemyface,6,"MR.SNEAK",
"THIS TRENCHCOAT JERK SLIDES AROUND TO TRIP YOU UP AND TRIES TO GRAB YOU. WORST OF ALL? THEY THROW BOMBS!")

break;
  case 4:
   charinfo_set(8,spr_femburglar_stand,2,animsetup_femburglar,draw_enemy,spr_enemypal,2,spr_enemyface,2,"MR.CHILL",
   "")
     hp=0.2
if dataPal=1
{
name="MS.CHILL" current_pal=2
desc="COMING IN PAIRS, SHE'LL PESTER YOU WITH THEIR LONG LEGS AND KNOWS THE ART OF DEFENSE AGAINST YOUR ATTACKS!"
}
if dataPal=2
{
name="MS.SPICE" current_pal=4
desc="COMING IN PAIRS SHE'LL ANNOY YOU WITH WITH LEGS TO KICK YOU AND KNOWS ENOUGH DEFENSE TO GUARD YOUR ATTACKS."
}

break;
  case 5:
   charinfo_set(9,spr_robot_stand,2,animsetup_robot,draw_robot,spr_robotpal,2,spr_enemyface,4,"MR.BOLTS",
   "")
     hp=1
 if dataPal=1
{current_pal=0
	robotArmRsprite=spr_robot_arm
	name="MR.BOLTS"
desc="THIS BIG, FANCY BOT COMES EQUIPPED WITH A SHOCKING LASER AND STRONG, BUT DETACHABLE ARMS."
	 
}
if dataPal=2
{current_pal=2
	robotArmRsprite=spr_robot_flame
	name="MR.BURNS"
desc="THIS LARGE ROBOT WILL BURN YOU TO DUST WITH THEIR TRUSY, BUT DETACHABLE FLAMETHROWER."
}
if dataPal=3
{current_pal=1
	name="MR.COLD"
desc="THIS HUGE MACHIN CAN SEND CHILLS DOWN YOUR SPINE B FREEZING YOU WITH THEIR ICE GUN! FROSTY!"
}  
   
break;
  case 6:
   charinfo_set(10,spr_swing_stand,2,animsetup_swing,draw_swing,spr_enemypal,2,spr_enemyface,7,"MS.SWING",
   "THIS GIGGLING DITZ SWINGS WHATEVER WEAPON SHE CAN USE AT YOU. BUT SHE'S DEFENSELESS WHEN SHE LOSES IT!")
break;
  case 7:
 charinfo_set(11,spr_fatburglar_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,2,spr_enemyface,3,"MR.LARGE",
 "BIG, RUDE AND NASTY, THESE GUYS CHARGE AT YOU AND EVEN TRY TO SQUASH YOU WITH THEIR REAR! DON'T GET FLATTENED!"
)
break;
  case 8:
 charinfo_set(12,spr_boxer_stand,1,animsetup_enemy,draw_enemy,spr_boxerpal,2,spr_enemyface,8,"MS.PUNCH",
 "QUICK ON THEIR TINY FEET, THEY WON'T HESTITATE IF YOU TRY TO GET A JUMP ON THEM. DON'T GET HIT!")
break;
  case 9:
 charinfo_set(12,spr_wrestler_stand,1,animsetup_enemy,draw_enemy,spr_boxerpal,2,spr_enemyface,19,"MS.SLAMS",
 "For being rotund, they can be quick to grab you and slam you hard! She also loves to roll. Literally!")
break;
  case 10:
 charinfo_set(12,spr_strongburg_stand,1,animsetup_enemy,draw_enemy,spr_boxerpal,2,spr_enemyface,37,"MR.CHIP",
 "A!")
break;
  case 11:
 charinfo_set(12,spr_monk_stand,1,animsetup_enemy,draw_enemy,spr_ninjapal,0,spr_enemyface,44,"MS.KICK",
 "A!")
break;
  case 12:
 charinfo_set(12,spr_zombiem_stand,1,animsetup_zombie,draw_enemy,spr_zombiepal,0,spr_enemyface,13,"ZOMBILLY",
 "A!")
break;
  case 13:
 charinfo_set(12,spr_zombiew_stand,1,animsetup_zombie,draw_enemy,spr_zombiepal,0,spr_enemyface,14,"ZOMBETTY",
 "A!")
break;
  case 14:
 charinfo_set(12,spr_skeleton_stand,1,animsetup_enemy,draw_enemy,spr_zombiepal,0,spr_enemyface,21,"SKELLA",
 "A!")
break;
  case 15:
 charinfo_set(12,spr_axe,1,animsetup_enemy,draw_enemy,spr_zombiepal,0,spr_miscface,0,"ANIMATE AXE",
 "A!")
break;
  case 16:
 charinfo_set(12,spr_catman_stand,1,animsetup_enemy,draw_enemy,spr_mummypal,0,spr_enemyface,12,"MAU",
 "A!")
break;
  case 17:
 charinfo_set(12,spr_cobra_stand,1,animsetup_enemy,draw_enemy,spr_mummypal,0,spr_enemyface,24,"ASPA",
 "A!")
break;
  case 18:
 charinfo_set(12,spr_ninjabun_stand,1,animsetup_enemy,draw_enemy,spr_ninjapal,0,spr_enemyface,15,"USAGI",
 "A!")
break;
  case 19:
 charinfo_set(12,spr_samurai_stand,1,animsetup_enemy,draw_enemy,spr_ninjapal,0,spr_enemyface,16,"SAKE",
 "A!")
break;
  case 20:
 charinfo_set(12,spr_plant_stand,1,animsetup_enemy,draw_enemy,spr_ninjapal,0,spr_enemyface,29,"FLORA",
 "A!")
break;
  case 21:
 charinfo_set(12,spr_lobster_stand,1,animsetup_enemy,draw_enemy,spr_ninjapal,0,spr_enemyface,42,"PINCHO",
 "A!")
break;
  case 22:
 charinfo_set(12,spr_merman_stand,1,animsetup_enemy,draw_enemy,spr_zombiepal,0,spr_enemyface,25,"MERMAN",
 "A!")
break;
  case 23:
 charinfo_set(12,spr_siren_stand,1,animsetup_enemy,draw_enemy,spr_zombiepal,0,spr_enemyface,26,"SIREN",
 "A!")
break;
  case 24:
 charinfo_set(12,spr_martian_stand,1,animsetup_enemy,draw_enemy,spr_zombiepal,0,spr_enemyface,23,"MARTIAN",
 "A!")
break;
  case 25:
 charinfo_set(12,spr_alienrobot_stand,1,animsetup_enemy,draw_enemy,spr_zombiepal,0,spr_enemyface,28,"MARSBOT",
 "A!")
break;
  case 26:
 charinfo_set(12,spr_spacer_stand,1,animsetup_enemy,draw_enemy,spr_zombiepal,0,spr_enemyface,43,"SPACER",
 "A!")
break;
  case 27:
 charinfo_set(12,spr_goblin_stand,1,animsetup_enemy,draw_enemy,spr_zombiepal,0,spr_enemyface,27,"GOBLIN",
 "A!")
break;
  case 28:
 charinfo_set(12,spr_slime_stand,1,animsetup_enemy,draw_enemy,spr_zombiepal,0,spr_enemyface,22,"SLIME",
 "A!")
break;

}
}