// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function charinfo_enemies(){
switch (dataSelect) 
{
  case 1:
  hp=0.2
  descleft="AGE:32\nNAT.:USA\nH: 4'10\nW: 140LBS"
descright="LIKES:STEALING,ROLLS\nDISLIKES:DOGS\nHOBBY:BIKING"
  charinfo_set(5,spr_burglar_stand,3,animsetup_burglar,draw_enemy,spr_enemypal,2,spr_enemyface,1,"MR.BURG",
"RUN OF THE MILL BURGLAR. THIS CHUMP'S FODDER, BUT HIS KICK'LL SEND YOU ROLLING SO WATCH OUT!")
	dataabilities="BIKING,PUNCHING,KICKING"
unlockedChar[1]=global.UnlockEnemy[1] charNO=1
break;
  case 2:
    hp=0.2
   charinfo_set(6,spr_burglarB_stand,3,animsetup_burglar,draw_enemy,spr_enemypal,2,spr_enemyface,20,"MR.TEEF",
"ANOTHER BURGLAR, WHO'S ALSO ANOTHER DUMMY FODDER. BUT HE MAY SHOW UP WITH A WEAPON TO STRIKE YOU WITH! STILL A CHUMP.")
unlockedChar[2]=global.UnlockEnemy[2] charNO=2
break;
 case 3:
   hp=0.4
   charinfo_set(7,spr_sneak_stand,3,animsetup_burglar,draw_enemy,spr_sneakpal,0,spr_enemyface,6,"MR.SNEAK",
"THIS TRENCHCOAT JERK SLIDES AROUND TO TRIP YOU UP AND TRIES TO GRAB YOU. WORST OF ALL? THEY THROW BOMBS!")
unlockedChar[3]=global.UnlockEnemy[3] charNO=3
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
charNO=4
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
	 charNO=5
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
 charinfo_set(13,spr_boxer_stand,1,animsetup_enemy,draw_enemy,spr_boxerpal,2,spr_enemyface,8,"MS.PUNCH",
 "QUICK ON THEIR TINY FEET, THEY WON'T HESTITATE IF YOU TRY TO GET A JUMP ON THEM. DON'T GET HIT!")
break;
  case 9:
 charinfo_set(14,spr_wrestler_stand,1,animsetup_enemy,draw_enemy,spr_boxerpal,2,spr_enemyface,19,"MS.SLAMS",
 "For being rotund, they can be quick to grab you and slam you hard, and can try and flatten you with a roll!")
break;
  case 10:
 idlestyle=1
 charinfo_set(15,spr_strongburg_stand,1,animsetup_enemy,draw_enemy,spr_boxerpal,2,spr_enemyface,37,"MR.CHIP",
"A huge guy, he can use his massive arms to give you a deadly bear hug. He can also go for a spin if you get too close!")
break;
  case 11:
 idlestyle=1
 charinfo_set(16,spr_monk_stand,1,animsetup_enemy,draw_enemy,spr_ninjapal,0,spr_enemyface,44,"MS.KI",
"Trained under martial arts, she can blast you with her ki and can use their hip to collide you with if you're away.")
break;
  case 12:
 idlestyle=1
 charinfo_set(16,spr_harpye_stand,1,animsetup_enemy,draw_enemy,spr_zombiepal,0,spr_enemyface,61,"WINGY",
"They take on the skies with fashion sense, and will aim those who they will love to bother as they tackle them down.")
break;
  case 13:
  hp=0.25
descleft="AGE:32\nNAT.:USA\nH: 4'10\nW: 140LBS"
descright="LIKES:STEALING,ROLLS\nDISLIKES:DOGS\nHOBBY:BIKING"
 charinfo_set(17,spr_zombiem_stand,1,animsetup_zombie,draw_enemy,spr_zombiepal,0,spr_enemyface,13,"ZOMBILLY",
 "A zombie man who's a little on the clumsy side, who will rush towards their foe and tackle them. By accident.")
break;
  case 14:
    hp=0.25
 charinfo_set(12,spr_zombiew_stand,1,animsetup_zombie,draw_enemy,spr_zombiepal,0,spr_enemyface,14,"ZOMBETTY",
 "She calls herself a beauty, despite a missing jaw. Those who are rude will be the subject of her acidic spits!")
break;
  case 15:
  hp=0.25
   if dataPal=1
{current_pal=0
 charinfo_set(12,spr_skeleton_stand,2,animsetup_enemy,draw_enemy,spr_zombiepal,0,spr_enemyface,21,"SKELLA", 
 "They appropiate themselves by becoming sassy, and they resort on kicks from their ballerina routine.")}
    if dataPal=2
{current_pal=1
 charinfo_set(12,spr_skeleton_stand,2,animsetup_enemy,draw_enemy,spr_zombiepal,0,spr_enemyface,21,"SKELIE", 
 "These skeletons of jugglers will show up and have a bone to pick with you! And throw it.")} 
break;
  case 16:
 charinfo_set(12,spr_axe,1,animsetup_enemy,draw_enemy,spr_zombiepal,0,spr_miscface,0,"POLTERGEIST",
"A haunted bladed weapon that's taken over with remnants of a spirit obsessed with heads.")
break;
  case 17:
 charinfo_set(12,spr_painting_base,1,animsetup_enemy,draw_enemy,spr_zombiepal,0,spr_miscface,0,"PAINTING",
"Painting.")
break;
  case 18:
 charinfo_set(12,spr_catman_stand,1,animsetup_enemy,draw_enemy,spr_mummypal,0,spr_enemyface,12,"MAU",
"This little kitty will not hestitate in using their claws, and isn't afraid of making you their yarn.")
break;
  case 19:
 charinfo_set(12,spr_cobra_stand,1,animsetup_enemy,draw_enemy,spr_mummypal,0,spr_enemyface,24,"ASPA",
"They have snake for hands, and will use them to bite at you.")
break;
  case 20:
 charinfo_set(12,spr_ninjabun_stand,1,animsetup_enemy,draw_enemy,spr_ninjapal,0,spr_enemyface,15,"USAGI",
"These are trained assassins for hire who also double as servants of the casino. They take it seriously.")
break;
  case 21:
 charinfo_set(12,spr_samurai_stand,1,animsetup_enemy,draw_enemy,spr_ninjapal,0,spr_enemyface,16,"SAKE",
"A samurai in gear styled after dominos who will take a bit before slicing you in half.")
break;
  case 22:
 charinfo_set(12,spr_clown_stand,1,animsetup_enemy,draw_enemy,spr_zombiepal,0,spr_miscface,0,"ANETTE",
"A silly marionette lady who does a good show with their skills and pain towards the offenders.")
  break;
   case 23:
  idlestyle=1
 charinfo_set(12,spr_bear_stand,1,animsetup_enemy,draw_enemy,spr_zombiepal,0,spr_miscface,0,"ROOSEVELT",
"An adorable plush of fluff who can teach naughty people how to treat them nice. With their fists.")
 break;
 case 24:
 charinfo_set(12,spr_fairy_stand,1,animsetup_enemy,draw_enemy,spr_fairypal,0,spr_miscface,0,"BELLE",
"A fairy with the skills of ballet and magic who'll use their strong legs to crush you.")
 break;
   case 25:
 charinfo_set(12,spr_plant_stand,1,animsetup_enemy,draw_enemy,spr_ninjapal,0,spr_enemyface,29,"FLORA",
"A living plant who goes after adversaries and try and catch them with their mouth. Chomp.")
break;
  case 26:
 charinfo_set(12,spr_lobster_stand,1,animsetup_enemy,draw_enemy,spr_ninjapal,0,spr_enemyface,42,"PINCHO",
"A lobster who's big, and has claws that will give you a strong pinch.")
break;
case 27:
idlestyle=1
charinfo_set(12,spr_dancer_stand,1,animsetup_enemy,draw_enemy,spr_dancerpal,0,spr_enemyface,50,"DANZA",
"They have the knowledge for enteratinment, with their amorous agility as sharp as their blades.")
 break; 
 case 28:
idlestyle=1
 charinfo_set(12,spr_diver_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,45,"MR.DIVE",
"An underwater minion who seeks for their foes under the sea and rob of the treasures. An underwater chump.")
break;
  case 29:
 charinfo_set(12,spr_merman_stand,1,animsetup_enemy,draw_enemy,spr_zombiepal,0,spr_enemyface,25,"DOUGLAS",
"A fish man guard who's tasked in taking intruders out and use either a spear or trident to stab you with.")
break;
  case 30:
 idlestyle=1
 charinfo_set(12,spr_siren_stand,1,animsetup_enemy,draw_enemy,spr_zombiepal,0,spr_enemyface,26,"SIRENA",
"They say they are lovely, but they can be pretty viscious if they need to with her projectiles.")
break;
  case 31:
 idlestyle=1
 charinfo_set(12,spr_martian_stand,1,animsetup_enemy,draw_enemy,spr_zombiepal,0,spr_enemyface,23,"MARTIA",
"These space babes have been capturing specimens and will try and catch you with a shock or with their heads!")
break;
  case 32:
 charinfo_set(12,spr_alienrobot_stand,1,animsetup_enemy,draw_enemy,spr_zombiepal,0,spr_enemyface,28,"ELECTRON",
"A security robot from space! These machines assist the invaders in capturing escaped experiments.")
break;
  case 33:
 idlestyle=1
 charinfo_set(12,spr_spacer_stand,1,animsetup_enemy,draw_enemy,spr_zombiepal,0,spr_enemyface,43,"OJO",
"They do research on planets and will choose on what planet they will loot with their female counterparts.")
break;
  case 34:
 charinfo_set(12,spr_goblin_stand,1,animsetup_enemy,draw_enemy,spr_zombiepal,0,spr_enemyface,27,"GOBERT",
"This is one busy goblin, who hates getting their work disrupted. They want people away from their mine zone!")
break;
  case 35:
  idlestyle=1
 charinfo_set(12,spr_shroom_stand,1,animsetup_enemy,draw_enemy,spr_playerpal,0,spr_enemyface,52,"AMANITA",
"She is cheerful! And she can spread a lot of spores to give someone a sensational high like she is now.")
break;
  case 36:
 idlestyle=1
 charinfo_set(12,spr_slime_stand,1,animsetup_enemy,draw_enemy,spr_zombiepal,0,spr_enemyface,22,"MELON",
 "A smug slime who has a malleable skill to smash anyone. In a way by crushing them with their powers.")
break;
  case 37:
  idlestyle=1
 charinfo_set(12,spr_snowgirl_stand,1,animsetup_enemy,draw_enemy,spr_zombiepal,0,spr_enemyface,51,"PRIMA",
 "A huge creature who will gonna love them, hug them, pet them and freeze them with their breath.")
break;
  case 38:
 charinfo_set(12,spr_ladybot_stand,1,animsetup_enemy,draw_enemy,spr_robotpal,0,spr_enemyface,46,"O-POLIS",
"A sentry fembot built to combat intruders and can manage and go for a punching charge!")

 
}

if image_blend=c_black {name="???" desc="" idlestyle=0
	  descleft=""
descright=""
dataabilities=""
	}
}