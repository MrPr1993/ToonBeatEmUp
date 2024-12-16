// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function charinfo_bosses(){hp=2
switch (dataSelect)
{
  case 1:
  hasVariants=1 enemyID=150 hp=1 
  if dataPal=1{idlestyle=1
 charinfo_set(11,spr_hwolf_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,9,"LADY WOLF",
 "A shady woman who works with the thieves to steal the treasures of the divas. And she appears to be hiding something else...")
}
 if dataPal=2
	  {enemyID=151 idlestyle=0
		  hp=2
		  charinfo_set(11,spr_wolfita_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,5,"LADY WOLF",
 "A shady woman who works with the thieves to steal the treasures of the divas. And she appears to be hiding something else...")}

break;
  case 2:enemyID=152
idlestyle=3
 charinfo_set(12,spr_harpy_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,34,"HARPILDA",
 "She is big. She is round. She is full of singing sensations. She battles and it won't be over until the fat lady sings.") break;

case 3:enemyID=153
idlestyle=1
 charinfo_set(12,spr_franki_stand,1,animsetup_enemy,draw_enemy,spr_boxerpal,0,spr_enemyface,10,"CAPTAIN ROSY",
 "A colossal woman who rides her beloved cruise ship to ferry the passengers. Those who intrude her ship will go for a little shock.") break;
 
 case 4:enemyID=154
charinfo_set(12,spr_twoheads_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,35,"DOLORES",
 "They are a cowgirl who took the train The Loco Dos to look for stowaways. They have two heads, and double the guns.") break;

 case 5:enemyID=155
 charinfo_set(12,spr_ghost_stand,1,animsetup_enemy,ghost_effect,spr_enemypal,0,spr_enemyface,17,"ANNAMARI",
 "She likes collecting heads in life. She became a ghost after getting her own head. She likes cutting heads. Too much.") break;
  
  case 6:enemyID=156
  idlestyle=1
 charinfo_set(12,spr_pharaoh_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,11,"HATHOR",
 "A goddess who usually comes down for parties. Those who defy her will have to face her divine punishment. ") break;
   case 7:enemyID=157
     hasVariants=1
  if dataPal=1
 charinfo_set(12,spr_oni_stand,2,animsetup_enemy,draw_swing,spr_ninjapal,0,spr_enemyface,31,"FUKUKIJO",
 "The eldest of the Oni Sisters. She focuses on the power of cards and element of her fiery personality.")
   if dataPal=2
 {enemyID=158
	 charinfo_set(12,spr_oni_stand,2,animsetup_enemy,draw_swing,spr_ninjapal,7,spr_enemyface,31,"SHOKIJO",
 "The youngest of the Oni Sisters. She focuses on the power of dice and element of her chilly personality.")}
 
 weapon_add("ONI CLUB")
 weaponanim(weaponspr,weaponIndex,34,-95,180*image_xscale,weaponcolor)
 
 break;
   case 8:
  idlestyle=1 enemyID=159
 charinfo_set(12,spr_witch_stand,1,animsetup_enemy,draw_enemy,pal_witch,1,spr_enemyface,32,"KIANDRA",
 "She lives in solitude in her swamp with her undead as she works on her cauldron. She is a druid, not a witch.") break;
   case 9:
   enemyID=160
 charinfo_set(12,spr_duck_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,39,"DIXIE",
 "The carnival's biggest attraction. She is a wacky duck toy person... thing. She is a little insane. Quack.") break;
    case 10: enemyID=161 idlestyle=1
 charinfo_set(12,spr_octopus_stand,1,animsetup_enemy,draw_swing_2,spr_enemypal,0,spr_enemyface,40,"LARRY",
 "An octopus who is the a pet who is protective of their master and will take care of interlopers with their tentacles.")
  
var watchtarget=0;
watchtarget=point_direction(x,y,x,y+16) weaponBack=1
weaponspr=spr_octopus_eye weaponIndex=0 weaponX=0 weaponY=0
weaponspr2=spr_octopus_eye weaponIndex2=1 weaponX2=0 weaponY2=8

break;
  
  case 11: enemyID=162 idlestyle=0
 charinfo_set(12,spr_seaweed_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,41,"CIRCE",
 "A sea witch living in a cave who enjoys ompany as long as they don't cause harm. Otherwise, she'll give tham a spankin'.") break;
   case 12: enemyID=163
 charinfo_set(12,spr_martianb_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,54,"KWINN",
 "She is the captain of a crew from space. They are pirates. Space Pirates! And they will crush you with their space arsenal!") break;
   case 13: enemyID=164
 charinfo_set(12,spr_submarine,1,animsetup_enemy,draw_swing_2,spr_enemypal,0,spr_enemyface,57,"SEA BANDIT",
 "One of the thieving foes' submarine that dives underwater to look for treasure under the sea.")
 image_index=0;
 weaponBack=1 weaponangle=0
  weaponBack2=1
weaponspr=spr_submarine_scope weaponIndex=2
weaponspr2=spr_submarine_rotor
weaponIndex=0
 weaponIndex2+=0.1
weaponX=0 weaponY=0 weaponX2=0 weaponY2=0
  
 break;
 
   case 14: enemyID=165
idlestyle=1 hasVariants=1
 charinfo_set(12,spr_prince_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,30,"PRINCE",
 "An incredibly flamboyant ruler of the seven seas who looks for a great challenge with style and flex. Oh and he's Viva's cousin.")
  if dataPal=2 
  {enemyID=166 hp=0.25
	  charinfo_set(12,spr_prince_stand,2,animsetup_enemy,draw_enemy,spr_zombiepal,7,spr_enemyface,30,"WATER PRINCE",
 "He rather summon copies of himself rather than let his troops join the fight, to even the odds for a fairer fight. Or as he says.")
   }
 
 break;

    case 15: enemyID=167 idlestyle=1
 charinfo_set(12,spr_genie_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,47,"HAIFA",
 "A genie of the lamp who listens to their master as they have a go and crush intruders.") break;
     case 16: enemyID=168 idlestyle=2
     hasVariants=1
 if dataPal=1
 {idlestyle=1
charinfo_set(12,spr_mirrorlady_stand,5,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,62,"MIRROSA",
 "The lady behind the mirror, who decides to have a little fun by sending out reflections of their intruders.")  
}
 if dataPal=2
 {enemyID=169 hp=1
	 charinfo_set(12,spr_viva_stand,5,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_playerface,0,"MIRROR VIVA",
 "Viva's reflection, who is as tempered as she is. She is as fragile as Viva's waistline being a mirror.") }
  if dataPal=3{enemyID=170 hp=1
 charinfo_set(12,spr_hina_stand,5,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_playerface,1,"MIRROR HINA",
 "Hina's reflection, who is as odd as she is stretchy. She can still be as weird as the original fire woman.") }
  if dataPal=4
{hp=1 enemyID=171 charinfo_set(12,spr_bahati_stand,5,animsetup_enemy,draw_enemy,spr_playerface,2,spr_playerface,2,"MIRROR BAHATI",
 "Bahati's reflection, who is as full-figured as she is. For a mirror, she is as strong as the real deal.") }
  if dataPal=5
 {hp=1 enemyID=172 charinfo_set(12,spr_sofia_stand,5,animsetup_enemy,draw_enemy,spr_playerface,3,spr_playerface,3,"MIRROR SOFIA",
 "Sofia's reflection, who has her aggressive demeanor. She may be small, but she hits as much as she can.") }
 
 break;
     case 17: enemyID=173
idlestyle=1
 charinfo_set(12,spr_plantprincess_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,33,"P. PLANTA",
 "She is one pretty plant who rules the more fantastic parts of a cavern. This plant princess can show off what she can do.") break;
     case 18: enemyID=174
idlestyle=1
 charinfo_set(12,spr_dragonmaiden_head,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,56,"FIONA",
 "She is a maiden from the clouds looking for true love. But people attacking her keeps in a pretty bad mood...") break;
     case 19: enemyID=175
idlestyle=1 hasVariants=1 hp=0.1
 charinfo_set(12,spr_scientist_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,36,"DR.FRAN",
 "She is the one who built those robots the divas fought on the way in her factory. She does her all to put a stop to them.")
      if dataPal=2
	{hp=2
charinfo_set(12,spr_scientistm_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,60,"DR.FRAN",
 "With her security failing, she resorts to mutate herself. Now she is going to try and stop them on her own!");
   	}break;
	case 20: enemyID=176
     hasVariants=1
idlestyle=0
 charinfo_set(12,spr_dastardly_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,18,"VAN BAD",
 "The big honcho of the gang, he is looking for the jewelry and treasures of the world for his vast collection.")
  if dataPal=2
{enemyID=177
idlestyle=1
 charinfo_set(12,spr_dastardly2_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,58,"VAN BAD",
 "The real honcho of the gang. They are a beautiful vampire, having disguised herself as a classical villain. Now the show will begin.")
}
 break;
       case 21: enemyID=200
 charinfo_set(12,spr_painter_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,59,"???",
 "I don't understand. I have no recorded info on this subject. Who is she? What is she? Where did she even come from?!") break;
}
unlockedChar[enemyID]=global.UnlockEnemy[enemyID] if unlockedChar[enemyID]!=0 image_blend=c_white else image_blend=c_black
if image_blend=c_black {name="???" desc="" idlestyle=0
	  descleft=""
descright=""
dataabilities=""
	}
}