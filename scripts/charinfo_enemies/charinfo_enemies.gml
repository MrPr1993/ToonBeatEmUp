// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function charinfo_enemies(){

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
  hp=0.2 enemyID=1

  charinfo_set(5,spr_burglar_stand,3,animsetup_burglar,draw_enemy,spr_enemypal,2,spr_enemyface,1,"MR.BURG",
"Just your run of the mill small fry burglar, but stay sharp! They come in groups!")

descleft=string(_ageT)+":37\nNAT.:USA\n"+string(_heightT)+":4'5"+" "+string(_weightT)+":110LBS"


descright=+string(_ageT)+":CHICKENS,STEALING\n"+string(_dislikesT)+":DOGS\n"+string(_hobbyT)+":Biking"
dataabilities="Bruising,Kicking,Biking"

if dataPal=2
{
descleft=string(_ageT)+":38\nNAT.:USA\n"+string(_heightT)+":4'6"+" "+string(_weightT)+":111LBS"

enemy_switch("MR.LAR",0) 

desc="Burg’s higher ranked relative. Not much stronger by comparison, but they can still kick!"

descright=string(_likesT)+":FRIES,STEALING\n"+string(_dislikesT)+":CATS\n"+string(_hobbyT)+":RIDING"
dataabilities="Bruising,Kicking,Biking"
}
if dataPal=3
{
enemy_switch("MR.ROB",0)
descleft=string(_ageT)+":40\nNAT.:USA\n"+string(_heightT)+":4'7"+" "+string(_weightT)+":112LBS"
desc="The cream of the Mr. Burg crop! Keep an eye out, as they’ve got a mean jump kick!"

descright=string(_likesT)+":ROLLS,STEALING\n"+string(_dislikesT)+":RATS\n"+string(_hobbyT)+":HIKING"
dataabilities="Bruising,Kicking,Biking"
}
charNO=1

break;
  case 2:
    hp=0.2 enemyID=5
   charinfo_set(6,spr_burglarB_stand,3,animsetup_burglar,draw_enemy,spr_enemypal,2,spr_enemyface,20,"MR.TEEF",
"ANOTHER BURGLAR, WHO'S ALSO ANOTHER DUMMY FODDER. BUT HE MAY SHOW UP WITH A WEAPON TO STRIKE YOU WITH! STILL A CHUMP.")

descleft=string(_ageT)+":41\nNAT.:FRANCE\n"+string(_heightT)+":4'5"+" "+string(_weightT)+":110LBS"

descright=string(_likesT)+":MILK,STEALING\n"+string(_dislikesT)+":GOATS\n"+string(_hobbyT)+":BASEBALL"
dataabilities="Bruising,Kicking,Biking"

charNO=2

if dataPal=2
{
enemy_switch("MR.LAD",0)
descleft=string(_ageT)+":42\nNAT.:FRANCE\n"+string(_heightT)+":4'6"+" "+string(_weightT)+":111LBS"
desc="Burg’s higher ranked relative. Not much stronger by comparison, but they can still kick!"

descright=string(_likesT)+":WINE,STEALING\n"+string(_dislikesT)+":SODA\n"+string(_hobbyT)+":WINE TASTING"
dataabilities="Bruising,Kicking,Biking"

}
if dataPal=3
{
enemy_switch("MR.RON",0)
descleft=string(_ageT)+":43\nNAT.:FRANCE\n"+string(_heightT)+":4'7"+" "+string(_weightT)+":112LBS"
desc="The cream of the Mr. Burg crop! Keep an eye out, as they’ve got a mean jump kick!"

descright=string(_likesT)+":GAMBLING,STEALING\n"+string(_dislikesT)+":LOW PAY\n"+string(_hobbyT)+":ROULETTES"
dataabilities="Bruising,Kicking,Biking"
}


break;
 case 3:
   hp=0.4 enemyID=10
   charinfo_set(7,spr_sneak_stand,5,animsetup_burglar,draw_enemy,spr_sneakpal,0,spr_enemyface,6,"MR.SNEAK",
"This jerk slides around to try and trip you up! Some even have tommy guns!")

descleft=string(_ageT)+":35\nNAT.:USA\n"+string(_heightT)+":5'5"+" "+string(_weightT)+":120LBS"

charNO=3

descright=string(_likesT)+":CHEESE,BIRDS\n"+string(_dislikesT)+":RATS\n"+string(_hobbyT)+":PHOTOGRAPHY"
dataabilities="Sneaking,Sliding,Scent"

if dataPal=2
{
enemy_switch("MR.SLIP",0)

descleft=string(_ageT)+":36\nNAT.:USA\n"+string(_heightT)+":5'5"+" "+string(_weightT)+":120LBS"

desc="These crazy turncoats run around with bombs in their pockets!…How do they hide them?"

descright=string(_likesT)+":SPICES,MICE\n"+string(_dislikesT)+":COLD FOOD\n"+string(_hobbyT)+":EXPLOSIVES"
dataabilities="Sneaking,Sliding,\nBombing"
}
if dataPal=3
{
enemy_switch("MR.SLINK",0)
descleft=string(_ageT)+":34\nNAT.:USA\n"+string(_heightT)+":5'5"+" "+string(_weightT)+":120LBS"
desc="Lanky though they may be, they’ll grab and throw you around if you’re not careful!"

descright=string(_likesT)+":SNAKES,EGGS\n"+string(_dislikesT)+":JOCKS\n"+string(_hobbyT)+":DISK THROWING"
dataabilities="Sneaking,Sliding,\nThrowing"

}
if dataPal=4
{
enemy_switch("MR.SIDLE",0)
descleft=string(_ageT)+":32\nNAT.:USA\n"+string(_heightT)+":5'5"+" "+string(_weightT)+":120LBS"
desc="With a nasty spring in their step, they’ll leap into the air to kick you in the face!"

descright=string(_likesT)+":MONKEYS,ORANGES\n"+string(_dislikesT)+":LATENESS\n"+string(_hobbyT)+":BOWLING"
dataabilities="Sneaking,Sliding,\nKicking"

}
if dataPal=5
{
enemy_switch("MR.PROWL",0)
descleft=string(_ageT)+":40\nNAT.:USA\n"+string(_heightT)+":5'5"+" "+string(_weightT)+":120LBS"
desc="Sliding, bombing, grappling and kicking are all things this creep’s got up his sleeves!"

descright=string(_likesT)+":BANANAS,CRYSTALS\n"+string(_dislikesT)+":LOW RANKS\n"+string(_hobbyT)+":CHESS"
dataabilities="Sneaking,Sliding,\nSpy"

}
break;
  case 4:
   charinfo_set(8,spr_femburglar_stand,2,animsetup_femburglar,draw_enemy,spr_enemypal,2,spr_enemyface,2,"MR.CHILL",
   "")
     hp=0.2 enemyID=15
if dataPal=1
{
descleft=string(_ageT)+":30\nNAT.:USA\n"+string(_heightT)+":5'10"+" "+string(_weightT)+":100LBS"

name="MS.CHILL" current_pal=2
desc="Usually coming in pairs, they’ll pester you with their deadly legs and can block your attacks!"

descright=string(_likesT)+":SPICE,APPLES\n"+string(_dislikesT)+":CORN\n"+string(_hobbyT)+":GYMNASTICS"
dataabilities="Acrobatics,Kicking"
}
if dataPal=2
{enemyID=16
descleft=string(_ageT)+":30\nNAT.:USA\n"+string(_heightT)+":5'10"+" "+string(_weightT)+":100LBS"
	
name="MS.SPICE" current_pal=4
desc="This lady gets a leg up on her chill counterpart with a dastardly spinning kick!"

descright=string(_likesT)+":CHILL,APPLES\n"+string(_dislikesT)+":CORN\n"+string(_hobbyT)+":GYMNASTICS"
dataabilities="Acrobatics,Kicking"
}
charNO=4
break;
  case 5:
   charinfo_set(9,spr_robot_stand,3,animsetup_robot,draw_robot,spr_robotpal,2,spr_enemyface,4,"MR.BOLTS",
   "")
     hp=1
