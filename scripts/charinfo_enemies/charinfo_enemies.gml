// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function charinfo_enemies(){
switch (dataSelect) 
{
  case 1:
  hp=0.2 enemyID=1
  descleft="AGE:32\nNAT.:USA\nH: 4'10\nW: 140LBS"
descright="LIKES:STEALING,ROLLS\nDISLIKES:DOGS\nHOBBY:BIKING"
  charinfo_set(5,spr_burglar_stand,3,animsetup_burglar,draw_enemy,spr_enemypal,2,spr_enemyface,1,"MR.BURG",
"RUN OF THE MILL BURGLAR. THIS CHUMP'S FODDER, BUT HIS KICK'LL SEND YOU ROLLING SO WATCH OUT!")
	dataabilities="BIKING,PUNCHING,KICKING"


if dataPal=2
{
enemy_switch("MR.LAR",0) 
}
if dataPal=3
{
enemy_switch("MR.ROB",0)
}
charNO=1

break;
  case 2:
    hp=0.2 enemyID=5
   charinfo_set(6,spr_burglarB_stand,3,animsetup_burglar,draw_enemy,spr_enemypal,2,spr_enemyface,20,"MR.TEEF",
"ANOTHER BURGLAR, WHO'S ALSO ANOTHER DUMMY FODDER. BUT HE MAY SHOW UP WITH A WEAPON TO STRIKE YOU WITH! STILL A CHUMP.")

charNO=2

if dataPal=2
{
enemy_switch("MR.LAD",0)
}
if dataPal=3
{
enemy_switch("MR.RON",0)
}


break;
 case 3:
   hp=0.4 enemyID=10
   charinfo_set(7,spr_sneak_stand,5,animsetup_burglar,draw_enemy,spr_sneakpal,0,spr_enemyface,6,"MR.SNEAK",
"THIS TRENCHCOAT JERK SLIDES AROUND TO TRIP YOU UP AND TRIES TO GRAB YOU. WORST OF ALL? THEY THROW BOMBS!")
charNO=3

if dataPal=2
{
enemy_switch("MR.SLIP",0)
}
if dataPal=3
{
enemy_switch("MR.SLINK",0)
}
if dataPal=4
{
enemy_switch("MR.SIDLE",0)
}
if dataPal=5
{
enemy_switch("MR.PROWL",0)
}
break;
  case 4:
   charinfo_set(8,spr_femburglar_stand,2,animsetup_femburglar,draw_enemy,spr_enemypal,2,spr_enemyface,2,"MR.CHILL",
   "")
     hp=0.2 enemyID=15
if dataPal=1
{
name="MS.CHILL" current_pal=2
desc="COMING IN PAIRS, SHE'LL PESTER YOU WITH THEIR LONG LEGS AND KNOWS THE ART OF DEFENSE AGAINST YOUR ATTACKS!"
}
if dataPal=2
{enemyID=16
name="MS.SPICE" current_pal=4
desc="COMING IN PAIRS SHE'LL ANNOY YOU WITH WITH LEGS TO KICK YOU AND KNOWS ENOUGH DEFENSE TO GUARD YOUR ATTACKS."
}
charNO=4
break;
  case 5:
   charinfo_set(9,spr_robot_stand,3,animsetup_robot,draw_robot,spr_robotpal,2,spr_enemyface,4,"MR.BOLTS",
   "")
     hp=1
 if dataPal=1
{current_pal=0
	robotArmRsprite=spr_robot_arm
	name="MR.BOLTS"
desc="THIS BIG, FANCY BOT COMES EQUIPPED WITH A SHOCKING LASER AND STRONG, BUT DETACHABLE ARMS."
	 charNO=5 enemyID=17
}
if dataPal=2
{current_pal=2
	robotArmRsprite=spr_robot_flame
	name="MR.BURNS"
desc="THIS LARGE ROBOT WILL BURN YOU TO DUST WITH THEIR TRUSY, BUT DETACHABLE FLAMETHROWER."
enemyID=18
}
if dataPal=3
{current_pal=1
	name="MR.COLD"
desc="THIS HUGE MACHIN CAN SEND CHILLS DOWN YOUR SPINE B FREEZING YOU WITH THEIR ICE GUN! FROSTY!"
enemyID=19
}  
   
break;
  case 6:
  weapon_add("HAMMER") enemyID=20
   charinfo_set(10,spr_swing_stand,5,animsetup_swing,draw_swing,spr_swingpal,2,spr_enemyface,7,"MS.SWING",
   "THIS GIGGLING DITZ SWINGS WHATEVER WEAPON SHE CAN USE AT YOU. BUT SHE'S DEFENSELESS WHEN SHE LOSES IT!")
if dataPal=2 {weapon_add("HANDGUN") enemy_switch("MS.TRIG",0)}
if dataPal=3 {weapon_add("WHIP") enemy_switch("MS.DOMI",0)}
if dataPal=4 {weapon_add("DYNAMITE") enemy_switch("MS.THRU",0)}
if dataPal=5 {weapon_add("KNIFE") enemy_switch("MS.BRAN",0)}

if image_index<1
weaponanim(weaponspr,weaponIndex,14,-65,180*image_xscale,weaponcolor)
else if image_index<2
weaponanim(weaponspr,weaponIndex,14+1,-65+2,180*image_xscale,weaponcolor)
else
weaponanim(weaponspr,weaponIndex,14+1,-65+1,180*image_xscale,weaponcolor)

if dataPal=2 or dataPal=4 or dataPal=5 weaponangle-=90*image_xscale

break;
  case 7:  enemyID=25 hp=0.8
 charinfo_set(11,spr_fatburglar_stand,3,animsetup_enemy,draw_enemy,spr_enemypal,2,spr_enemyface,3,"MR.LARGE",
 "BIG, RUDE AND NASTY, THESE GUYS CHARGE AT YOU AND EVEN TRY TO SQUASH YOU WITH THEIR REAR! DON'T GET FLATTENED!"
)
if dataPal=2
{
enemy_switch("MR.WIDE",0)
}
if dataPal=3
{
enemy_switch("MR.HUGE",0)
}

break;
  case 8:  enemyID=28 hp=0.8
 charinfo_set(13,spr_boxer_stand,2,animsetup_enemy,draw_enemy,spr_boxerpal,2,spr_enemyface,8,"MS.PUNCH",
 "QUICK ON THEIR TINY FEET, THEY WON'T HESTITATE IF YOU TRY TO GET A JUMP ON THEM. DON'T GET HIT!")
if dataPal=2
{
enemy_switch("MS.JAB",0)
}
break;
  case 9: hp=0.8
  idlestyle=1  enemyID=30 
 charinfo_set(14,spr_wrestler_stand,2,animsetup_enemy,draw_enemy,spr_ninjapal,0,spr_enemyface,19,"MS.SLAMS",
 "For being rotund, they can be quick to grab you and slam you hard, and can try and flatten you with a roll!")
if dataPal=2
{
enemy_switch("MS.CRUSH",0)
}
break;
  case 10:  enemyID=32 hp=1
 idlestyle=1
 charinfo_set(15,spr_strongburg_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,2,spr_enemyface,37,"MR.CHIP",
"A huge guy, he can use his massive arms to give you a deadly bear hug. He can also go for a spin if you get too close!")
if dataPal=2
{
enemy_switch("MR.DALE",0)
}
break;
  case 11: hp=0.35
 idlestyle=1  enemyID=34 
 charinfo_set(16,spr_monk_stand,3,animsetup_enemy,draw_enemy,spr_ninjapal,2,spr_enemyface,44,"MS.KI",
"Trained under martial arts, she can blast you with her ki and can use their hip to collide you with if you're away.")
if dataPal=2
enemy_switch("MS.CHI",0)
if dataPal=3
enemy_switch("MS.MANA",0)

break;
  case 12: hp=0.3
 idlestyle=3 enemyID=37
 charinfo_set(16,spr_harpye_stand,2,animsetup_enemy,draw_enemy,spr_zombiepal,0,spr_enemyface,61,"WINGY",
"They take on the skies with fashion sense, and will aim those who they will love to bother as they tackle them down.")
if dataPal=2
enemy_switch("ICARA",0)
break;

  case 13: ////Cowboy
 hp=0.3 enemyID=130 idlestyle=1
 charinfo_set(12,spr_cowboy_stand,3,animsetup_enemy,draw_enemy,spr_ninjapal,0,spr_enemyface,64,"BILL",
 "This man from the west will shuffle around and try to make you eat lead with that iron he carries with im'.")

if dataPal=2
enemy_switch("BUCK",0)
if dataPal=3
enemy_switch("PESO",0)

break;

  case 14:
  hp=0.25 enemyID=39
descleft="AGE:32\nNAT.:USA\nH: 4'10\nW: 140LBS"
descright="LIKES:STEALING,ROLLS\nDISLIKES:DOGS\nHOBBY:BIKING"
 charinfo_set(17,spr_zombiem_stand,3,animsetup_zombie,draw_enemy,spr_zombiepal,0,spr_enemyface,13,"ZOMBILLY",
 "A zombie man who's a little on the clumsy side, who will rush towards their foe and tackle them. By accident.")
if dataPal=2
enemy_switch("ZOMBOBBY",0)
if dataPal=3
enemy_switch("MORTI",0)


break;
  case 15:
    hp=0.25 enemyID=42
 charinfo_set(12,spr_zombiew_stand,3,animsetup_zombie,draw_enemy,spr_zombiepal,0,spr_enemyface,14,"ZOMBETTY",
 "She calls herself a beauty, despite a missing jaw. Those who are rude will be the subject of her acidic spits!")

if dataPal=2
enemy_switch("ZOMBELLE",0)
if dataPal=3
enemy_switch("RIGORA",0)


break;
  case 16:
  hp=0.25 enemyID=45  idlestyle=1
   if dataPal=1
{current_pal=0
 charinfo_set(12,spr_skeleton_stand,2,animsetup_enemy,draw_enemy,spr_mummypal,0,spr_enemyface,21,"SKELLA", 
 "They appropiate themselves by becoming sassy, and they resort on kicks from their ballerina routine.")}
    if dataPal=2
{current_pal=1 enemyID=46 hp=0.3
 charinfo_set(12,spr_skeleton_stand,2,animsetup_enemy,draw_enemy,spr_mummypal,1,spr_enemyface,21,"SKELIE", 
 "These skeletons of jugglers will show up and have a bone to pick with you! And throw it.")} 
break;

  case 17: ////Knight
 hp=0.3 enemyID=133 idlestyle=1
 charinfo_set(12,spr_knight_stand,3,animsetup_enemy,draw_enemy,spr_robotpal,0,spr_enemyface,65,"GARETH",
 "This knight wields a weapon to use against you and turn you to mince meat. Such a tin man.")

if dataPal=2
enemy_switch("LANCER",0)
if dataPal=3
enemy_switch("ARTIE",0)

break;

  case 18: enemyID=47 hp=0.3
  weapon_add("AXE") 
 weaponX=14
weaponY=-69-4
  weaponanim(weaponspr,weaponIndex,lerp(weaponX,0,1),lerp(weaponY,0,1),lerp(weaponangle,90,1),weaponcolor)
  
 charinfo_set(12,mask_none,1,animsetup_enemy,draw_swing,spr_zombiepal,0,spr_miscface,0,"POLTERGEIST",
"A haunted bladed weapon that's taken over with remnants of a spirit obsessed with heads.")
break;

  case 19:
  
  ////Paintings
  hp=0.5 enemyID=48
  paintingSpr=spr_painting1 frameSpr=spr_painting_base
 charinfo_set(12,spr_painting_base,7,animsetup_enemy,painting_draw,spr_zombiepal,0,spr_miscface,0,"ALBUS",
"Painting.")

    if dataPal=2
	{paintingSpr=spr_painting2 enemyID=49
 charinfo_set(12,spr_painting_base,7,animsetup_enemy,painting_draw,spr_zombiepal,0,spr_miscface,0,"ANNIE",
"Painting.")	}
	    if dataPal=3
		{paintingSpr=spr_painting3 enemyID=50
 charinfo_set(12,spr_painting_base,7,animsetup_enemy,painting_draw,spr_zombiepal,0,spr_miscface,0,"FREDERICK",
"Painting.")}

///Hieroglyphs
	    if dataPal=4
		{paintingSpr=spr_heye enemyID=125 frameSpr=spr_hieroglyph_base
 charinfo_set(12,spr_hieroglyph_base,7,animsetup_enemy,painting_draw,spr_zombiepal,0,spr_miscface,0,"HORUS",
"The eye of Horus.")}
	    if dataPal=5
		{paintingSpr=spr_heys enemyID=126 frameSpr=spr_hieroglyph_base 
 charinfo_set(12,spr_hieroglyph_base,7,animsetup_enemy,painting_draw,spr_zombiepal,0,spr_miscface,0,"SCARAB",
"The scarab.")}
	    if dataPal=6
		{paintingSpr=spr_heyankh enemyID=127 frameSpr=spr_hieroglyph_base
 charinfo_set(12,spr_hieroglyph_base,7,animsetup_enemy,painting_draw,spr_zombiepal,0,spr_miscface,0,"ANKH",
"The ankh.")}
	    if dataPal=7
		{paintingSpr=spr_heya enemyID=128 frameSpr=spr_hieroglyph_base
 charinfo_set(12,spr_hieroglyph_base,7,animsetup_enemy,painting_draw,spr_zombiepal,0,spr_miscface,0,"ANUBIS",
"The symbol of anubis.")}

break;



  case 20:
  hp=0.2 enemyID=51
 charinfo_set(12,spr_catman_stand,2,animsetup_enemy,draw_enemy,spr_mummypal,0,spr_enemyface,12,"MAU",
"This little kitty will not hestitate in using their claws, and isn't afraid of making you their yarn.")

if dataPal=2
enemy_switch("BASTET",0)

break;
  case 21:
  idlestyle= hp=0.5 enemyID=53 idlestyle=1
 charinfo_set(12,spr_cobra_stand,2,animsetup_enemy,draw_enemy,spr_mummypal,0,spr_enemyface,24,"ASPA",
"They have snake for hands, and will use them to bite at you.")
if dataPal=2
enemy_switch("VIPERA",0)

break;
  case 22: enemyID=55
  hp=0.3
 charinfo_set(12,spr_ninjabun_stand,3,animsetup_enemy,draw_enemy,spr_ninjapal,0,spr_enemyface,15,"USAGI",
"These are trained mercenaries for hire who also double as servants of the casino. They take it seriously.")
if dataPal=2
enemy_switch("NOUSAGI",0)
if dataPal=3
enemy_switch("KONI",0)

break;
  case 23:
  hp=0.4 enemyID=58 idlestyle=1
 charinfo_set(12,spr_samurai_stand,2,animsetup_enemy,draw_enemy,spr_ninjapal,0,spr_enemyface,16,"SAKE",
"A samurai in gear styled after dominos who will take a bit before slicing you in half.")
if dataPal=2
enemy_switch("MUGI",0)
break;
  case 24: enemyID=60
  idlestyle=1
  hp=0.3

weapon_add_double("JUGGLE")
if dataPal=2 weapon_add_double("TWIRL")
  
  if image_index=clamp(image_index,0,0.9)
{weaponanim(weaponspr,weaponIndex,33,-88,86,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,-27,-68,86,weaponcolor)}
if image_index=clamp(image_index,1,1.9)
{weaponanim(weaponspr,weaponIndex,34,-87,86,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,-26,-69,86,weaponcolor)}
if image_index=clamp(image_index,2,2.9)
{weaponanim(weaponspr,weaponIndex,35,-86,86,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,-25,-70,86,weaponcolor)}
  
 charinfo_set(12,spr_clown_stand,3,animsetup_enemy,draw_swing_2,spr_bearpal,0,spr_enemyface,38,"ANETTE",
"A silly marionette lady who does a good show with their skills and pain towards the offenders.")
 if dataPal=2
 {
	enemy_switch("MARI",0)
 }
  if dataPal=3
 {
	enemy_switch("POPPI",0)
 }
 
 break;
   case 25: enemyID=63
  idlestyle=1 hp=0.2
 charinfo_set(12,spr_bear_stand,6,animsetup_enemy,draw_enemy,spr_bearpal,0,spr_enemyface,49,"ROOSEVELT",
"An adorable plush of fluff who can teach naughty people how to treat them nice. With their fists.")
 if dataPal=2 {enemy_switch("TEDDIE",0)
 }
  if dataPal=3 {enemy_switch("YOGI",0)
 }
  if dataPal=4 {enemy_switch("FOZZI",0)
 }
  if dataPal=5 {enemy_switch("PADDY",0)
 }
  if dataPal=6 {enemy_switch("RONI",0)
 }
 break;
 case 26: hp=0.25 enemyID=69
 charinfo_set(12,spr_fairy_stand,3,animsetup_enemy,draw_enemy,spr_fairypal,0,spr_enemyface,53,"BELLE",
"A fairy with the skills of ballet and magic who'll use their strong legs to crush you.")
  if dataPal=2 {enemy_switch("WENDY",0)}
  if dataPal=3 {enemy_switch("LUSH",0)}

 break;
   case 27: enemyID=72
   idlestyle=1 hp=0.6
 charinfo_set(12,spr_plant_stand,3,animsetup_enemy,draw_enemy,spr_plantpal,0,spr_enemyface,29,"FLORA",
"A living plant who goes after adversaries and try and catch them with their mouth. Chomp.")
  if dataPal=2 {enemy_switch("FAUNA",0)}
  if dataPal=3 {enemy_switch("FOLI",0)}


break;

  case 28: enemyID=117
  idlestyle=1 hp=0.4
 charinfo_set(12,spr_beelady_stand,3,animsetup_enemy,draw_enemy,spr_dancerpal,0,spr_enemyface,63,"BEEATRICE",
"This bee person has a knack of fashion and honey. But they will show how stingy they are if provoked.")
  if dataPal=2 {enemy_switch("HONEYDEW",0)}
  if dataPal=3 {enemy_switch("WASPELLA",0)}
///PINCHER

break;

  case 29: enemyID=75
  hp=0.2
 charinfo_set(12,spr_lobster_stand,2,animsetup_enemy,draw_enemy,spr_lobsterpal,0,spr_enemyface,42,"PINCHO",
"A lobster who's big, and has claws that will give you a strong pinch.")
  if dataPal=2 {enemy_switch("PINCHER",0)}
///PINCHER

break;
case 30: enemyID=77
weapon_add("SCIMITAR")
idlestyle=1 hp=0.25
charinfo_set(12,spr_dancer_stand,3,animsetup_enemy,draw_swing,spr_dancerpal,0,spr_enemyface,50,"DANZA",
"They have the knowledge for enteratinment, with their amorous agility as sharp as their blades.")
 
 weaponBack=1
if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,-16,-91,0,weaponcolor)
if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,-15,-90,0,weaponcolor)
if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,-15,-88,0,weaponcolor)
 
  if dataPal=2 {enemy_switch("RULA",0)}
  if dataPal=3 {enemy_switch("JAZMYN",0)}
 
 break; 
  case 31:
 hp=0.25 enemyID=80
