// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function feats_screen(){
	//controller_setup()
draw_set_halign(fa_left)
draw_set_font(global.scorefont)
//draw_set_color(c_black) draw_set_alpha(0.75)
//draw_rectangle(0,0+24,320,48+24,false)
//draw_sprite(spr_featicon,0,4+24,4+32)
//(c_white) draw_text(4+24,4+24,"SHOWTIME")
//draw_text(4+28+32,4+32,"DEFEAT 100 ENEMIES")

////////Default feats

if betatest
{
if keyboard_check(ord("I"))	global.EnemyDeath=0

if keyboard_check_pressed(ord("P")) {
for (var i=0; i<100; i++) {global.Feats[i]=1} if keyboard_check(vk_control) feats_default()}
if keyboard_check_pressed(ord("O")) {if global.Feats[featsel]=2 global.Feats[featsel]=0 else global.Feats[featsel]^=1
	if keyboard_check(vk_shift) global.Feats[featsel]=2
	}

if keyboard_check(ord("U"))
{
if featsel=35 global.EnemyDeath=99
if featsel=36 global.EnemyDeath=499
if featsel=37 global.EnemyDeath=999
}

}
var _maxfeat=52;//100



if key_up_pressed {PlaySound(snd_select) if featsel=1 {featY=lerp(featY,-48*_maxfeat,1) featsel=_maxfeat} else featsel-=1}
if -key_down_pressed {PlaySound(snd_select) if featsel=_maxfeat {featY=lerp(featY,0,1) featsel=1} else featsel+=1}