descleft=string(_heightT)+":7'6"+" "+string(_weightT)+":1000LBS"		
 if dataPal=1
{current_pal=0
	robotArmRsprite=spr_robot_arm
	name="MR.BOLTS"
desc="This fancy robot comes equipped with a shocking laser and strong, but detachable arms."
	 charNO=5 enemyID=17

descright=string(_likesT)+":SERVING,BREAKING\n"+string(_dislikesT)+":RUST\n"+string(_hobbyT)+":BARTENDING"
dataabilities="Electricity,Bruising,\nBrewing"

}
if dataPal=2
{current_pal=2
	robotArmRsprite=spr_robot_flame
	name="MR.HEAT"
desc="This temperamental bot has a flamethrower on one arm, don’t get burned to ashes!"
enemyID=18


descright=string(_likesT)+":SERVING,BURNING\n"+string(_dislikesT)+":WATER\n"+string(_hobbyT)+":CHEF"
dataabilities="Fire,Bruising,Cooking"

}
if dataPal=3
{current_pal=1
	name="MR.COLD"
	robotArmRsprite=spr_robot_freezer
desc="A cold machine with an even colder ice gun that’ll send more than a chill down your spine! Brrrr…"
enemyID=19

descright=string(_likesT)+":SERVING,FREEZING\n"+string(_dislikesT)+":HEAT\n"+string(_hobbyT)+":RESERVING"
dataabilities="Cold,Bruising,Freezing"
}  
   
break;
  case 6:
  weapon_add("HAMMER") enemyID=20
   charinfo_set(10,spr_swing_stand,4,animsetup_swing,draw_swing,spr_swingpal,2,spr_enemyface,7,"MS.SWING",
   "This giggly ditz will swing any nearby weapon at you, but disarm her and she’ll crumple like paper!")
  
 descleft=string(_ageT)+":21\nNAT.:USA\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":110LBS"
  
 descright=string(_likesT)+":SMASHING,SMOKING\n"+string(_dislikesT)+":MILK\n"+string(_hobbyT)+":BASEBALL"
dataabilities="Swinging,Dancing"
 
if dataPal=2 {weapon_add("KNIFE") enemy_switch("MS.BRAN",0)
 descleft=string(_ageT)+":20\nNAT.:USA\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":108LBS"
desc="A devious woman who knows many tricks with her knives, namely piercing her foes from afar!"
	
	 descright=string(_likesT)+":CUTTING,PIGS\n"+string(_dislikesT)+":MEAT\n"+string(_hobbyT)+":WOOD CARVING"
dataabilities="Slicing,Knife Throwing"
	
	}
	
if dataPal=3 {weapon_add("DYNAMITE") enemy_switch("MS.BOOM",0)
 descleft=string(_ageT)+":28\nNAT.:USA\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":112LBS"
desc="DANGER! This lady throws dynamite around like it’s candy! Don’t get caught in the blast!"

 descright=string(_likesT)+":EXPLODING,VULTURES\n"+string(_dislikesT)+":QUIET\n"+string(_hobbyT)+":CHECKERS"
dataabilities="EXPLOSIVES,Swinging"
}

if dataPal=4 {weapon_add("WHIP") enemy_switch("MS.DOMI",0)
 descleft=string(_ageT)+":27\nNAT.:RUSSIA\n"+string(_heightT)+":5'9"+" "+string(_weightT)+":130LBS"
desc="This sadist will crack her whip at you, laughing with every lash you get."
	
 descright=string(_likesT)+":WHIPPING,SPICES\n"+string(_dislikesT)+"CATS:\n"+string(_hobbyT)+":TAMING"
dataabilities="Whips,Riding"
	
	}
  
if dataPal=5 {weapon_add("HANDGUN") enemy_switch("MS.TRIG",0) ///UNUSED
desc="A gun-toting loony who’ll make swiss cheese out of you if you’re not careful. RATATAT-TAT!"
 descleft=string(_ageT)+":23\nNAT.:FRANCE\n"+string(_heightT)+":5'7"+" "+string(_weightT)+":115LBS"	
	
 descright=string(_likesT)+":SHOOTING,HOTDOGS\n"+string(_dislikesT)+":DUCKS\n"+string(_hobbyT)+":CLAY SHOOTING"
dataabilities="Shooting,Skiing"
	
	}




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
 "Don’t mistake his size for weakness! One good shoulder charge or butt stomp will flatten you!"
)
 descleft=string(_ageT)+":41\nNAT.:RUSSIA\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":500LBS"
 
 descright=string(_likesT)+":BURGERS,BEARS\n"+string(_dislikesT)+":MICE\n"+string(_hobbyT)+":BOWLING"
dataabilities="Crushing,Charging"
 
if dataPal=2
{
enemy_switch("MR.WIDE",0)
 descleft=string(_ageT)+":39\nNAT.:RUSSIA\n"+string(_heightT)+":6'1"+" "+string(_weightT)+":480LBS"
desc="This big lug hasn’t worked out as much as his peers, but he can still hurt so watch out!"

 descright=string(_likesT)+":HAM,BEARS\n"+string(_dislikesT)+":MICE\n"+string(_hobbyT)+":FOOTBALL"
dataabilities="Crushing,Charging"

}
if dataPal=3
{
enemy_switch("MR.HUGE",0)
 descleft=string(_ageT)+":45\nNAT.:RUSSIA\n"+string(_heightT)+":6'3"+" "+string(_weightT)+":550LBS"
desc="Most of his “fat” is actually muscle waiting to flex! His charge is faster, too!"

 descright=string(_likesT)+":SANDWICHES,BEARS\n"+string(_dislikesT)+":MICE\n"+string(_hobbyT)+":FILM WATCHING"
dataabilities="Crushing,Charging"

}

break;
  case 8:  enemyID=28 hp=0.8
 charinfo_set(13,spr_boxer_stand,2,animsetup_enemy,draw_enemy,spr_boxerpal,2,spr_enemyface,8,"MS.PUNCH",
 "Quick on her twig legs, her charged punches, uppercuts and combos will have you reeling!")
 
  descleft=string(_ageT)+":38\nNAT.:GERMANY\n"+string(_heightT)+":8'2"+" "+string(_weightT)+":320LBS"
 
  descright=string(_likesT)+":KNOCKOUTS,BEEF\n"+string(_dislikesT)+":FLYING THINGS\n"+string(_hobbyT)+":FASHION"
dataabilities="Boxing,Charging"
 
if dataPal=2
{
enemy_switch("MS.JAB",0)
descleft=string(_ageT)+":38\nNAT.:GERMANY\n"+string(_heightT)+":8'1"+" "+string(_weightT)+":300LBS"
desc="These pugilists are still in the pumping process, taking notes from their punching mentors."

 descright=string(_likesT)+":KNOCKOUTS,HAM\n"+string(_dislikesT)+":CROWS\n"+string(_hobbyT)+":BAR HOPPING"
dataabilities="Crushing,Charging"
}
break;
  case 9: hp=0.8
  idlestyle=1  enemyID=30 
 charinfo_set(14,spr_wrestler_stand,2,animsetup_enemy,draw_enemy,spr_ninjapal,0,spr_enemyface,19,"MS.SLAMS",
 "Don’t underestimate these round crooks, they’ll grab, slam and roll you into a floor stain!")

descleft=string(_ageT)+":35\nNAT.:USA\n"+string(_heightT)+":5'5"+" "+string(_weightT)+":500LBS" 

 descright=string(_likesT)+":DOMINATING,TEA\n"+string(_dislikesT)+":TOMATOES\n"+string(_hobbyT)+":PIE BAKING"
dataabilities="Wrestling,Rolling"

if dataPal=2
{
enemy_switch("MS.CRUSH",0)
descleft=string(_ageT)+":33\nNAT.:USA\n"+string(_heightT)+":5'5"+" "+string(_weightT)+":500LBS" 
desc="These girls are surprisingly more athletic, and can pancake you with a flying belly flop!"

 descright=string(_likesT)+":CRUSHING,CARAMEL\n"+string(_dislikesT)+":GRAPES\n"+string(_hobbyT)+":CUPCAKE BAKING"
dataabilities="Wrestling,Bellyflop"

}
break;
  case 10:  enemyID=32 hp=1
 idlestyle=1
 charinfo_set(15,spr_strongburg_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,2,spr_enemyface,37,"MR.CHIP",
"A former lumberjack with gains, deadly bearhugs and whirling punches to show it!")
descleft=string(_ageT)+":38\nNAT.:CANADA\n"+string(_heightT)+":8'3"+" "+string(_weightT)+":400LBS" 

 descright=string(_likesT)+":TREES,MOOSES\n"+string(_dislikesT)+":RUDENESS\n"+string(_hobbyT)+":HOUSE BUILDING"
dataabilities="Wrestling,Crushing"

if dataPal=2
{
enemy_switch("MR.DALE",0)
desc="This massive man will jump and kick you back before coming in for a crushing hug!"
descleft=string(_ageT)+":37\nNAT.:CANADA\n"+string(_heightT)+":8'2"+" "+string(_weightT)+":380LBS" 

 descright=string(_likesT)+":TREES,MOOSES\n"+string(_dislikesT)+":RUSHING\n"+string(_hobbyT)+":WOOD CUTTING"
dataabilities="Wrestling,Kicking"
}
break;
  case 11: hp=0.35
 idlestyle=1  enemyID=34 
 charinfo_set(16,spr_monk_stand,3,animsetup_enemy,draw_enemy,spr_ninjapal,2,spr_enemyface,44,"MS.KI",
"A well trained martial artist who closes the distance with a thick hip check before unleashing her aura on you!")
descleft=string(_ageT)+":28\nNAT.:CHINA\n"+string(_heightT)+":5'7"+" "+string(_weightT)+":100LBS" 

 descright=string(_likesT)+":BROCCOLI,FISH\n"+string(_dislikesT)+":PANTS\n"+string(_hobbyT)+":FITNESS"