idlestyle=1


 charinfo_set(12,spr_diver_stand,2,animsetup_enemy,draw_swing,spr_ninjapal,0,spr_enemyface,45,"MR.DIVE",
"An underwater minion who seeks for their foes under the sea and rob of the treasures. An underwater chump.")
  if dataPal=2 {weapon_add("HARPOONGUN") enemy_switch("MR.DROP",0)}

	////Stand
	if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,25*0.9,-39*0.9,-1,weaponcolor)
	if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,26*0.9,-38*0.9,-1,weaponcolor)
	if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,26*0.9,-36*0.9,-1,weaponcolor)

break;

case 32: hp=0.3 enemyID=82 
 charinfo_set(12,spr_merman_stand,3,animsetup_merman,draw_merman,spr_zombiepal,0,spr_enemyface,25,"DOUGLAS",
"A fish man guard who's tasked in taking intruders out and use either a spear or trident to stab you with.")

  if dataPal=1 weapon_add("SPEAR")

  if dataPal=2 {enemy_switch("ERIK",0) weapon_add("TRIDENT")}
  if dataPal=3 {enemy_switch("ADAM",0)}
armsX=0 armspr=spr_merman_arms anim=0 weaponBack=0
if image_index<1
{
weaponanim(weaponspr,weaponIndex,-3,-37,42,weaponcolor) armsY=0}
else if image_index<2
{weaponanim(weaponspr,weaponIndex,-3,-36,42,weaponcolor) armsY=1}
else
{weaponanim(weaponspr,weaponIndex,-3,-36,42,weaponcolor) armsY=1}


