/// @description Insert description here
// You can write your code in this editor
controller_setup()

if -key_left_pressed {arrowSel1=2
	image_alpha=1 dataPalMax=3 showBlend=1 dataPal=1 overwriteStand=0 image_index=0 animFrame=0 PlaySound(snd_select) if dataSelect=1 dataSelect=dataRowMax else dataSelect-=1}
if key_right_pressed {arrowSel2=2
	image_alpha=1 dataPalMax=3 showBlend=1 dataPal=1 specialscript=-1 overwriteStand=0 image_index=0 animFrame=0 PlaySound(snd_select) if dataSelect=dataRowMax dataSelect=1 else dataSelect+=1}
if key_up_pressed {image_alpha=1 dataPalMax=3 showBlend=1 dataPal=1 specialscript=-1 overwriteStand=0 image_index=0 animFrame=0 PlaySound(snd_select) if dataRow=1 dataRow=8 else dataRow-=1}
if -key_down_pressed {image_alpha=1 dataPalMax=3 dataPal=1 specialscript=-1 overwriteStand=0 image_index=0 animFrame=0 PlaySound(snd_select) if dataRow=8 dataRow=1 else dataRow+=1}

descleft="";
descright="";

switch(dataRow)
{
case 1: ////Playable Characters
dataRowMax=4 categoryNames="DIVAS"

switch (dataSelect)
{
 case 1:
 hp=1;
descleft="AGE:35\nNAT.:USA\nH: 5'10\nW: 130LBS"
descright="LIKES:FINE DINING\nDISLIKES:GET STARTLED"
  charinfo_set(1,spr_viva_stand,1,animsetup_viva,draw_enemy,spr_playerpal,0,spr_playerface,0,"VIVIAN VIVA VEGAS",
    "LOVELY, BUT TEMPERAMENTAL, VIVA'S SINGING IS ELECTRIFYING IN MORE WAYS THAN ONE! THOUGH HER LUCK IS... SOUR...")
break;
  case 2:
  hp=1;
  descleft="AGE:DRAGON\nNAT.:JAPAN\nH: 6'2\nW: 100LBS"
  descright="LIKES:NAPPING\nDISLIKES:SPICE"
    charinfo_set(2,spr_hina_stand,1,animsetup_hina,draw_enemy,spr_playerpal,0,spr_playerface,1,"HINA",
  "HEAD TENDS TO BE IN THE CLOUDS, BUT SHE'S GOT STRETCHINESS AND A DRAGON'S FIRE ON HER SIDE! BIZARRE..."
)
break;
  case 3:
  hp=1;
  descleft="AGE:27\nNAT.:NIGERIA\nH: 6'0\nW: 260LBS"
  descright="LIKES:HELPS\nDISLIKES:RUDENESS"
    charinfo_set(3,spr_bahati_stand,1,animsetup_bahati,draw_enemy,spr_playerpal,0,spr_playerface,2,"BAHATI",
	"LARGE N' HAMMY! SHE'S QUITE THE BRUISER DUE TO HER SIZE AND WRESTLING PROWESS. BUT UNDER THAT GIRTH LIES A BIG HEART.")

break;
 case 4:
 hp=1;
 descleft="AGE:28\nNAT.:MEXICO\nH: 5'2\nW: 110LBS"
 descright="LIKES:PARTIES\nDISLIKES:CHEATERS"
 charinfo_set(4,spr_sofia_stand,1,animsetup_sofia,draw_enemy,spr_playerpal,0,spr_playerface,3,"SOFIA",
"AS SPICY AS SHE IS DARING, SOFIA PARTIES DOWN TO TRIP UP ENEMIES WITH FOOTWORK SO FAST, YOU'D THINK SHE'S THE WIND!")
break;
}
break;
case 2:
dataRowMax=48 categoryNames="ENEMIES"
switch (dataSelect) ////Enemy Characters
{
  case 1:
  hp=0.2
  charinfo_set(5,spr_burglar_stand,3,animsetup_burglar,draw_enemy,spr_enemypal,2,spr_enemyface,1,"MR.BURG",
"RUN OF THE MILL\n"+
	 "BURGLAR. THIS CHUMP'S\n"+
	 "FODDER, BUT HIS\n"+
	 "KICK'LL SEND YOU\n"+
	 "ROLLING SO WATCH\n"+
	 "OUT!")
break;
  case 2:
    hp=0.2
   charinfo_set(6,spr_burglarB_stand,3,animsetup_burglar,draw_enemy,spr_enemypal,2,spr_enemyface,20,"MR.TEEF",
"ANOTHER BURGLAR, WHO'S\n"+
"ALSO ANOTHER DUMMY\n"+
"FODDER. BUT HE MAY\n"+
"SHOW UP WITH A WEAPON\n"+
"TO STRIKE YOU WITH!\n"+
"STILL A CHUMP.")
break;

 case 3:
   hp=0.4
   charinfo_set(7,spr_sneak_stand,3,animsetup_burglar,draw_enemy,spr_sneakpal,0,spr_enemyface,6,"MR.SNEAK",
"THIS TRENCHCOAT JERK\n"+
	 "SLIDES AROUND TO TRIP\n"+
	 "YOU UP AND TRIES TO\n"+
	 "GRAB YOU. WORST OF\n"+
	 "ALL? THEY THROW\n"+
	 "BOMBS!")

break;
  case 4:
   charinfo_set(8,spr_femburglar_stand,2,animsetup_femburglar,draw_enemy,spr_enemypal,2,spr_enemyface,2,"MR.CHILL",
   "")
     hp=0.2
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
  case 5:
   charinfo_set(9,spr_robot_stand,2,animsetup_robot,draw_robot,spr_robotpal,2,spr_enemyface,4,"MR.BOLTS",
   "")
     hp=1
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
  case 6:
   charinfo_set(10,spr_swing_stand,2,animsetup_swing,draw_swing,spr_enemypal,2,spr_enemyface,7,"MS.SWING",
   "THIS GIGGLING DITZ\n"+
	 "SWINGS WHATEVER\n"+
	 "WEAPON SHE CAN USE\n"+
	 "AT YOU. BUT SHE'S\n"+ 
	 "DEFENSELESS WHEN SHE\n"+
	 "LOSES IT!")
break;
  case 7:
 charinfo_set(11,spr_fatburglar_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,2,spr_enemyface,3,"MR.LARGE",
 "BIG, RUDE AND NASTY,\n"+
	 "THESE GUYS CHARGE AT\n"+
	 "YOU AND EVEN TRY TO\n"+
	 "SQUASH YOU WITH THEIR\n"+ 
	 "REAR! DON'T GET\n"+
	 "FLATTENED!"
)
break;
  case 8:
 charinfo_set(12,spr_boxer_stand,1,animsetup_enemy,draw_enemy,spr_boxerpal,2,spr_enemyface,8,"MS.PUNCH",
 "QUICK ON THEIR\n"+
	 "TINY FEET, THEY\n"+
	 "WON'T HESTITATE IF\n"+
	 "YOU TRY TO GET A\n"+ 
	 "JUMP ON THEM.\n"+
	 "DON'T GET HIT!")

break;
}break;
case 3: ///Boss Characters
dataRowMax=16 categoryNames="BOSSES"
switch (dataSelect)
{
  case 1:
 charinfo_set(11,spr_fatburglar_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,2,spr_enemyface,3,"LADY WOLF",
 "BIG, RUDE AND NASTY,\n"+
	 "THESE GUYS CHARGE AT\n"+
	 "YOU AND EVEN TRY TO\n"+
	 "SQUASH YOU WITH THEIR\n"+ 
	 "REAR! DON'T GET\n"+
	 "FLATTENED!"
)
break;
  case 2:
 charinfo_set(12,spr_boxer_stand,1,animsetup_enemy,draw_enemy,spr_boxerpal,2,spr_enemyface,8,"MS.PUNCH",
 "QUICK ON THEIR\n"+
	 "TINY FEET, THEY\n"+
	 "WON'T HESTITATE IF\n"+
	 "YOU TRY TO GET A\n"+ 
	 "JUMP ON THEM.\n"+
	 "DON'T GET HIT!")

break;
}
break;
}

dataSelect=clamp(dataSelect,1,dataRowMax)

if oControl.betatest=1 if keyboard_check_pressed(vk_tab)
if OwnDescTest=1 OwnDescTest=0
else
{
OwnDescTest=1
OwnDesc=get_string(OwnDesc,OwnDesc)
}if OwnDescTest=1 desc=OwnDesc



if key_attack
{
if dataPal=dataPalMax dataPal=1 else dataPal+=1 PlaySound(snd_select)
}