dataabilities="Martial Arts,Knitting"

if dataPal=2
{
enemy_switch("MS.CHI",0)
desc="This girl channels her ki into her punches, assaulting you with a flurry of fists!"
descleft=string(_ageT)+":29\nNAT.:CHINA\n"+string(_heightT)+":5'6"+" "+string(_weightT)+":110LBS" 

 descright=string(_likesT)+":SOUP,BUTTERFLIES\n"+string(_dislikesT)+":SKIRTS\n"+string(_hobbyT)+":EXERCISE"
dataabilities="Martial Arts,Rapid Fists"

}
if dataPal=3
{
enemy_switch("MS.MANA",0)
desc="A natural ki master, she has both Ki and Chi’s techniques down and then some!"
descleft=string(_ageT)+":32\nNAT.:CHINA\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":120LBS" 

 descright=string(_likesT)+":NOVELS,TIGERS\n"+string(_dislikesT)+":DRESSES\n"+string(_hobbyT)+":MEDITATION"
dataabilities="Martial Arts,Rapid Fists"

}

break;
  case 12: hp=0.3
 idlestyle=3 enemyID=37
 charinfo_set(16,spr_harpye_stand,2,animsetup_enemy,draw_enemy,spr_zombiepal,0,spr_enemyface,61,"WINGY",
"They take to the skies with style, mercilessly tackling their prey.")
descleft=string(_ageT)+":21\nNAT.:GREECE\n"+string(_heightT)+":4'5"+" "+string(_weightT)+":100LBS" 

 descright=string(_likesT)+":FISH,SCENERY\n"+string(_dislikesT)+":INTERRUPTIONS\n"+string(_hobbyT)+":EXPLORING"
dataabilities="Flying,Charging"

if dataPal=2
{
enemy_switch("ICARA",0)
desc="Protect your ears! These songbirds have a special song to lull you to instant sleep!"
descleft=string(_ageT)+":23\nNAT.:GREECE\n"+string(_heightT)+":4'5"+" "+string(_weightT)+":105LBS" 

 descright=string(_likesT)+":FISH,MUSIC\n"+string(_dislikesT)+":DISRUPTIONS\n"+string(_hobbyT)+":MUSICIAN"
dataabilities="Flying,Charging"

}
break;

  case 13: ////Cowboy
 hp=0.3 enemyID=130 idlestyle=1
 charinfo_set(12,spr_cowboy_stand,2,animsetup_enemy,draw_enemy,spr_ninjapal,0,spr_enemyface,64,"BILL",
"A western gunman who's more of a vigilante than an outlaw. Watch out for the big iron on his hip!")
descleft=string(_ageT)+":32\nNAT.:USA\n"+string(_heightT)+":4'6"+" "+string(_weightT)+":105LBS" 

 descright=string(_likesT)+":HORSES,BACON\n"+string(_dislikesT)+":BANDITS\n"+string(_hobbyT)+":CAN SHOOTING"
dataabilities="Shooting, Horse Riding"

if dataPal=2
{
enemy_switch("BUCK",0)
desc="This gunner's a bit more trigger happy than his colleague. Don't get filled with holes!"
descleft=string(_ageT)+":34\nNAT.:USA\n"+string(_heightT)+":4'6"+" "+string(_weightT)+":107LBS" 

 descright=string(_likesT)+":HORSES,STEAK\n"+string(_dislikesT)+":OUTLAWS\n"+string(_hobbyT)+":PIANO PLAYING"
dataabilities="Shooting, Horse Riding, Piano"
}
if dataPal=3
enemy_switch("PESO",0)

break;

  case 14:
  hp=0.25 enemyID=39
 charinfo_set(17,spr_zombiem_stand,3,animsetup_zombie,draw_enemy,spr_zombiepal,0,spr_enemyface,13,"ZOMBILLY",
 "A clumsy zombie who rushes his foes, but is prone to tripping and accidentally tackling them.")
descleft=string(_ageT)+":DEAD\nNAT.:BRITAIN\n"+string(_heightT)+":5'12"+" "+string(_weightT)+":85LBS"  

 descright=string(_likesT)+":PAINTINGS,DECOR\n"+string(_dislikesT)+":STIFFNESS\n"+string(_hobbyT)+":BALL DANCING"
dataabilities="Charging,Tripping"

if dataPal=2
{
enemy_switch("ZOMBOBBY",0)
desc="This cadaver’s got more sure footing, and will grab you for a nasty bite!"
descleft=string(_ageT)+":DEAD\nNAT.:FRANCE\n"+string(_heightT)+":5'13"+" "+string(_weightT)+":87LBS" 

 descright=string(_likesT)+":PAINTINGS,WINE\n"+string(_dislikesT)+":BAD BREATH\n"+string(_hobbyT)+":VIOLIN PLAYING"
dataabilities="Charging,Biting"
}
if dataPal=3
{
enemy_switch("MORTI",0)
desc="This bog shambler is a lot more bitey compared to his cousins. Surprisingly cleaner, though."
descleft=string(_ageT)+":DEAD\nNAT.:CAJUN\n"+string(_heightT)+":5'10"+" "+string(_weightT)+":83LBS" 

 descright=string(_likesT)+":NATURE,MUSHROOMS\n"+string(_dislikesT)+":ROT\n"+string(_hobbyT)+":BANJO PLAYING"
dataabilities="Charging,Biting"
}

break;
  case 15:
    hp=0.25 enemyID=42
 charinfo_set(12,spr_zombiew_stand,3,animsetup_zombie,draw_enemy,spr_zombiepal,0,spr_enemyface,14,"ZOMBETTY",
 "She calls herself a beauty, despite a missing jaw. Those who are rude will be the subject of her acidic spits!")
descleft=string(_ageT)+":DEAD\nNAT.:FRANCE\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":83LBS" 

 descright=string(_likesT)+":MAKEUP,BRUSHES\n"+string(_dislikesT)+":RUDENESS\n"+string(_hobbyT)+":HAIR GROOMING"
dataabilities="Acid Spit"

if dataPal=2
{
enemy_switch("ZOMBELLE",0)
desc="This undead primadonna takes pride in her nails… Because they’re sharp as blades."
descleft=string(_ageT)+":DEAD\nNAT.:BRITAIN\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":82LBS" 

 descright=string(_likesT)+":PLAYS,PAINTINGS\n"+string(_dislikesT)+":NAIL BREAKING\n"+string(_hobbyT)+":NAIL CARE"
dataabilities="Sharp Nails"
}
if dataPal=3
{
enemy_switch("RIGORA",0)
desc="Acid spit and sharp claws are the telltale sign for this jawless shambler! Is she just lonely?"
descleft=string(_ageT)+":DEAD\nNAT.:CAJUN\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":82LBS" 

 descright=string(_likesT)+":NATURE,LETTUCE\n"+string(_dislikesT)+":WORMS\n"+string(_hobbyT)+":HARVESTING"
dataabilities="Acid Spit, Sharp Nails"

}

break;
  case 16:
  hp=0.25 enemyID=45  idlestyle=1
   if dataPal=1
{current_pal=0
 charinfo_set(12,spr_skeleton_stand,2,animsetup_enemy,draw_enemy,spr_mummypal,0,spr_enemyface,21,"SKELLA", 
 "Skeletal former ballerinas with the kicks to prove it. They’re quite sassy, too!")
 descleft=string(_ageT)+":DEAD\nNAT.:FRENCH\n"+string(_heightT)+":5'10"+" "+string(_weightT)+":22LBS" 
 
  descright=string(_likesT)+":THEATER,ACTS\n"+string(_dislikesT)+":DISRUPTORS\n"+string(_hobbyT)+":BALLET"
dataabilities="Ballerina, Kicking"
 
 }
    if dataPal=2
{current_pal=1 enemyID=46 hp=0.3
 charinfo_set(12,spr_skeleton_stand,2,animsetup_enemy,draw_enemy,spr_mummypal,1,spr_enemyface,21,"SKELIE", 
 "Once jolly jugglers, now bony bombardiers who can chuck pieces of themselves at you!")
  descleft=string(_ageT)+":DEAD\nNAT.:FRENCH\n"+string(_heightT)+":5'10"+" "+string(_weightT)+":26LBS" 
 
   descright=string(_likesT)+":THEATER,ROYALTY\n"+string(_dislikesT)+":HECKLERS\n"+string(_hobbyT)+":JUGGLING"
dataabilities="Juggling, Bone Throwing"
 
 } 
