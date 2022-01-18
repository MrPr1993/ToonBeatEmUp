/// @description Insert description here
// You can write your code in this editor
controller_setup()

if -key_left_pressed {image_alpha=1 dataPalMax=3 showBlend=1 dataPal=1 overwriteStand=0 image_index=0 animFrame=0 PlaySound(snd_select) if dataSelect=1 dataSelect=6 else dataSelect-=1}
if key_right_pressed {image_alpha=1 dataPalMax=3 showBlend=1 dataPal=1 specialscript=-1 overwriteStand=0 image_index=0 animFrame=0 PlaySound(snd_select) if dataSelect=6 dataSelect=1 else dataSelect+=1}
if key_up_pressed {image_alpha=1 dataPalMax=3 showBlend=1 dataPal=1 specialscript=-1 overwriteStand=0 image_index=0 animFrame=0 PlaySound(snd_select) if dataRow=1 dataRow=8 else dataRow-=1}
if -key_down_pressed {image_alpha=1 dataPalMax=3 dataPal=1 specialscript=-1 overwriteStand=0 image_index=0 animFrame=0 PlaySound(snd_select) if dataRow=8 dataRow=1 else dataRow+=1}

descleft="";
descright="";

switch (dataRow)
{
case 1:
switch (dataSelect) ///?ROW 1
{
  case 1:
descleft="AGE:35\nNAT.:\nUSA\nH: 5'10\nW: 130LBS"
descright="LIKES:FINE DINING\nDISLIKES:GET STARTLED"
  charinfo_set(1,spr_viva_stand,1,animsetup_viva,draw_enemy,spr_playerpal,0,spr_playerface,0,"VIVA",
    "LOVELY, BUT\n"+
	 "TEMPERAMENTAL, VIVA'S\n"+
	 "SINGING IS\n"+
	 "ELECTRIFYING IN MORE.\n"+
	 "WAYS THAN ONE! THOUGH\n"+
	 "HER LUCK IS... SOUR..."
  )
break;
  case 2:
  descleft="AGE:DRAGON\nNAT.:\nJAPAN\nH: 6'2\nW: 100LBS"
  descright="LIKES:NAPPING\nDISLIKES:SPICE"
    charinfo_set(2,spr_hina_stand,1,animsetup_hina,draw_enemy,spr_playerpal,0,spr_playerface,1,"HINA",
  "HEAD TENDS TO BE IN\n"+
	 "THE CLOUDS, BUT SHE'S\n"+
	 "GOT STRETCHINESS AND\n"+
	 "A DRAGON'S FIRE ON\n"+
	 "HER SIDE!\n"+
	 "BIZARRE..."
)
break;
  case 3:
  descleft="AGE:27\nNAT.:\nNIGERIA\nH: 6'0\nW: 260LBS"
  descright="LIKES:HELPS\nDISLIKES:RUDENESS"
    charinfo_set(3,spr_bahati_stand,1,animsetup_bahati,draw_enemy,spr_playerpal,0,spr_playerface,2,"BAHATI",
	"LARGE N' HAMMY! SHE'S\n"+
	 "QUITE THE BRUISER\n"+
	 "DUE TO HER SIZE AND\n"+
	 "WRESTLING PROWESS.\n"+
	 "BUT UNDER THAT GIRTH\n"+
	 "LIES A BIG HEART.")

break;
  case 4:
 descleft="AGE:28\nNAT.:\nMEXICO\nH: 5'2\nW: 110LBS"
 descright="LIKES:PARTIES\nDISLIKES:CHEATERS"
 charinfo_set(4,spr_sofia_stand,1,animsetup_sofia,draw_enemy,spr_playerpal,0,spr_playerface,3,"SOFIA",
"AS SPICY AS SHE IS\n"+
	 "DARING, SOFIA PARTIES\n"+
	 "DOWN TO TRIP UP\n"+
	 "ENEMIES WITH FOOTWORK\n"+
	 "SO FAST, YOU'D THINK\n"+
	 "SHE'S THE WIND!")

break;
  case 5:
  
 charinfo_set(5,spr_burglar_stand,3,animsetup_burglar,draw_enemy,spr_enemypal,2,spr_enemyface,1,"MR.BURG",
"RUN OF THE MILL\n"+
	 "BURGLAR. THIS CHUMP'S\n"+
	 "FODDER, BUT HIS\n"+
	 "KICK'LL SEND YOU\n"+
	 "ROLLING SO WATCH\n"+
	 "OUT!")
break;
  case 6:
   charinfo_set(6,spr_burglarB_stand,3,animsetup_burglar,draw_enemy,spr_enemypal,2,spr_enemyface,20,"MR.TEEF",
"ANOTHER BURGLAR, WHO'S\n"+
"ALSO ANOTHER DUMMY\n"+
"FODDER. BUT HE MAY\n"+
"SHOW UP WITH A WEAPON\n"+
"TO STRIKE YOU WITH!\n"+
"STILL A CHUMP.")
break;
}break;

case 2:
switch (dataSelect) ///ROW 2
{
  case 1:

   charinfo_set(7,spr_sneak_stand,3,animsetup_burglar,draw_enemy,spr_sneakpal,0,spr_enemyface,6,"MR.SNEAK",
"THIS TRENCHCOAT JERK\n"+
	 "SLIDES AROUND TO TRIP\n"+
	 "YOU UP AND TRIES TO\n"+
	 "GRAB YOU. WORST OF\n"+
	 "ALL? THEY THROW\n"+
	 "BOMBS!")

break;
  case 2:
   charinfo_set(8,spr_femburglar_stand,2,animsetup_femburglar,draw_enemy,spr_enemypal,2,spr_enemyface,2,"MR.CHILL",
   "")
if dataPal=1
{
name="MS.CHILL" current_pal=2
desc="COMING IN PAIRS,\n"+
	 "SHE'LL PESTER YOU\n"+
	 "WITH THEIR LONG LEGS\n"+
	 "AND KNOWS THE ART OF\n"+ 
	 "DEFENSE AGAINST\n"+
	 "YOUR ATTACKS!"
}
if dataPal=2
{
name="MS.SPICE" current_pal=4
desc="COMING IN PAIRS,\n"+
	 "SHE'LL ANNOY YOU WITH\n"+
	 "WITH LEGS TO KICK YOU\n"+
	 "AND KNOWS ENOUGHE\n"+ 
	 "DEFENSE TO GUARD YOUR\n"+
	 "ATTACKS."
}

break;
  case 3:
   charinfo_set(9,spr_robot_stand,2,animsetup_robot,draw_robot,spr_robotpal,2,spr_enemyface,4,"MR.BOLTS",
   "")
   
 if dataPal=1
{current_pal=0
	robotArmRsprite=spr_robot_arm
	name="MR.BOLTS"
desc="THIS BIG, FANCY BOT\n"+
	 "COMES EQUIPPED WITH\n"+
	 "SHOCKING LASERS AND\n"+
	 "STRONG, BUT DETACHABLE\n"+ 
	 "ARMS.\n"+
	 ""
}
if dataPal=2
{current_pal=2
	robotArmRsprite=spr_robot_flame
	name="MR.BURNS"
desc="THIS LARGE ROBOT\n"+
	 "WILL BURN YOU TO DUST\n"+
	 "WITH THEIR TRUSY, BUT\n"+
	 "DETACHABLE\n"+ 
	 "FLAMETHROWER.\n"+
	 ""
}
if dataPal=3
{current_pal=1
	name="MR.COLD"
desc="THIS HUGE MACHINE\n"+
	 "CAN SEND CHILLDS DOWN\n"+
	 "YOUR SPINE BY\n"+
	 "FREEZING YOU WITH\n"+
	 "THEIR ICE GUN!\n"+ 
	 "FROSTY!"
}  
   
break;
  case 4:
   charinfo_set(10,spr_swing_stand,2,animsetup_swing,draw_swing,spr_enemypal,2,spr_enemyface,7,"MS.SWING",
   "THIS GIGGLING DITZ\n"+
	 "SWINGS WHATEVER\n"+
	 "WEAPON SHE CAN USE\n"+
	 "AT YOU. BUT SHE'S\n"+ 
	 "DEFENSELESS WHEN SHE\n"+
	 "LOSES IT!")
break;
  case 5:
 charinfo_set(11,spr_fatburglar_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,2,spr_enemyface,3,"MR.LARGE",
 "BIG, RUDE AND NASTY,\n"+
	 "THESE GUYS CHARGE AT\n"+
	 "YOU AND EVEN TRY TO\n"+
	 "SQUASH YOU WITH THEIR\n"+ 
	 "REAR! DON'T GET\n"+
	 "FLATTENED!"
)
break;
  case 6:
 charinfo_set(12,spr_boxer_stand,1,animsetup_enemy,draw_enemy,spr_boxerpal,2,spr_enemyface,8,"MS.PUNCH",
 "QUICK ON THEIR\n"+
	 "TINY FEET, THEY\n"+
	 "WON'T HESTITATE IF\n"+
	 "YOU TRY TO GET A\n"+ 
	 "JUMP ON THEM.\n"+
	 "DON'T GET HIT!")

break;///ROW END
}break;

case 3:
switch (dataSelect) ///ROW 3
{
  case 1:
 charinfo_set(13,spr_wrestler_stand,1,animsetup_zombie,draw_enemy,spr_ninjapal,0,spr_enemyface,8,"MS.SLAMS",
 "QUICK ON THEIR\n"+
	 "TINY FEET, THEY\n"+
	 "WON'T AHITATE IF\n"+
	 "YOU TRY TO GET A\n"+ 
	 "JUMP ON THEM.\n"+
	 "DON'T GET HIT!")
break;
  case 2:
 charinfo_set(14,spr_catman_stand,1,animsetup_zombie,draw_enemy,spr_zombiepal,0,spr_enemyface,12,"CATMAN",
 "QUICK ON THEIR\n"+
	 "TINY FEET, THEY\n"+
	 "WON'T AHITATE IF\n"+
	 "YOU TRY TO GET A\n"+ 
	 "JUMP ON THEM.\n"+
	 "DON'T GET HIT!")
break;
  case 3:
 charinfo_set(15,spr_cobra_stand,2,animsetup_zombie,draw_enemy,spr_zombiepal,0,spr_enemyface,12,"COBRAWOMAN",
 "QUICK ON THEIR\n"+
	 "SNEK ET, THEY\n"+
	 "WON'T AHITATE IF\n"+
	 "YOU TRY TO GET A\n"+ 
	 "JUMP ON THEM.\n"+
	 "DON'T GET HIT!")
break;
  case 4:
 charinfo_set(16,spr_skeleton_stand,2,animsetup_zombie,draw_enemy,spr_zombiepal,0,spr_enemyface,21,"SKELLA",
 "QUICK ON THEIR\n"+
	 "TINY FEET, THEY\n"+
	 "WON'T AHITATE IF\n"+
	 "YOU TRY TO GET A\n"+ 
	 "JUMP ON THEM.\n"+
	 "DON'T GET HIT!")
break;
  case 5:
 charinfo_set(16,spr_zombiem_stand,2,animsetup_zombie,draw_enemy,spr_zombiepal,0,spr_enemyface,13,"ZOMBILLY",
 "QUICK ON THEIR\n"+
	 "TINY FEET, THEY\n"+
	 "WON'T AHITATE IF\n"+
	 "YOU TRY TO GET A\n"+ 
	 "JUMP ON THEM.\n"+
	 "DON'T GET HIT!")
break;
  case 6:
 charinfo_set(16,spr_zombiew_stand,2,animsetup_zombie,draw_enemy,spr_zombiepal,0,spr_enemyface,14,"ZOMBETTY",
 "QUICK ON THEIR\n"+
	 "TINY FEET, THEY\n"+
	 "WON'T AHITATE IF\n"+
	 "YOU TRY TO GET A\n"+ 
	 "JUMP ON THEM.\n"+
	 "DON'T GET HIT!")
break;///ROW END
}break;

case 4:
switch (dataSelect) ///ROW 4
{
  case 1:
 charinfo_set(17,spr_ninjabun_stand,2,animsetup_enemy,draw_enemy,spr_ninjapal,0,spr_enemyface,15,"USAGI",
 "")
 if dataPal=1
{showBlend=1
name="USAGI"
current_pal=0
desc="THE CASINO'S NINJA\n"+
	 "WHO SERVES AND DEALS\n"+
	 "WITH YOU WITH SOME\n"+
	 "DEADLY USE OF CARDS.\n"+ 
	 "THEY'RE PRETTY AGILE\n"+
	 "TO BREAK FALLS."
}
if dataPal=2
{showBlend=0
name="NOUSAGI"
current_pal=1
desc="THE CASINO'S NINJA\n"+
	 "WHO SERVES AND DEALS\n"+
	 "WITH YOU WITH SOME\n"+
	 "DEADLY USE OF CARDS.\n"+ 
	 "THEY'RE PRETTY AGILE\n"+
	 "TO BREAK FALLS." 
}
if dataPal=3 
{showBlend=1
name="KONI"
current_pal=2
desc="THEY USUALLY GO AND\n"+
	 "BLEND IN THE DOJO TO\n"+
	 "THEIR DESIRED TARGET\n"+
	 "TO ELIMINATE THEM. \n"+ 
	 "THEY PREFER TO HIDE.\n"+
	 "A LOT."
}
 
break;
  case 2:
 charinfo_set(18,spr_samurai_stand,2,animsetup_enemy,draw_enemy,spr_ninjapal,0,spr_enemyface,15,"I-DO","")
break;
  case 3:
 charinfo_set(19,spr_goblin_stand,2,animsetup_enemy,draw_enemy,spr_zombiepal,0,spr_enemyface,27,"GOBMAN","")
break;
  case 4:
 charinfo_set(20,spr_plant_stand,2,animsetup_enemy,draw_enemy,spr_zombiepal,0,spr_enemyface,29,"FLORA","")
break;
  case 5:
 charinfo_set(21,spr_goblin_stand,2,animsetup_enemy,draw_enemy,spr_zombiepal,0,spr_enemyface,27,"GOBMAN","")
break;
  case 6:
 charinfo_set(22,spr_slime_stand,4,animsetup_enemy,draw_enemy,spr_zombiepal,0,spr_enemyface,22,"MELON","")
break;///ROW END
}break;

case 5:
switch (dataSelect) ///ROW 5
{
  case 1:
 charinfo_set(23,spr_merman_stand,2,animsetup_enemy,draw_enemy,spr_zombiepal,0,spr_enemyface,25,"MERMAN","")
break;
  case 2:
 charinfo_set(24,spr_siren_stand,2,animsetup_enemy,draw_enemy,spr_zombiepal,0,spr_enemyface,26,"SIREN","")
break;
  case 3:
 charinfo_set(25,spr_martian_stand,2,animsetup_enemy,draw_enemy,spr_zombiepal,0,spr_enemyface,23,"MARTIAN","")
break;
  case 4:
 charinfo_set(25,spr_alienrobot_stand,2,animsetup_enemy,draw_enemy,spr_zombiepal,0,spr_enemyface,28,"ROBOTO","")
break;
  case 5:
///0
break;
  case 6:
////0
break;///ROW END
}break;

case 6:
switch (dataSelect) ///ROW 6
{
  case 1:
   charinfo_set(23,spr_hwolf_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,9,"LADY WOLF","")
 if dataPal=2
 charinfo_set(23,spr_wolfita_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,5,"LADY WOLF","")
   break;
  case 2:
///Path Up, Car Roof
 break;
  case 3:
  ///Boat
  charinfo_set(23,spr_franki_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,10,"C.ROSY","")
break;
  case 4:
///Beach?
break;
  case 5:
////Up, Warehouse
break;
  case 6:
  ///Museum
    charinfo_set(23,spr_pharaoh_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,11,"EVE","")
break;///ROW END
}break;

case 7:
switch (dataSelect) ///ROW 7
{
  case 1:
///Down, Park
break;
  case 2:
///Swamp
  charinfo_set(23,spr_witch_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,32,"WITCH","")
break;
  case 3:
  ///Graveyard
  charinfo_set(23,spr_ghost_stand,2,animsetup_enemy,ghost_effect,spr_enemypal,0,spr_enemyface,10,"ANTONIETTA","")
break;
  case 4:
  ///Casino
  charinfo_set(23,spr_oni_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,32,"ONI","")
break;
  case 5:
///0
break;
  case 6:
////0
break;///ROW END
}break;

case 8:
switch (dataSelect) ///ROW 8
{
  case 1:
///0
break;
  case 2:
///0
break;
  case 3:
///0
break;
  case 4:
///0
break;
  case 5:
///0
break;
  case 6:
  charinfo_set(23,spr_dastardly_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,0,spr_enemyface,8,"DASTARDLY","")
break;///ROW END
}

break;
}


if key_attack
{
if dataPal=dataPalMax dataPal=1 else dataPal+=1 PlaySound(snd_select)
}
