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
 "A shady woman who works with the thieves to steal the treasures of the divas. And she appears to be hiding something else...")

break;
  case 2:
 charinfo_set(12,spr_twoheads_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,35,"DOLORES",
 "They are a cowgirl who took the train The Loco Dos to look for stowaways. They have two heads, and double the guns.") break;
   case 3:
 charinfo_set(12,spr_franki_stand,1,animsetup_enemy,draw_enemy,spr_boxerpal,0,spr_enemyface,10,"CAPTAIN ROSY",
 "A colossal woman who rides her beloved cruise ship to ferry the passengers. Those who intrude her ship will go for a little shock.") break;
   case 4:
 charinfo_set(12,spr_harpy_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,34,"HARPILDA",
 "She is big. She is round. She is full of singing sensations. She battles and it won't be over until the fat lady sings.") break;
   case 5:
 charinfo_set(12,spr_ghost_stand,1,animsetup_enemy,ghost_effect,spr_enemypal,0,spr_enemyface,17,"ANNAMARI",
 "She likes collecting heads in life. She became a ghost after getting her own head. She likes cutting heads. Too much.") break;
   case 6:
 charinfo_set(12,spr_pharaoh_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,11,"HATHOR",
 "A goddess who usually comes down for parties. Those who defy her will have to face her divine punishment. ") break;
   case 7:
     hasVariants=1
  if dataPal=1
 charinfo_set(12,spr_oni_stand,2,animsetup_enemy,draw_enemy,spr_ninjapal,0,spr_enemyface,31,"FUKUKIJO",
 "The eldest of the Oni Sisters. She focuses on the power of cards and element of her fiery personality.")
   if dataPal=2
 charinfo_set(12,spr_oni_stand,2,animsetup_enemy,draw_enemy,spr_ninjapal,7,spr_enemyface,31,"SHOKIJO",
 "The youngest of the Oni Sisters. She focuses on the power of dice and element of her chilly personality.")
 break;
   case 8:
  idlestyle=1
 charinfo_set(12,spr_witch_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,32,"KIANDRA",
 "She lives in solitude in her swamp with her undead as she works on her cauldron. She is a druid, not a witch.") break;
   case 9:
 charinfo_set(12,spr_duck_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,39,"QUACKI",
 "The carnival's biggest attraction. She is a wacky duck toy person... thing. She is a little insane. Quack.") break;
    case 10:
 charinfo_set(12,spr_octopus_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,40,"LARRY",
 "An octopus who is the a pet who is protective of their master and will take care of interlopers with their tentacles.") break;
   case 11:
 charinfo_set(12,spr_seaweed_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,41,"CIRCE",
 "A sea witch living in a cave who enjoys ompany as long as they don't cause harm. Otherwise, she'll give tham a spankin'.") break;
   case 12:
 charinfo_set(12,spr_martianb_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,54,"KWINN",
 "She is the captain of a crew from space. They are pirates. Space Pirates! And they will crush you with their space arsenal!") break;
   case 13:
 charinfo_set(12,spr_submarine,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,54,"SEA BANDIT",
 "One of the thieving foes' submarine that dives underwater to look for treasure under the sea.") break;
    case 14:
idlestyle=1
 charinfo_set(12,spr_prince_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,30,"PRINCE",
 "An incredibly flamboyant ruler of the seven seas who looks for a great challenge with style and flex. Oh and he's Viva's cousin.") break;
    case 15:
 charinfo_set(12,spr_genie_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,47,"HAIFA",
 "A genie of the lamp who listens to their master as they have a go and crush intruders.") break;
     case 16:
     hasVariants=1
 if dataPal=1
charinfo_set(12,spr_mirrorlady_stand,4,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,0,"MIRROSA",
 "The lady behind the mirror, who decides to have a little fun by sending out reflections of their intruders.")  
 if dataPal=2
 charinfo_set(12,spr_viva_stand,4,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,0,"MIRROR VIVA",
 "Viva's reflection, who is as tempered as she is. She is as fragile as Viva's waistline being a mirror.") 
  if dataPal=3
 charinfo_set(12,spr_hina_stand,4,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,1,"MIRROR HINA",
 "Hina's reflection, who is as odd as she is stretchy. She can still be as weird as the original fire woman.") 
  if dataPal=4
 charinfo_set(12,spr_bahati_stand,4,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,2,"MIRROR BAHATI",
 "Bahati's reflection, who is as full-figured as she is. For a mirror, she is as strong as the real deal.") 
  if dataPal=5
 charinfo_set(12,spr_sofia_stand,4,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,3,"MIRROR SOFIA",
 "Sofia's reflection, who has her aggressive demeanor. She may be small, but she hits as much as she can.") 
 
 break;
     case 17:
idlestyle=1
 charinfo_set(12,spr_plantprincess_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,33,"P. PLANTA",
 "She is one pretty plant who rules the more fantastic parts of a cavern. This plant princess can show off what she can do.") break;
     case 18:
idlestyle=1
 charinfo_set(12,spr_dragonmaiden_head,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,56,"FIONA",
 "She is a maiden from the clouds looking for true love. But people attacking her keeps in a pretty bad mood...") break;
     case 19:
idlestyle=1 hasVariants=1
 charinfo_set(12,spr_scientist_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,36,"DR.FRAN",
 "She is the one who built those robots the divas fought on the way in her factory. She does her all to put a stop to them.") break;
      if dataPal=2
	{
charinfo_set(12,spr_scientistm_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,60,"DR.FRAN",
 "She is the one who built those robots the divas fought on the way in her factory. She does her all to put a stop to them.") break;
   	}
	case 20:
     hasVariants=1
idlestyle=0
 charinfo_set(12,spr_dastardly_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,18,"VAN BAD",
 "The big honcho of the gang, he is looking for the jewelry and treasures of the world for his vast collection.")
  if dataPal=2
{
idlestyle=1
 charinfo_set(12,spr_dastardly2_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,58,"VAN BAD",
 "The real honcho of the gang. They are a beautiful vampire, having disguised herself as a classical villain. Now the show will begin.")
}
 break;
       case 21:
 charinfo_set(12,spr_painter_stand,1,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,59,"???",
 "I don't understand. I have no recorded info on this subject. Who is she? What is she? Where did she even come from?!") break;
}

if image_blend=c_black {name="???" desc=""
	  descleft=""
descright=""
dataabilities=""
	}
}