break;

  case 17: ////Knight
 hp=1.0 enemyID=133 idlestyle=1
 charinfo_set(12,spr_knight_stand,2,animsetup_enemy,draw_swing,spr_robotpal,0,spr_enemyface,65,"GARETH",
 "Once respected knights, but now chivalry is dead to these fellows! And by their sword, you may be too!")
   descleft=string(_ageT)+":32\nNAT.:BRITAIN\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":170LBS" 
 
  descright=string(_likesT)+":TALES,LIONS\n"+string(_dislikesT)+":SCOUNDRELS\n"+string(_hobbyT)+":JOUSTING"
dataabilities="Sword Fighting"
 
if dataPal=2
{
enemy_switch("DANIEL",0)
desc="Skilled with blunt weaponry, they'll bonk you good! Apparently has bad history with arrows."
   descleft=string(_ageT)+":33\nNAT.:BRITAIN\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":170LBS" 

  descright=string(_likesT)+":STORIES,STATUES\n"+string(_dislikesT)+":POINTY THINGS\n"+string(_hobbyT)+":BOOK WRITING"
dataabilities="Club Swinging"

}
if dataPal=3
enemy_switch("ARTIE",0)

weapon_add("SWORD")

if dataPal=2 weapon_add("CLUB")
//if dataPal=3 weapon_add("CLUB")
	////Stand
	if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,21,-36,90,weaponcolor)
	if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,22,-37,90,weaponcolor)
	if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,23,-36,90,weaponcolor)

break;

  case 18: enemyID=47 hp=0.3
  weapon_add("AXE") 
 weaponX=14
weaponY=-69-4
  weaponanim(weaponspr,weaponIndex,lerp(weaponX,0,1),lerp(weaponY,0,1),lerp(weaponangle,90,1),weaponcolor)
  
 charinfo_set(12,mask_none,1,animsetup_enemy,draw_swing,spr_zombiepal,0,spr_miscface,0,"AXE",
"This cursed axe belongs to a ghostly executioner. Beware, as it still longs for heads to cut off!")

   descleft="NAT.:BRITAIN\n"+string(_heightT)+":4'5"+" "+string(_weightT)+":6LBS" 

  descright=string(_likesT)+":CUTTING\n"+string(_dislikesT)+":DULLING\n"+string(_hobbyT)+":HEDGE CUTTING"
dataabilities="Axe Possession"

//sword "An ancient blade possessed by a vengeful spirit of royal bloodline... Approach with caution!"
//scimitar "These enchanted swords follow their mistress’s will. Take out their source and they will crumble!"
break;

  case 19:
 
  ////Paintings
  hp=0.5 enemyID=48
  paintingSpr=spr_painting1 frameSpr=spr_painting_base
 charinfo_set(12,spr_painting_base,7,animsetup_enemy,painting_draw,spr_zombiepal,0,spr_miscface,0,"ALBUS",
"This painting houses the spirit of a renowned auteur, forever angry about an unfinished story.")
descleft=string(_ageT)+":DEAD\nNAT.:ITALY\n" 

  descright=string(_likesT)+":HORROR,NOVELS\n"+string(_dislikesT)+":NEW MEDIA\n"+string(_hobbyT)+":FILM MAKING"
dataabilities="Possession,Film Making"

    if dataPal=2
	{paintingSpr=spr_painting2 enemyID=49
 charinfo_set(12,spr_painting_base,7,animsetup_enemy,painting_draw,spr_zombiepal,0,spr_miscface,0,"ANNIE",
"A high class socialite haunts this painting, hoping to make spirits of the living join her.")	
descleft=string(_ageT)+":DEAD\nNAT.:BRITAIN\n" 

  descright=string(_likesT)+":FANCINESS,BALLS\n"+string(_dislikesT)+":LOUD COLORS\n"+string(_hobbyT)+":COSTUME MAKING"
dataabilities="Possession,Dress Making"

}
	    if dataPal=3
		{paintingSpr=spr_painting3 enemyID=50
 charinfo_set(12,spr_painting_base,7,animsetup_enemy,painting_draw,spr_zombiepal,0,spr_miscface,0,"FREDERICK",
"The ghost of a renaissance man commands this portrait, unable to let go of a past war.")
descleft=string(_ageT)+":DEAD\nNAT.:GERMANY\n" 

  descright=string(_likesT)+":WARS,EXPLOSIONS\n"+string(_dislikesT)+":WAR REMINDER\n"+string(_hobbyT)+":WEAPON COLLECTING"
dataabilities="Possession,Marksman"

}

///Hieroglyphs
if dataPal>=4 
{
descleft="NAT.:EGYPT" 

descright=""
dataabilities=""
}
		if dataPal=4
		{paintingSpr=spr_heye enemyID=125 frameSpr=spr_hieroglyph_base
 charinfo_set(12,spr_hieroglyph_base,7,animsetup_enemy,painting_draw,spr_zombiepal,0,spr_miscface,0,"HORUS",
"A living hieroglyph of an eye of Horus. It's gaze is harsh, judgemental and utterly soul-piercing.")
}
	    if dataPal=5
		{paintingSpr=spr_heys enemyID=126 frameSpr=spr_hieroglyph_base 
 charinfo_set(12,spr_hieroglyph_base,7,animsetup_enemy,painting_draw,spr_zombiepal,0,spr_miscface,0,"SCARAB",
"A living hieroglyph of a scarab. A single one of them carries the fury of an entire swarm.")}
	    if dataPal=6 
		{paintingSpr=spr_heyankh enemyID=127 frameSpr=spr_hieroglyph_base
 charinfo_set(12,spr_hieroglyph_base,7,animsetup_enemy,painting_draw,spr_zombiepal,0,spr_miscface,0,"ANKH",
"A living hieroglyph of an ankh. Normally a symbol of life, but this one will try to bring you death.")}
	    if dataPal=7
		{paintingSpr=spr_heya enemyID=128 frameSpr=spr_hieroglyph_base
 charinfo_set(12,spr_hieroglyph_base,7,animsetup_enemy,painting_draw,spr_zombiepal,0,spr_miscface,0,"ANUBIS",
"A living hieroglyph of Anubis. Thinks it's the real deal and angrily strikes those who deny it.")}

break;


  case 20:
  hp=0.2 enemyID=51
 charinfo_set(12,spr_catman_stand,2,animsetup_enemy,draw_enemy,spr_mummypal,0,spr_enemyface,12,"MAU",
"A cranky old cat whose claws haven’t dulled with time. Don’t become his new scratching post!")

descleft=string(_ageT)+":ANCIENT\nNAT.:EGYPT\n"+string(_heightT)+":3'10"+" "+string(_weightT)+":80LBS" 

descright=string(_likesT)+":STRING,MICE\n"+string(_dislikesT)+":ROBBERS\n"+string(_hobbyT)+":HARP PLAYING"
dataabilities="Cat Powers, Scratching"

if dataPal=2
{
enemy_switch("BASTET",0)
desc="Not as cranky as Mau, but more devious as she can turn you into her yarn with her wraps!"
descleft=string(_ageT)+":ANCIENT\nNAT.:EGYPT\n"+string(_heightT)+":3'9"+" "+string(_weightT)+":78LBS" 

descright=string(_likesT)+":WRAPS,MICE\n"+string(_dislikesT)+":RAIDERS\n"+string(_hobbyT)+":YARN WRAPPING"
dataabilities="Cat Powers, Scratching, Wrapping"
}

break;
  case 21:
  idlestyle= hp=0.5 enemyID=53 idlestyle=1
 charinfo_set(12,spr_cobra_stand,2,animsetup_enemy,draw_enemy,spr_mummypal,0,spr_enemyface,24,"ASPA",
"A snake lady with snake arms that can stretch long distances to take a bite out of you!")
descleft=string(_ageT)+":ANCIENT\nNAT.:EGYPT\n"+string(_heightT)+":7'2"+" "+string(_weightT)+":160LBS" 

descright=string(_likesT)+":MUSIC,ARTS\n"+string(_dislikesT)+":ROBBERS\n"+string(_hobbyT)+":FLUTE PLAYING"
dataabilities="Snake Hands, Kicking"

if dataPal=2
{
enemy_switch("VIPERA",0)
desc="This snake’s arms spew poisonous, paralyzing gas! Hold your breath!"
descleft=string(_ageT)+":ANCIENT\nNAT.:EGYPT\n"+string(_heightT)+":7'3"+" "+string(_weightT)+":170LBS" 

descright=string(_likesT)+":MUSIC,SCENERY\n"+string(_dislikesT)+":RAIDERS\n"+string(_hobbyT)+":SMOKE TRICKS"
dataabilities="Snake Hands, Poison, Kicking"
}
break;
  case 22: enemyID=55
  hp=0.3
 charinfo_set(12,spr_ninjabun_stand,3,animsetup_enemy,draw_enemy,spr_ninjapal,0,spr_enemyface,15,"USAGI",
"Simultaneously disciplined ninjas and casino bunny girls. Watch for their card tricks!")
descleft=string(_ageT)+":27\nNAT.:JAPAN\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":150LBS" 