break;
  case 33:
 idlestyle=1 hp=0.2 enemyID=85
 charinfo_set(12,spr_siren_stand,3,animsetup_enemy,draw_enemy,spr_zombiepal,0,spr_enemyface,26,"SIRENA",
"They say they are lovely, but they can be pretty viscious if they need to with her projectiles.")
  if dataPal=2 {enemy_switch("MARINA",0)}
  if dataPal=3 {enemy_switch("SKYLA",0)}

break;
  case 34:
 idlestyle=1
 hp=0.25 enemyID=88 
 charinfo_set(12,spr_martian_stand,3,animsetup_enemy,draw_swing,spr_zombiepal,0,spr_enemyface,23,"MARTIA",
"These space babes have been capturing specimens and will try and catch you with a shock or with their heads!")

  if dataPal=2 {enemy_switch("INVA",0) weapon_add("TASER")}
  if dataPal=3 {enemy_switch("EXTA",0) weapon_add("LASERGUN")}

var _weaponaddX=0;
var _weaponang=0; var _weaponadd=0; if spawnID=oLaserGun {_weaponang=-90; _weaponaddX=lengthdir_x(2,weaponangle) _weaponadd=lengthdir_y(8,weaponangle)}

weaponBack=1
if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,15+_weaponaddX,-48+_weaponadd,90+_weaponang,weaponcolor)
if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,16+_weaponaddX,-47+_weaponadd,90+_weaponang,weaponcolor)
if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,17+_weaponaddX,-46+_weaponadd,90+_weaponang,weaponcolor)