draw_feat(1,spr_featicon,1,c_white,"DIVA'S DEBUT","CLEAR STAGE 1") //DONE
draw_feat(2,spr_featicon,2,c_white,"MUST PET!","PET THE FIRST ANIMAL IN ANY STAGE.") //DONE
draw_feat(3,spr_featicon,3,c_white,"ENCORE!","USE YOUR FIRST CONTINUE.") //DONE
draw_feat(4,spr_featicon,4,c_white,"SHOWTIME FINISH","DEFEAT A BOSS WITH A SHOWTIME ATTACK.") //DONE
draw_feat(5,spr_featicon,5,c_white,"One long note","Beat any stage WITHOUT DYING.") //DONE
draw_feat(6,spr_featicon,6,c_white,"I'm Not Stage Frightened!","Beat any Stage without using Showtime once.") //DONE
draw_feat(7,spr_featicon,7,c_white,"Legendary Dancing Diva!","Beat Arcade Mode WITHOUT LOSING A SINGLE LIFE/ (Normal difficulty or higher only)") ///DONE
draw_feat(8,spr_featicon,8,c_white,"Don't Touch the Diva","Beat any stage WITHOUT TAKING DAMAGE.") //DONE
draw_feat(9,spr_featicon,9,c_white,"Sorry, I'm on a Diet...","Beat any stage without Picking up any Food.") ///DONE
draw_feat(10,spr_featicon,10,c_white,"Almost Went Off Key","Beat any Stage with 10% of Your health left WITHOUT DYING.")
draw_feat(11,spr_featicon,11,c_white,"Performer Practice","Clear training mode with all 4 Divas.") ///DONE
draw_feat(12,spr_featicon,12,c_white,"Wolf Whisperer","Defeat Lady Wolf.") ///DONE
draw_feat(13,spr_featicon,13,c_white,"Singing Fat Lady","Defeat Harpilda.") ///DONE
draw_feat(14,spr_featicon,14,c_white,"We Can Do It","Defeat Captain Rosy.") ///DONE
draw_feat(15,spr_featicon,15,c_white,"Double Header","Defeat Dolores.") ///DONE
draw_feat(16,spr_featicon,16,c_white,"Off With Her Head","Defeat Annamari.") ///DONE
draw_feat(17,spr_featicon,17,c_white,"Divine Punishment","Defeat Hathor.") ///DONE
draw_feat(18,spr_featicon,18,c_white,"Oni Jackpot","Defeat The Oni Sisters.") ///DONE
draw_feat(19,spr_featicon,19,c_white,"Swamped Out","Defeat Kiandra.") ///DONE
draw_feat(20,spr_featicon,20,c_white,"Daffy Amuck","Defeat Dixie.") ///DONE
draw_feat(21,spr_featicon,21,c_white,"Beached Witch","Defeat Circe.") ///DONE
draw_feat(22,spr_featicon,22,c_white,"Spaced Out","Defeat Kuinn.") ///DONE
draw_feat(23,spr_featicon,23,c_white,"Watered Prince","Defeat Prince.") ///DONE
draw_feat(24,spr_featicon,24,c_white,"Wished Beating","Defeat Haifa.") ///DONE
draw_feat(25,spr_featicon,25,c_white,"All Shattered","Defeat Mirrosa.") ///DONE
draw_feat(26,spr_featicon,26,c_white,"Royally Planted","Defeat Synthesa.") ///DONE
draw_feat(27,spr_featicon,27,c_white,"Mean To Dragon","Defeat Fiona.") ///DONE
draw_feat(28,spr_featicon,28,c_white,"Science Project","Defeat Dr.Fran.") ///DONE
draw_feat(29,spr_featicon,29,c_white,"Dastardly Bite","Defeat Van Bad.") ///DONE
draw_feat(30,spr_featicon,30,c_white,"That's All Folks!","Clear Arcade Mode for the First Time.") ///DONE
draw_feat(31,spr_featicon,31,c_white,"Best In Show","Clear Arcade Mode on Very Hard.") ///DONE
draw_feat(32,spr_featicon,32,c_white,"World Mapper","Clear all stages in the game.") ///DONE
draw_feat(33,spr_featicon,33,c_white,"Animal Tamer","Pet all animals from all stages.")
draw_feat(34,spr_featicon,34,c_white,"Diva Detective.","Find all Stage Secrets.")
draw_feat(35,spr_featicon,35,c_white,"Goon Bruiser.","Defeat 100 enemies.\n"+string(clamp(global.EnemyDeath,0,100))+"/100")
draw_feat(36,spr_featicon,36,c_white,"Goon Crusher.","Defeat 500 enemies.\n"+string(clamp(global.EnemyDeath,0,500))+"/500")
draw_feat(37,spr_featicon,37,c_white,"Goon Slayer.","Defeat 1000 enemies.\n"+string(clamp(global.EnemyDeath,0,1000))+"/1000")
draw_feat(38,spr_featicon,38,c_white,"Shopping List","Buy out all of the Extras.") ///DONE
draw_feat(39,spr_featicon,39,c_white,"Big Cheater","Buy out all of the Cheats.") ///DONE
draw_feat(40,spr_featicon,40,c_white,"Art Collector","Buy out all of the Gallery.") //DONE
draw_feat(41,spr_featicon,41,c_white,"Missed The Ride","Get the Bad Ending.") //DONE
draw_feat(42,spr_featicon,42,c_white,"All Written","Complete the Profile & Info") //DONE
draw_feat(43,spr_featicon,43,c_white,"Filmography","Unlock All Cutscenes")  ///DONE
draw_feat(44,spr_featicon,44,c_white,"Back From World Tour","Clear All Stage Mode./ (Normal difficulty or higher only)")
draw_feat(45,spr_featicon,45,c_white,"Diva Survivor","Get a High Score of 50000 on Survival Mode.") //DONE
draw_feat(46,spr_featicon,46,c_white,"Diva Champion","Beat Boss Battles Mode.") //DONE
draw_feat(47,spr_featicon,47,c_white,"Game Queen","Win all of the six Minigames.") //DONE
draw_feat(48,spr_featicon,48,c_white,"Beauty Fishing","Get all fish in the Fishing minigame.")
draw_feat(49,spr_featicon,49,c_white,"It's Bad For You!","Smoke up to 4 times in a row as Viva.") //Smoke 4 times as Viva 
draw_feat(50,spr_featicon,50,c_white,"Zzz...","Remain in idle as Hina for one minute.") //
draw_feat(51,spr_featicon,51,c_white,"Nice froggy...","Pet a toad as Bahati.")
draw_feat(52,spr_featicon,52,c_white,"Boingy, Boingy!","Bounce on an enemy 8 times in a row as Sofia!")
if x=9999999
{

draw_feat(53,spr_featicon,53,c_white,"BOO!","F2000 POUNDS")
draw_feat(54,spr_featicon,54,c_white,"BOO!","F2000 POUNDS")
draw_feat(55,spr_featicon,55,c_white,"BOO!","F2000 POUNDS")
draw_feat(56,spr_featicon,56,c_white,"BOO!","F2000 POUNDS")
draw_feat(57,spr_featicon,57,c_white,"BOO!","F2000 POUNDS")
draw_feat(58,spr_featicon,58,c_white,"BOO!","F2000 POUNDS")
draw_feat(59,spr_featicon,59,c_white,"BOO!","F2000 POUNDS")
draw_feat(60,spr_featicon,60,c_white,"BOO!","F2000 POUNDS")
draw_feat(61,spr_featicon,61,c_white,"BOO!","F2000 POUNDS")
draw_feat(62,spr_featicon,62,c_white,"BOO!","F2000 POUNDS")
draw_feat(63,spr_featicon,63,c_white,"BOO!","F2000 POUNDS")
draw_feat(64,spr_featicon,64,c_white,"BOO!","F2000 POUNDS")
draw_feat(65,spr_featicon,65,c_white,"BOO!","F2000 POUNDS")
draw_feat(66,spr_featicon,66,c_white,"BOO!","F2000 POUNDS")
draw_feat(67,spr_featicon,67,c_white,"FAT","GAIN 1000 POUNDS")
draw_feat(68,spr_featicon,68,c_white,"RRR","GAIN 2000 POUNDS")
draw_feat(69,spr_featicon,69,c_white,"123","MAX")
draw_feat(70,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(71,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(72,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(73,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(74,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(75,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(76,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(77,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(78,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(79,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(80,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(81,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(82,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(83,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(84,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(85,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(86,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(87,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(88,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(89,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(90,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(91,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(92,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(93,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(94,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(95,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(96,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(97,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(98,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(99,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
draw_feat(100,spr_featicon,0,c_white,"BOO!","F2000 POUNDS")
}

if featsel<1+4 featY=lerp(featY,0,0.5)
else if featsel<1+8 featY=lerp(featY,-48*4,0.5)
else if featsel<1+12 featY=lerp(featY,-48*8,0.5)
else if featsel<1+16 featY=lerp(featY,-48*12,0.5)
else if featsel<1+20 featY=lerp(featY,-48*16,0.5)
else if featsel<1+24 featY=lerp(featY,-48*20,0.5)
else if featsel<1+28 featY=lerp(featY,-48*24,0.5)
else if featsel<1+32 featY=lerp(featY,-48*28,0.5)
else if featsel<1+36 featY=lerp(featY,-48*32,0.5)
else if featsel<1+40 featY=lerp(featY,-48*36,0.5)
else if featsel<1+44 featY=lerp(featY,-48*40,0.5)
else if featsel<1+48 featY=lerp(featY,-48*44,0.5)
else if featsel<1+52 featY=lerp(featY,-48*48,0.5)
else if featsel<1+56 featY=lerp(featY,-48*52,0.5)
else if featsel<1+60 featY=lerp(featY,-48*56,0.5)
else if featsel<1+64 featY=lerp(featY,-48*60,0.5)
else if featsel<1+68 featY=lerp(featY,-48*64,0.5)
else if featsel<1+72 featY=lerp(featY,-48*68,0.5)
else if featsel<1+76 featY=lerp(featY,-48*72,0.5)
else if featsel<1+80 featY=lerp(featY,-48*76,0.5)
else if featsel<1+84 featY=lerp(featY,-48*80,0.5)
else if featsel<1+88 featY=lerp(featY,-48*84,0.5)
else if featsel<1+92 featY=lerp(featY,-48*88,0.5)
else if featsel<1+96 featY=lerp(featY,-48*92,0.5)
else if featsel<1+100 featY=lerp(featY,-48*96,0.5)

draw_set_color(c_black) draw_set_alpha(1)
draw_rectangle(-32,-32,340,24,false)

draw_rectangle(-32,240-24,340,240,false)

draw_set_color(c_white) draw_set_halign(fa_center)
draw_text(160,8,"ACHIEVEMENTS")
//draw_text(160,240-16,"1/100 COMPLETE")

}