descright=string(_likesT)+":GOOD PAY,CARROTS\n"+string(_dislikesT)+":CHEATS\n"+string(_hobbyT)+":CARD PLAYING"
dataabilities="Ninjutsu,Gambling"

if dataPal=2
enemy_switch("NOUSAGI",0)
{
desc="These bunnies carry lucky fuzzy dice bolas, but you’ll feel unlucky when they catch you!"
descleft=string(_ageT)+":22\nNAT.:JAPAN\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":140LBS" 

descright=string(_likesT)+":GOOD TIPS,CARROTS\n"+string(_dislikesT)+":CHEAPSTAKES\n"+string(_hobbyT)+":DICE PLAYING"
dataabilities="Ninjutsu,Gambling"
}
if dataPal=3
{
enemy_switch("KONI",0)
desc="The bouncers of the casino, they’ll grab their targets for a devastating ninja suplex!"
descleft=string(_ageT)+":30\nNAT.:JAPAN\n"+string(_heightT)+":5'9"+" "+string(_weightT)+":130LBS" 

descright=string(_likesT)+":PROMOTIONS,CARROTS\n"+string(_dislikesT)+":CHEATS\n"+string(_hobbyT)+":BARTENDING"
dataabilities="Ninjutsu,Gambling,\nBrewing"

}
break;
  case 23:
  hp=0.4 enemyID=58 idlestyle=1
 charinfo_set(12,spr_samurai_stand,2,animsetup_enemy,draw_enemy,spr_ninjapal,0,spr_enemyface,16,"SAKE",
"Domino themed samurai with a swift guard and an even swifter charging slice!")
descleft=string(_ageT)+":32\nNAT.:JAPAN\n"+string(_heightT)+":6'0"+" "+string(_weightT)+":140LBS"

descright=string(_likesT)+":GOOD DRINKS,MEAT\n"+string(_dislikesT)+":CHEATS\n"+string(_hobbyT)+":MEDITATING"
dataabilities="Katana,Gambling"

if dataPal=2
{
enemy_switch("MUGI",0)
desc="These samurai are still in training, but they can still knock you down like a row of dominos!"

descleft=string(_ageT)+":25\nNAT.:JAPAN\n"+string(_heightT)+":6'0"+" "+string(_weightT)+":130LBS" 

descright=string(_likesT)+":NICE DRINKS,MEAT\n"+string(_dislikesT)+":CHEATS\n"+string(_hobbyT)+":PRACTICING"
dataabilities="Katana,Gambling"
}
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
"Silly marionette clowns who put on a good show for the crowd while kicking around foes.")
descleft=string(_ageT)+":20\nNAT.:ITALY\n"+string(_heightT)+":6'10"+" "+string(_weightT)+":120LBS" 

descright=string(_likesT)+":GOOFING,PIES\n"+string(_dislikesT)+":FROWNS\n"+string(_hobbyT)+":Entertaining"
dataabilities="Puppetry,Juggling"

 if dataPal=2
 {
	enemy_switch("MARI",0)
desc="These mischievous marionettes love carousels so much they even spin like one at times!"
descleft=string(_ageT)+":22\nNAT.:ITALY\n"+string(_heightT)+":6'10"+" "+string(_weightT)+":120LBS" 

descright=string(_likesT)+":CAROUSELS,Candy\n"+string(_dislikesT)+":GRUMPS\n"+string(_hobbyT)+":Parading"
dataabilities="Puppetry,Juggling"

 }
  if dataPal=3
 {
	enemy_switch("POPPI",0)
desc="Talented jugglers, they can also toss their sticks at you and still have more at the ready."

descleft=string(_ageT)+":25\nNAT.:ITALY\n"+string(_heightT)+":6'10"+" "+string(_weightT)+":120LBS" 

descright=string(_likesT)+":JOKING,ELEPHANTS\n"+string(_dislikesT)+":SADNESS\n"+string(_hobbyT)+":Animal Taming"
dataabilities="Puppetry,Juggling"

 }
 
 break;
   case 25: enemyID=63
  idlestyle=1 hp=0.2
  
var _tedage=23;
  
 charinfo_set(12,spr_bear_stand,6,animsetup_enemy,draw_enemy,spr_bearpal,0,spr_enemyface,49,"ROOSEVELT",
"Adorable plush bears with a tendency to deck naughty people until they behave.")

descright=string(_likesT)+":CHEERS,GAMES\n"+string(_dislikesT)+":NAUGHTIES\n"+string(_hobbyT)+":FISHING"
dataabilities="Plush Combat"

 if dataPal=2 {enemy_switch("TEDDIE",0) _tedage=21
	desc="This bear is a bit shy around crowds, but he seeks friendship… And to punish baddies."
 
 descright=string(_likesT)+":FRIENDSHIP,HUGS\n"+string(_dislikesT)+":CROWDS\n"+string(_hobbyT)+":KNITTING"
 
 }
  if dataPal=3 {enemy_switch("YOGI",0) _tedage=25
	 desc="Often seen giving out snacks to visitors. He also insists he’s smarter than most bears."
 
 descright=string(_likesT)+":SNACKS,PICNICS\n"+string(_dislikesT)+":CAVES\n"+string(_hobbyT)+":EXPLORING"
 
 }
  if dataPal=4 {enemy_switch("FOZZI",0) _tedage=32
	 desc="Having watched many comedians, he does his own stand-up. Jury’s out on the joke quality."
 
 descright=string(_likesT)+":COMEDIES,JOKES\n"+string(_dislikesT)+":HECKLERS\n"+string(_hobbyT)+":WRITING" 
 
 }
  if dataPal=5 {enemy_switch("PADDY",0) _tedage=28
	  desc="A kind and polite bear who’s popular with kids. Bad people are greeted with a hard stare."
 
 descright=string(_likesT)+":MARMALADE,BALLOONS\n"+string(_dislikesT)+":BAD PEOPLE\n"+string(_hobbyT)+":BOOK READING"
 
 }
  if dataPal=6 {enemy_switch("MONO",0) _tedage=19
	  desc="Underneath its monotone exterior, it enjoys watching others’ misfortune and despair."
 
 descright=string(_likesT)+":PAIN,DESPAIR\n"+string(_dislikesT)+":DISOBEDIENCE\n"+string(_hobbyT)+":TEACHING"
 
 }
 
  descleft=string(_ageT)+":"+string(_tedage)+"\nNAT.:ITALY\n"+string(_heightT)+":4'7"+" "+string(_weightT)+":40LBS"  
 
 break;
 case 26: hp=0.25 enemyID=69
 charinfo_set(12,spr_fairy_stand,3,animsetup_enemy,draw_enemy,spr_fairypal,0,spr_enemyface,53,"BELLE",
"With strong legs, elegant ballet moves and magical heart bullets, this fairy is not your friend.")

descleft=string(_ageT)+":25\nNAT.:FRANCE\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":85LBS" 

descright=string(_likesT)+":MUSIC,ARTS\n"+string(_dislikesT)+":SALT\n"+string(_hobbyT)+":BALLET"
 dataabilities="Fairy Magic,Ballerina"

  if dataPal=2 {enemy_switch("WENDY",0)
	  desc="Obsessed with flying, she’ll often spin before leaping through the air with a fierce kick."
	  descleft=string(_ageT)+":26\nNAT.:BRITAIN\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":85LBS" 

descright=string(_likesT)+":MUSIC,NOVELS\n"+string(_dislikesT)+":PIRATES\n"+string(_hobbyT)+":BOOK READING"
 dataabilities="Fairy Magic,Ballerina" 
	
	  }
  if dataPal=3 {enemy_switch("LUSH",0)
	  desc="An ice fairy whose heart bullets are just as cold to the touch as her personality."
	  descleft=string(_ageT)+":28\nNAT.:RUSSIA\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":125LBS" 
	  
descright=string(_likesT)+":MUSIC,SNOW\n"+string(_dislikesT)+":SPICE\n"+string(_hobbyT)+":ICE SCULPTING"
 dataabilities="Fairy Magic,Ballerina,Cold" 
	 
	  }

 break;
   case 27: enemyID=72
   idlestyle=1 hp=0.6
 charinfo_set(12,spr_plant_stand,3,animsetup_enemy,draw_enemy,spr_plantpal,0,spr_enemyface,29,"FLORA",
"A dangerous carnivorous plant known for chomping people into pieces and swallowing them.")
	  descleft=string(_ageT)+":34\nNAT.:USA\n"+string(_heightT)+":6'4"+" "+string(_weightT)+":180LBS"