break;
  case 35: hp=0.2 enemyID=90
 charinfo_set(12,spr_alienrobot_stand,2,animsetup_enemy,draw_enemy,spr_robotpal,0,spr_enemyface,28,"ELECTRON",
"A security robot from space! These machines assist the invaders in capturing escaped experiments.")
  if dataPal=2 {enemy_switch("DESTRON",0)}

break;
  case 36: hp=0.25 enemyID=93
 idlestyle=1
 charinfo_set(12,spr_spacer_stand,2,animsetup_enemy,draw_enemy,spr_fairypal,0,spr_enemyface,43,"OJO",
"They do research on planets and will choose on what planet they will loot with their female counterparts.")
  if dataPal=2 {enemy_switch("VER",0)}

break;
  case 37: hp=0.3 enemyID=95 idlestyle=1
  charinfo_set(12,spr_goblin_stand,2,animsetup_enemy,draw_swing,spr_zombiepal,0,spr_enemyface,27,"GOBERT",
"This is one busy goblin, who hates getting their work disrupted. They want people away from their mine zone!")
  if dataPal=2 {enemy_switch("GOHNNY",0) weapon_add("PICKAXE")}
  
	if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,17,-24,89,weaponcolor)
	if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,19,-22,89,weaponcolor)
	if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,19,-19,89,weaponcolor)