descright=string(_likesT)+":NATURE,MEAT\n"+string(_dislikesT)+":CHEAP MEAT\n"+string(_hobbyT)+":GARDENING"
 dataabilities="Carnivore Plant Powers"

  if dataPal=2 {enemy_switch("PETI",0)
desc="These crafty predators catch their prey by spraying a stunning toxin at them." 

descright=string(_likesT)+":NATURE,MEAT\n"+string(_dislikesT)+":POLLUTION\n"+string(_hobbyT)+":DECORATING"
 dataabilities="Carnivore Plant Powers,Toxin"

	  descleft=string(_ageT)+":32\nNAT.:USA\n"+string(_heightT)+":6'4"+" "+string(_weightT)+":185LBS"
	 }
  if dataPal=3 {enemy_switch("FOLI",0)
	  desc="Conniving plants that prefer to knock their prey out with spitting seeds as hard as bullets!"
	  	  descleft=string(_ageT)+":35\nNAT.:USA\n"+string(_heightT)+":6'5"+" "+string(_weightT)+":190LBS"
	  	  
		  descright=string(_likesT)+":NATURE,MEAT\n"+string(_dislikesT)+":COLD\n"+string(_hobbyT)+":HARVESTING"
 dataabilities="Carnivore Plant Powers,Seed Shooting"
		  
		  }

break;

  case 28: enemyID=117
  idlestyle=1 hp=0.4
 charinfo_set(12,spr_beelady_stand,3,animsetup_enemy,draw_enemy,spr_dancerpal,0,spr_enemyface,63,"BEEATRICE",
"A bee lady with style and honey to spare. But provoke her and you’ll face her stinger.")
descleft=string(_ageT)+":25\nNAT.:AFRICA\n"+string(_heightT)+":6'10"+" "+string(_weightT)+":100LBS"

descright=string(_likesT)+":FASHION,NECTAR\n"+string(_dislikesT)+":BEARS\n"+string(_hobbyT)+":GARDENING"
 dataabilities="Bee Stinger, Acidic Honey"

  if dataPal=2 {enemy_switch("HONEYDEW",0)
desc="These buzzing beauties are hardened fighters. Though they may have a hidden sweet side."
descleft=string(_ageT)+":30\nNAT.:AFRICA\n"+string(_heightT)+":6'10"+" "+string(_weightT)+":110LBS"

descright=string(_likesT)+":FASHION,NECTAR\n"+string(_dislikesT)+":NEST BREAKERS\n"+string(_hobbyT)+":DECORATING"
 dataabilities="Bee Stinger, Acidic Honey"

	  }
  if dataPal=3 {enemy_switch("WASPELLA",0)
desc="Her stinger is much nastier than others. The venom makes you blimp up like a balloon!"

descleft=string(_ageT)+":35\nNAT.:AFRICA\n"+string(_heightT)+":6'10"+" "+string(_weightT)+":120LBS"
	  
descright=string(_likesT)+":FASHION,NECTAR\n"+string(_dislikesT)+":RUDENESS\n"+string(_hobbyT)+":BALL DANCING"
 dataabilities="Nasty Bee Stinger, Acidic Honey"	 
	  
	  }
///PINCHER

break;

  case 29: enemyID=75
  hp=0.2 idlestyle=1
 charinfo_set(12,spr_lobster_stand,2,animsetup_enemy,draw_enemy,spr_lobsterpal,0,spr_enemyface,42,"PINCHO",
"A big bipedal lobster with an even bigger pinch. Has quite the bubbly temper, too.")
descleft=string(_ageT)+":35\nNAT.:FRANCE\n"+string(_heightT)+":6'11"+" "+string(_weightT)+":170LBS"

descright=string(_likesT)+":FANCYNESS,FOOD\n"+string(_dislikesT)+":BAD FOOD\n"+string(_hobbyT)+":FOOD CRITIC"
 dataabilities="Lobster Claws, Bubbling"

  if dataPal=2 {enemy_switch("PINCHER",0)
desc="This crustacean has so much fight in him, he’ll crush anyone with his charging claw!" 
descleft=string(_ageT)+":36\nNAT.:FRANCE\n"+string(_heightT)+":6'12"+" "+string(_weightT)+":175LBS"
	 
descright=string(_likesT)+":BRAWLING,FOOD\n"+string(_dislikesT)+":OILY FOOD\n"+string(_hobbyT)+":BAR HOPPING"
 dataabilities="Claw Charge, Bubbling" 
	
	 }
///PINCHER

break;
case 30: enemyID=77
weapon_add("SCIMITAR")
idlestyle=1 hp=0.25
charinfo_set(12,spr_dancer_stand,3,animsetup_enemy,draw_swing,spr_dancerpal,0,spr_enemyface,50,"DANZA",
"Graceful entertainers who distract foes with their dance before kicking and cutting them apart.")
 
 descleft=string(_ageT)+":26\nNAT.:MIDDLE EAST\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":120LBS"
 
 descright=string(_likesT)+":FANCYNESS,FLOWERS\n"+string(_dislikesT)+":RUDENESS\n"+string(_hobbyT)+":EXERCISE"
 dataabilities="Sword Fighting,Acrobatics"
 
 weaponBack=1
if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,-16,-91,0,weaponcolor)
if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,-15,-90,0,weaponcolor)
if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,-15,-88,0,weaponcolor)
 
  if dataPal=2 {enemy_switch("RULA",0)
desc="These mystifying dancers are highly sought after, both as entertainers AND as bodyguards."

 descleft=string(_ageT)+":28\nNAT.:MIDDLE EAST\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":125LBS"

 descright=string(_likesT)+":FANCYNESS,ROSES\n"+string(_dislikesT)+":INFIDELS\n"+string(_hobbyT)+":CATERING"
 dataabilities="Sword Fighting,Acrobatics"

	  }
  if dataPal=3 {enemy_switch("JAZMYN",0)
desc="With a mysterious spell, they can bring their scimitars to life for assistance in battle!"

 descleft=string(_ageT)+":ANCIENT\nNAT.:MIDDLE EAST\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":130LBS"
	
descright=string(_likesT)+":FANCYNESS,JEWELS\n"+string(_dislikesT)+":INTERLOPERS\n"+string(_hobbyT)+":MASSAGES"
 dataabilities="Magic Sword Fighting,Acrobatics"
	
	}
 
 break; 
  case 31:
 hp=0.25 enemyID=80
idlestyle=1


 charinfo_set(12,spr_diver_stand,2,animsetup_enemy,draw_swing,spr_ninjapal,0,spr_enemyface,45,"MR.DIVE",
"Van Bad’s undersea division, quite agile due to much underwater combat experience.")

 descleft=string(_ageT)+":34\nNAT.:FRANCE\n"+string(_heightT)+":5'7"+" "+string(_weightT)+":150LBS"

 descright=string(_likesT)+":FISH,SCENERY\n"+string(_dislikesT)+":DOLPHINS\n"+string(_hobbyT)+":FISHING"
 dataabilities="UNDERWATER COMBAT"

  if dataPal=2 {weapon_add("HARPOONGUN") enemy_switch("MR.DROP",0)
desc="The elite of the divers, they even have the privilege of carrying harpoon guns!"	 

 descleft=string(_ageT)+":36\nNAT.:FRANCE\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":155LBS"

 descright=string(_likesT)+":FISH,SCENERY\n"+string(_dislikesT)+":DOLPHINS\n"+string(_hobbyT)+":HARPOONING"
 dataabilities="UNDERWATER COMBAT,HARPOON"

}

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
"Gilled guardians of the deep who punish intruders with their spears and physical strength.")

 descleft=string(_ageT)+":25\nNAT.:GREECE\n"+string(_heightT)+":5'10"+" "+string(_weightT)+":150LBS"

  if dataPal=1 weapon_add("SPEAR")

 descright=string(_likesT)+":MUSCLES,FIGHTS\n"+string(_dislikesT)+":UNFAIRNESS\n"+string(_hobbyT)+":WORKOUTS"
 dataabilities="SPEAR FIGHTING,BRAWLING"

  if dataPal=2 {enemy_switch("ERIK",0) weapon_add("TRIDENT")
desc="Higher in rank, they bring tridents into battle against those who pose a threat to the prince."

 descright=string(_likesT)+":MUSCLES,FIGHTS\n"+string(_dislikesT)+":UNFAIRNESS\n"+string(_hobbyT)+":SCULPTING"
 dataabilities="TRIDENT FIGHTING,BRAWLING"

 descleft=string(_ageT)+":26\nNAT.:GREECE\n"+string(_heightT)+":5'11"+" "+string(_weightT)+":156LBS"
}
  if dataPal=3 {enemy_switch("ADAM",0)
desc="Underlings of the sea witch who guard her domain with the utmost loyalty."

 descleft=string(_ageT)+":23\nNAT.:GREECE\n"+string(_heightT)+":5'10"+" "+string(_weightT)+":152LBS"

 descright=string(_likesT)+":MUSCLES,FIGHTS\n"+string(_dislikesT)+":UNFAIRNESS\n"+string(_hobbyT)+":SURFING"
 dataabilities="BRAWLING"

	 }
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
"Beautiful but deadly mermaids. They can shoot scalding hot balls of water from their hands!")

 descleft=string(_ageT)+":22\nNAT.:GREECE\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":150LBS"

 descright=string(_likesT)+":MUSCLES,FIGHTS\n"+string(_dislikesT)+":RUDENESS\n"+string(_hobbyT)+":HUNTING"
 dataabilities="MERMAID MAGIC,BRAWLING"

  if dataPal=2 {enemy_switch("MARINA",0)
desc="Keep out of their personal space bubble, or her hot charging fist will pop yours and your face!" 

 descleft=string(_ageT)+":23\nNAT.:GREECE\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":150LBS"
	 
 descright=string(_likesT)+":MUSCLES,FIGHTS\n"+string(_dislikesT)+":RUDENESS\n"+string(_hobbyT)+":DECORATING"
 dataabilities="MERMAID MAGIC,BRAWLING"	 
	 
	 }
  if dataPal=3 {enemy_switch("SKYLA",0)
desc="Deceptively vicious skymaids who lure their prey in with their song before pulverizing them." 

 descleft=string(_ageT)+":22\nNAT.:BRITAIN\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":150LBS"

 descright=string(_likesT)+":FRUITS,SONGS\n"+string(_dislikesT)+":MERMAIDS\n"+string(_hobbyT)+":SINGING"
 dataabilities="SKYMAID MAGIC,BRAWLING"

	 }

break;
  case 34:
 idlestyle=1
 hp=0.25 enemyID=88 
 charinfo_set(12,spr_martian_stand,3,animsetup_enemy,draw_swing,spr_zombiepal,0,spr_enemyface,23,"MARTIA",
"These space babes abduct earthly specimens! Watch out for their psychic brain shock!")
 descleft=string(_ageT)+":31\nNAT.:ALIEN\n"+string(_heightT)+":7'0"+" "+string(_weightT)+":160LBS"

 descright=string(_likesT)+":GOLD,SPECIMENS\n"+string(_dislikesT)+":JUSTICE\n"+string(_hobbyT)+":RESEARCHING"
 dataabilities="BRAINPOWER"

  if dataPal=2 {enemy_switch("INVA",0) weapon_add("TASER")
desc="Alien security guards who subdue fleeing specimens with their shocking stun batons." 

 descleft=string(_ageT)+":34\nNAT.:ALIEN\n"+string(_heightT)+":7'1"+" "+string(_weightT)+":162LBS"
 
  descright=string(_likesT)+":GOLD,SPECIMENS\n"+string(_dislikesT)+":JUSTICE\n"+string(_hobbyT)+":HUNTING"
 dataabilities="BRAINPOWER,TECHNOLOGY"
 
	 }
  if dataPal=3 {enemy_switch("EXTA",0) weapon_add("LASERGUN")
desc="Illustrious invaders who are armed with powerful laser guns for frying or capturing specimens!"	

 descleft=string(_ageT)+":28\nNAT.:ALIEN\n"+string(_heightT)+":7'0"+" "+string(_weightT)+":150LBS"

 descright=string(_likesT)+":GOLD,SPECIMENS\n"+string(_dislikesT)+":JUSTICE\n"+string(_hobbyT)+":HUNTING"
 dataabilities="BRAINPOWER,TECHNOLOGY"

}

var _weaponaddX=0;
var _weaponang=0; var _weaponadd=0; if spawnID=oLaserGun {_weaponang=-90; weaponspr=spr_lasergunE}

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
"These alien security drones are armed with electrically charged arms and lasers.")

 descleft="NAT.:ALIEN\n"+string(_heightT)+":5'0"+" "+string(_weightT)+":180LBS"

 descright=string(_likesT)+":VIOLENCE,ACTION\n"+string(_dislikesT)+":JUSTICE\n"+string(_hobbyT)+":HUNTING"
 dataabilities="TECHNOLOGY"

  if dataPal=2 {enemy_switch("DESTRON",0)
desc="These drones support the invading troops by launching powerful, bouncing bombs." 

 descleft="NAT.:ALIEN\n"+string(_heightT)+":5'0"+" "+string(_weightT)+":190LBS"
	 
 descright=string(_likesT)+":ACTION,VIOLENCE\n"+string(_dislikesT)+":JUSTICE\n"+string(_hobbyT)+":HUNTING"
 dataabilities="TECHNOLOGY"
	 
	 }

break;
  case 36: hp=0.25 enemyID=93
 idlestyle=1
 charinfo_set(12,spr_spacer_stand,2,animsetup_enemy,draw_enemy,spr_fairypal,0,spr_enemyface,43,"OJO",
"These aliens’ pets and guard dogs’ eyes turn into frightening fangs to bite into their prey!")

 descleft=string(_ageT)+":5\nNAT.:ALIEN\n"+string(_heightT)+":6'4"+" "+string(_weightT)+":100LBS"

 descright=string(_likesT)+":MEALS,APPROVAL\n"+string(_dislikesT)+":SCOLDS\n"+string(_hobbyT)+":SLEEPING"
 dataabilities="ALIEN POWERS"

  if dataPal=2 {enemy_switch("VER",0)
desc="Specially trained, these beasts fire beams to inflate targets into helpless balloons for capture." 
	  descleft=string(_ageT)+":6\nNAT.:ALIEN\n"+string(_heightT)+":6'5"+" "+string(_weightT)+":110LBS"
	 	 
 descright=string(_likesT)+":MEALS,APPROVAL\n"+string(_dislikesT)+":NO ATTENTION\n"+string(_hobbyT)+":NAPPING"
 dataabilities="ALIEN POWERS"
		 
		 }

break;
  case 37: hp=0.3 enemyID=95 idlestyle=1
  charinfo_set(12,spr_goblin_stand,2,animsetup_enemy,draw_swing,spr_zombiepal,0,spr_enemyface,27,"GOBERT",
"Workaholic goblins dedicated to mining. Disturb one and you’ll face a whole mob of ‘em!")
descleft=string(_ageT)+":31\nNAT.:FRANCE\n"+string(_heightT)+":5'0"+" "+string(_weightT)+":100LBS"

 descright=string(_likesT)+":WORK,GEMSTONES\n"+string(_dislikesT)+":DISRUPTIONS\n"+string(_hobbyT)+":NONE"
 dataabilities="Mining"

  if dataPal=2 {enemy_switch("GOHNNY",0) weapon_add("PICKAXE")
desc="Agile and armed with the tools of their trade, they won’t hesitate to pummel trespassers!" 

descleft=string(_ageT)+":35\nNAT.:FRANCE\n"+string(_heightT)+":5'0"+" "+string(_weightT)+":105LBS"
	 
 descright=string(_likesT)+":WORK,WORK\n"+string(_dislikesT)+":LATE WORK\n"+string(_hobbyT)+":NONE"
 dataabilities="Mining"
	 
	 }
  
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
"Cheerful, peppy mushroom girls. They rub their hands together to spread paralyzing spores!")

descleft=string(_ageT)+":21\nNAT.:RUSSIA\n"+string(_heightT)+":5'0"+" "+string(_weightT)+":100LBS"

 descright=string(_likesT)+":PARTIES,DANCING\n"+string(_dislikesT)+":BOREDOM\n"+string(_hobbyT)+":PARTYING"
 dataabilities="Mushroom Powers, Stun Spore"

  if dataPal=2 {enemy_switch("CERANA",0)
desc="These fun-gals party particularly hard, so much they tend to hit others when headbanging!"

descleft=string(_ageT)+":22\nNAT.:RUSSIA\n"+string(_heightT)+":5'0"+" "+string(_weightT)+":100LBS"

 descright=string(_likesT)+":PARTIES,DANCING\n"+string(_dislikesT)+":BOREDOM\n"+string(_hobbyT)+":PARTYING"
 dataabilities="Mushroom Powers, Headbutt"

	  }
    if dataPal=3 {enemy_switch("ELEGANS",0)
desc="The spores of these party mushrooms tend to send people into a manic haze like theirs."

descleft=string(_ageT)+":23\nNAT.:RUSSIA\n"+string(_heightT)+":5'0"+" "+string(_weightT)+":100LBS"

 descright=string(_likesT)+":PARTIES,DANCING\n"+string(_dislikesT)+":BOREDOM\n"+string(_hobbyT)+":PARTYING"
 dataabilities="Mushroom Powers, Stun Spore"

	}
	  if dataPal=4 {enemy_switch("PHOLIOTA",0)
desc="Playful to a fault, they mean no harm in their headbutts, but don’t realize how hard they are." 

descleft=string(_ageT)+":20\nNAT.:RUSSIA\n"+string(_heightT)+":5'0"+" "+string(_weightT)+":100LBS"

 descright=string(_likesT)+":PARTIES,DANCING\n"+string(_dislikesT)+":BOREDOM\n"+string(_hobbyT)+":PARTYING"
 dataabilities="Mushroom Powers, Headbutt"

		 }