break;
  case 38:
  idlestyle=1 enemyID=97
 charinfo_set(12,spr_shroom_stand,4,animsetup_enemy,draw_enemy,spr_playerpal,0,spr_enemyface,52,"AMANITA",
"She is cheerful! And she can spread a lot of spores to give someone a sensational high like she is now.")
  if dataPal=2 {enemy_switch("CERANA",0)}
    if dataPal=3 {enemy_switch("ELEGANS",0)}
	  if dataPal=4 {enemy_switch("PHOLIOTA",0)}

break;
  case 39:
 idlestyle=1 hp=0.4 enemyID=101
 charinfo_set(12,spr_slime_stand,6,animsetup_enemy,draw_enemy,spr_slimepal,0,spr_enemyface,22,"MELON",
 "A smug slime who has a malleable skill to smash anyone. In a way by crushing them with their powers.")
 
   if dataPal=2 {enemy_switch("CHERRY",0)}
    if dataPal=3 {enemy_switch("BLUEBERRY",0)}
	  if dataPal=4 {enemy_switch("BANANA",0)}
    if dataPal=5 {enemy_switch("CALCIUM",0)}
	  if dataPal=6 {enemy_switch("CHEMI",0)}	  
 
break;
  case 40: enemyID=107
  idlestyle=1 hp=1
 charinfo_set(12,spr_snowgirl_stand,3,animsetup_enemy,draw_enemy,spr_zombiepal,0,spr_enemyface,51,"PRIMA",
 "A huge creature who will gonna love them, hug them, pet them and freeze them with their breath.")
     if dataPal=2 {enemy_switch("EVA",0)}
    if dataPal=3 {enemy_switch("UNDA",0)}

break;

  case 41:
  idlestyle=1 hp=0.2 enemyID=110
 charinfo_set(12,spr_nurse_stand,4,animsetup_enemy,draw_enemy,spr_ninjapal,0,spr_enemyface,48,"DR.PERO",
 "Whenever they need someone to assist, they will as they throw in their unsefe concoctions, so beware.")
  if dataPal=2 {enemy_switch("DR.SULF",0)}
    if dataPal=3 {enemy_switch("DR.MONIA",0)}
	  if dataPal=4 {enemy_switch("DR.GLUCO",0)}
 
break;
  case 42: hp=1 enemyID=114
 charinfo_set(12,spr_ladybot_stand,2,animsetup_enemy,draw_enemy,spr_robotpal,0,spr_enemyface,46,"O-POLIS",
"A sentry femenine machine built to combat intruders and can manage and go for a punching charge!")
   if dataPal=2 {enemy_switch("METR-A",0)}

 
}

unlockedChar[enemyID]=global.UnlockEnemy[enemyID] if unlockedChar[enemyID]!=0  image_blend=c_white else image_blend=c_black
if image_blend=c_black {name="???" desc="" idlestyle=0
	  descleft=""
descright=""
dataabilities=""
	}
}