break;
  case 39:
 idlestyle=1 hp=0.4 enemyID=101
 charinfo_set(12,spr_slime_stand,6,animsetup_enemy,draw_enemy,spr_slimepal,0,spr_enemyface,22,"MELON",
 "These smug slimes have a long reach and can become a puddle before launching an uppercut.")
 
 descleft=string(_ageT)+":26\nNAT.:USA\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
 
  descright=string(_likesT)+":SHOW OFF,MELONS\n"+string(_dislikesT)+":SHOWOFFS\n"+string(_hobbyT)+":EXERCISE"
 dataabilities="Slime Powers, Sneaking"
 
   if dataPal=2 {enemy_switch("CHERRY",0)
	   desc="Fast self-regeneration allows these girls to launch pieces of themselves at foes with no issue."
	   
 descleft=string(_ageT)+":25\nNAT.:USA\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
	   
  descright=string(_likesT)+":ATTENTION,CHERRIES\n"+string(_dislikesT)+":SHARP THINGS\n"+string(_hobbyT)+":GARDENING"
 dataabilities="Slime Powers, Slime Launching"
	   
	   }
    if dataPal=3 {enemy_switch("BLUEBERRY",0)
		desc="Buoyant and bouncy, they like tackling their opponents as a big slimy cannonball!"
		
  descright=string(_likesT)+":PARTY,BLUEBERRIES\n"+string(_dislikesT)+":BOREDOM\n"+string(_hobbyT)+":PARTYING"
 dataabilities="Slime Powers, Brawling"
		
 descleft=string(_ageT)+":27\nNAT.:USA\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
		}
	  if dataPal=4 {enemy_switch("BANANA",0)
		  desc="These girls are dangerously clingy, watch for yellow puddles or you’ll get one big, slimy hug!"
		  
 descleft=string(_ageT)+":27\nNAT.:USA\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
		  
descright=string(_likesT)+":HUGS,BANANAS\n"+string(_dislikesT)+":POINTY THINGS\n"+string(_hobbyT)+":BOOK WRITING"
 dataabilities="Slime Powers, Absorbing"
		  
		  }
    if dataPal=5 {enemy_switch("CALCIUM",0)
		desc="Bio-engineered underlings of Van Bad based on the cave dwellers. Much more hostile though."
		
 descleft=string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
 
   descright=""
 dataabilities=""
 
		}
	  if dataPal=6 {enemy_switch("CHEMI",0)
		  desc="Constantly hungry lab experiments, they’ll grab and try to absorb anything that moves."
		  
 descleft=string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
		  
  descright=""
 dataabilities=""		  
		  }
		  	  
 
break;
  case 40: enemyID=107
  idlestyle=1 hp=1
 charinfo_set(12,spr_snowgirl_stand,3,animsetup_enemy,draw_enemy,spr_zombiepal,0,spr_enemyface,51,"PRIMA",
 "Love-starved, strong yetis who use their strength and ice breath to catch new companions.")
 
  descleft=string(_ageT)+":45\nNAT.:RUSSIA\n"+string(_heightT)+":6'4"+" "+string(_weightT)+":360LBS"
 
   descright=string(_likesT)+":LOVE,HUGS\n"+string(_dislikesT)+":RUNAWAYS\n"+string(_hobbyT)+":ICE SCULPTING"
 dataabilities="Ice Breath, Smashing"
 
     if dataPal=2 {enemy_switch("EVA",0)
desc="They lack ice breath, but their mighty leaps are enough for them to pounce on any mates."	

  descleft=string(_ageT)+":42\nNAT.:RUSSIA\n"+string(_heightT)+":6'4"+" "+string(_weightT)+":350LBS"
  
    descright=string(_likesT)+":LOVE,HUGS\n"+string(_dislikesT)+":RUNAWAYS\n"+string(_hobbyT)+":ROCK SCULPTING"
 dataabilities="Crushing, Smashing"
  
		 }
    if dataPal=3 {enemy_switch("UNDA",0)
desc="These amorous cave beasts will shake the earth itself just so they can get you to themselves!"

  descleft=string(_ageT)+":43\nNAT.:RUSSIA\n"+string(_heightT)+":6'4"+" "+string(_weightT)+":345LBS"
		
    descright=string(_likesT)+":LOVE,HUGS\n"+string(_dislikesT)+":RUNAWAYS\n"+string(_hobbyT)+":MUD SCULPTING"
 dataabilities="Crushing, Smashing"
		
		}

break;

  case 41:
  hp=0.2 enemyID=110
 charinfo_set(12,spr_nurse_stand,4,animsetup_enemy,draw_enemy,spr_ninjapal,0,spr_enemyface,48,"DR.PERO",
 "Scientists who work under Dr. Fran. They act as support by throwing exploding beakers.")
 
   descleft=string(_ageT)+":35\nNAT.:GERMANY\n"+string(_heightT)+":5'4"+" "+string(_weightT)+":110LBS"
 
     descright=string(_likesT)+":SCIENCE,APPLES\n"+string(_dislikesT)+":FAILURE\n"+string(_hobbyT)+":BOOK CLUB"
 dataabilities="Science, Explosive"
 
  if dataPal=2 {enemy_switch("DR.SULF",0)
	  desc="Usually sedating test subjects, they carry syringes that they can throw with pinpoint accuracy."

   descleft=string(_ageT)+":36\nNAT.:USA\n"+string(_heightT)+":5'3"+" "+string(_weightT)+":110LBS"
	  
descright=string(_likesT)+":SCIENCE,PUDDING\n"+string(_dislikesT)+":FAKERS\n"+string(_hobbyT)+":EXPERIMENTING"
 dataabilities="Science, Needle Throwing"
	  
	  }
    if dataPal=3 {enemy_switch("DR.MONIA",0)
		desc="Armed with potions full of dizzying gas. Even without a mask they’ve developed an immunity."
   descleft=string(_ageT)+":35\nNAT.:CANADA\n"+string(_heightT)+":5'4"+" "+string(_weightT)+":110LBS"		
		
     descright=string(_likesT)+":SCIENCE,SPIDERS\n"+string(_dislikesT)+":USELESSNESS\n"+string(_hobbyT)+":COOKING"
 dataabilities="Science, Poison"
		
		}
	  if dataPal=4 {enemy_switch("DR.GLUCO",0)
		     descleft=string(_ageT)+":38\nNAT.:RUSSIA\n"+string(_heightT)+":5'5"+" "+string(_weightT)+":110LBS"
		  
		  desc="Chemists with a nasty temper and nastier attitude who throw vials that burst into acid puddles."
		  
     descright=string(_likesT)+":SCIENCE,SNAILS\n"+string(_dislikesT)+":BREAKS\n"+string(_hobbyT)+":RESEARCH"
 dataabilities="Science, Melting Acid"
		  
		  }
 
break;
  case 42: hp=1 enemyID=114
 charinfo_set(12,spr_ladybot_stand,2,animsetup_enemy,draw_enemy,spr_robotpal,0,spr_enemyface,46,"O-POLIS",
"Dr. Fran’s pride and joy, these steel bombshells hit fast and hard with a dizzying punch.")

   descleft=string(_heightT)+":8'5"+" "+string(_weightT)+":180LBS"
  
 descright=string(_likesT)+":DESTROYING,FILMS\n"+string(_dislikesT)+":MISTAKES\n"+string(_hobbyT)+":MUSIC PLAYING"
 dataabilities="Robotic Kick, Charging"

   if dataPal=2 {enemy_switch("METR-A",0)
	   desc="This model is more explosive, with “ballistics” they launch at will to blast intruders to ash."	   
	  
 descright=string(_likesT)+":DESTROYING,BOOKS\n"+string(_dislikesT)+":ERRORS\n"+string(_hobbyT)+":BALL DANCING"
 dataabilities="Robotic Kick, Ballistics"
	  
	  }
}

unlockedChar[enemyID]=global.UnlockEnemy[enemyID] if unlockedChar[enemyID]!=0  image_blend=c_white else image_blend=c_black
if image_blend=c_black {name="???" desc="" idlestyle=0
	  descleft=""
descright=""
dataabilities=""
	}
}