/// @description Game
tvfx_draw()
display_set_gui_size(320,240)
draw_set_alpha(1)
/////TV Shaders
if betatest=1
{
	
	if keyboard_check_pressed(vk_pause) 
	{
	if !keyboard_check(vk_shift)
	{ if TVfx=0 TVfx=6 else TVfx-=1}
else	
	{ if TVfx=6 TVfx=0 else TVfx+=1}
	
	global.CRTfx=TVfx
	}
	}
	
	if oControl.TVfx!=9999
{application_surface_draw_enable(false);
if crtcheck=320
{
surface_width=window_get_width()
surface_height=window_get_height()
}
else
{
surface_width=window_get_width()/2
surface_height=window_get_height()/2
}
}
else application_surface_draw_enable(true);
	
	

if (surface_exists(new_surf) == false) {
  new_surf = surface_create(surface_get_width(application_surface), surface_get_height(application_surface));
}

	if oControl.TVfx!=9999
	{
surface_resize(new_surf,320,240)

surface_set_target(new_surf);
draw_clear_alpha(c_black, 0.0);
draw_surface(application_surface, 0, 0);
//shader_reset()
	}
////////////////
	
	
if isPaused=0
{

if room!=rm_titlescreen and room!=rm_characterselect and room!=rm_hiscore
and room!=rm_animeditor and room!=rm_newspaper and room!=rm_creditscene and room!=rm_howtoplay and room!=rm_cutscene1
and room!=rm_map and room!=rm_chardata and room!=rm_feats and room!=rm_shop and room!=rm_opening
and room!=rm_soundtest  and room!=rm_gallery and room!=rm_loading and room!=rm_brickbreak
and room!=rm_menu and room!=rm_settings and room!=rm_minigames and room!=rm_cutscenes and room!=rm_paletteeditor
and room!=rm_slotmachine and room!=rm_eatinggame and room!=rm_singgame and isNotStage=0
{
if betatest=1
{
if keyboard_check_pressed(vk_insert)
enemy_create(oPlayer.x,oPlayer.y,
choose(oEnemy1,oFemBurglar,oFatBurglar,oRobot,oSneak,oSwing)

,0,choose(0,1,2,3),0,
choose(0,"FRED","MARY","SANTA MARIA","JEKYLL","HYDE","JEFF")
,choose(1,2,3),random_range(0.1,1))
}


if BGmove=1
__background_set( e__BG.X, 0, -(__view_get( e__VW.XView, 0 )/80) )

draw_set_color(c_black)
draw_set_color(c_white)

if showHUD
{
draw_set_font(global.timefont)///Timer
if continueScreen=0
{
if !instance_exists(oArenaSurvival)
{
if time>=10
draw_text(160-16,0,string_hash_to_newline(time))
else
{
draw_text(160,0,string_hash_to_newline(time))
draw_text(160-16,0,string_hash_to_newline(0))
}
}
else
{time=99
with oArenaSurvival drawscript()
}

}
draw_set_font(-1)
draw_set_halign(fa_left);
 draw_set_valign(fa_top);
 draw_set_color(c_white)
 
 
 //Player Icons
 
//draw_sprite(spr_hud,0,0,0)
//draw_sprite(spr_hud,0,72,0)
//draw_sprite(spr_hud,0,320-144,0)
//draw_sprite(spr_hud,0,320-72,0)

//draw_sprite(spr_hud,0,80,0) playerNo=1
with p1 {draw_playerhp()}
with p2 {draw_playerhp()}
with p3 {draw_playerhp()}
with p4 {draw_playerhp()}
draw_set_font(-1)
if superFlashFrame1!=0 superFlashFrame1-=0.25 else superFlashFrame1=2
if superFlashFrame2!=0 superFlashFrame2-=0.25 else superFlashFrame2=2

//draw_sprite(spr_hud,0,240,0)

d3d_transform_set_identity()
d3d_transform_set_translation(-2,2,0)

if enemyShowTime!=0
enemyShowTime-=1 else
if enemyID!=-1 {enemyID=-1 enemyShowTime=0}

enemyhp=hpLerp

if enemyID!=-1
{
if ShowEnemyHP=1///Enemy's HP
{
if showhp=1
{
draw_set_color(c_white)
if enemymaxhp>1
{
draw_rectangle(25-1,48-1,25+(1*45)+1,48+8+1,false)
draw_set_color(c_red)
draw_rectangle(25,48,25+(1*45),48+8,false)
}
else
{
draw_rectangle(25-1,48-1,25+(enemymaxhp*45)+1,48+8+1,false)
draw_set_color(c_red)
draw_rectangle(25,48,25+(enemymaxhp*45),48+8,false)
}
if enemyhp>=0{///HP Layers
if enemymaxhp>1
{
if enemyhp<=1
{draw_set_color(c_yellow)draw_rectangle(25,48,25+(enemyhp*45),48+8,false)}
if enemyhp>1 if enemyhp<=2
{draw_set_color(c_yellow) draw_rectangle(25,48,25+(1*45),48+8,false)
draw_set_color(c_orange)draw_rectangle(25,48,25+((enemyhp-1)*45),48+8,false)}
if enemyhp>2 if enemyhp<=3
{draw_set_color(c_orange) draw_rectangle(25,48,25+((1)*45),48+8,false)
draw_set_color(c_blue)draw_rectangle(25,48,25+((enemyhp-2)*45),48+8,false)}
if enemyhp>3 if enemyhp<=4
{draw_set_color(c_blue) draw_rectangle(25,48,25+(1*45),48+8,false)
draw_set_color(c_green)draw_rectangle(25,48,25+((enemyhp-3)*45),48+8,false)}
if enemyhp>4 if enemyhp<=5
{draw_set_color(c_green) draw_rectangle(25,48,25+(1*45),48+8,false)
draw_set_color(c_olive)draw_rectangle(25,48,25+((enemyhp-4)*45),48+8,false)}
if enemyhp>5 if enemyhp<=6
{draw_set_color(c_olive) draw_rectangle(25,48,25+(1*45),48+8,false)
draw_set_color(c_navy)draw_rectangle(25,48,25+((enemyhp-5)*45),48+8,false)}
if enemyhp>6 if enemyhp<=7
{draw_set_color(c_navy) draw_rectangle(25,48,25+(1*45),48+8,false)
draw_set_color(c_maroon)draw_rectangle(25,48,25+((enemyhp-6)*45),48+8,false)}
if enemyhp>7 if enemyhp<=8
{draw_set_color(c_maroon) draw_rectangle(25,48,25+(1*45),48+8,false)
draw_set_color(c_gray)draw_rectangle(25,48,25+((enemyhp-7)*45),48+8,false)}
if enemyhp>8 if enemyhp<=9
{draw_set_color(c_gray) draw_rectangle(25,48,25+(1*45),48+8,false)
draw_set_color(c_dkgray)draw_rectangle(25,48,25+((enemyhp-8)*45),48+8,false)}
if enemyhp>9{draw_set_color(c_dkgray) draw_rectangle(25,48,25+(1*45),48+8,false)
draw_set_color(c_black)draw_rectangle(25,48,25+((enemyhp-9)*45),48+8,false)}
}
else
{draw_set_color(c_yellow)draw_rectangle(25,48,25+(enemyhp*45),48+8,false)}
}
{if enemyhplayer=0
if enemyHPflash=0 enemyHPflash=2 else enemyHPflash-=0.5}
}
pal_swap_set(my_pal_sprite,current_pal,false);
draw_sprite(enemyPortraitSpr,enemyPortraitIndex,4,32)
pal_swap_reset();
draw_sprite(spr_miscface,1,4,32)
if enemyHPflash>1
if enemydead=1
draw_sprite(spr_enemyface,0,4,32)///X Mark for portrait
else enemyhplayer=0

draw_set_halign(fa_left); draw_set_valign(fa_top);
draw_set_font(global.scorefont)
draw_set_color(c_white)///Enemy Name Here
if string_length(enemyname)<=6
draw_text(27,38,string_hash_to_newline(enemyname)) 
else if string_length(enemyname)<=7
draw_text_transformed(27,38,string_hash_to_newline(enemyname),0.8,1,0) 
else if string_length(enemyname)<=8
draw_text_transformed(27,38,string_hash_to_newline(enemyname),0.7,1,0) 
else
draw_text_transformed(27,38,string_hash_to_newline(enemyname),0.65,1,0) 

draw_set_font(-1)
}}
else enemyHPflash=0

d3d_transform_set_identity()


if BossHPID!=-1
{
if !instance_exists(BossHPID) {BossHPID=-1 exit;}

if BossHPID.dead=1 {BossHPID=-1 exit;}

if BossHPID.hp<=0 and BossHPID.hplayer=0 {BossHPID=-1 exit;}

draw_set_halign(fa_center); draw_set_valign(fa_top);
draw_set_font(global.scorefont)
draw_set_color(c_white)///Enemy Name Here
draw_text(160,240-32,string_hash_to_newline(BossHPName)) draw_set_font(-1)

draw_set_color(c_white)
draw_rectangle(64,240-24,320-64,240-16,false)
draw_set_color(c_red)
draw_rectangle(64+1,240-24+1,320-64-1,240-16-1,false)

BossHP=BossHPID.hp

if BossHPID.hplayer=0
{draw_set_color(c_yellow)draw_rectangle(64+1,240-24+1,64-1+192*BossHP,240-16-1,false)}
if BossHPID.hplayer=1{draw_set_color(c_yellow) draw_rectangle(64+1,240-24+1,320-64-1,240-16-1,false)
draw_set_color(c_orange)draw_rectangle(64+1,240-24+1,64-1+192*BossHP,240-16-1,false)}
if BossHPID.hplayer=2{draw_set_color(c_orange) draw_rectangle(64+1,240-24+1,320-64-1,240-16-1,false)
draw_set_color(c_blue)draw_rectangle(64+1,240-24+1,64-1+192*BossHP,240-16-1,false)}
if BossHPID.hplayer=3{draw_set_color(c_blue) draw_rectangle(64+1,240-24+1,320-64-1,240-16-1,false)
draw_set_color(c_green)draw_rectangle(64+1,240-24+1,64-1+192*BossHP,240-16-1,false)}
if BossHPID.hplayer=4{draw_set_color(c_green) draw_rectangle(64+1,240-24+1,320-64-1,240-16-1,false)
draw_set_color(c_olive)draw_rectangle(64+1,240-24+1,64-1+192*BossHP,240-16-1,false)}
if BossHPID.hplayer=5{draw_set_color(c_olive) draw_rectangle(64+1,240-24+1,320-64-1,240-16-1,false)
draw_set_color(c_navy)draw_rectangle(64+1,240-24+1,64-1+192*BossHP,240-16-1,false)}
if BossHPID.hplayer=6{draw_set_color(c_navy) draw_rectangle(64+1,240-24+1,320-64-1,240-16-1,false)
draw_set_color(c_maroon)draw_rectangle(64+1,240-24+1,64-1+192*BossHP,240-16-1,false)}
if BossHPID.hplayer=7{draw_set_color(c_maroon) draw_rectangle(64+1,240-24+1,320-64-1,240-16-1,false)
draw_set_color(c_gray)draw_rectangle(64+1,240-24+1,64-1+192*BossHP,240-16-1,false)}
if BossHPID.hplayer=8{draw_set_color(c_gray) draw_rectangle(64+1,240-24+1,320-64-1,240-16-1,false)
draw_set_color(c_dkgray)draw_rectangle(64+1,240-24+1,64-1+192*BossHP,240-16-1,false)}
if BossHPID.hplayer=9{draw_set_color(c_dkgray) draw_rectangle(64+1,240-24+1,320-64-1,240-16-1,false)
draw_set_color(c_black)draw_rectangle(64+1,240-24+1,64-1+192*BossHP,240-16-1,false)}

draw_set_halign(fa_left)


}

if tutorialTextTime!=0
{tutorialTextTime-=1
tutorialTextY=lerp(tutorialTextY,-24,0.1)
}else if tutorialTextY!=24 tutorialTextY+=1
if tutorialTextY<23
{draw_set_alpha(1)
draw_set_halign(fa_center);
draw_set_font(global.scorefont)
draw_set_color(c_white)
draw_buttontext(tutorialTextX,240+tutorialTextY,btnSep,btnT1,btnspr,btnind,btnT2,btnT3)
//draw_text(160,round(240+tutorialTextY),tutorialText)
}

///GO!
if goActive=1
draw_sprite(spr_go,goFrame,320-50,80)

if goFrame!=0 goFrame-=0.25 else {goFrame=6 if goActive=1 PlaySound(snd_go)}
}
if betatest=1 and TextBeta=1
{draw_set_halign(fa_left)
draw_set_color(c_black)
draw_text_transformed(8,204,string_hash_to_newline("STRONG MODE: "+string(StrongMode)+string(" Press P to be stronk    X ")+string(oPlayer.x)+string("Y ")+string(oPlayer.y)),0.5,0.5,0)
draw_text_transformed(8,210,string_hash_to_newline("IGNORE: "+string(oPlayer.ignore)+string(" Press I to disable enemy AI")),0.5,0.5,0)
draw_text_transformed(8,216,string_hash_to_newline("L click to SPAWN: -"+string(enemySpawnName)+string("- Roll mid mouse to change")),0.5,0.5,0)
draw_text_transformed(8,222,string_hash_to_newline("CAMERA X: -"+string(__view_get( e__VW.XView, 0 ))),0.5,0.5,0)
if instance_exists(oEnemySpawner)
draw_text_transformed(80,222,string_hash_to_newline(oEnemySpawner.timeline_position),0.5,0.5,0.5)
draw_text_transformed(8,230,string_hash_to_newline("F1 reset - Down"+string(oPlayer.commandDown)+" Up"+string(oPlayer.commandUp)+" Left"+string(oPlayer.commandLeft)+" Right"+string(oPlayer.commandRight)+" Charge "+string(oPlayer.commandCharge)),0.5,0.5,0.5)

draw_text_transformed(80,198,string_hash_to_newline("Hurt Test"+string(HurtTest)),0.5,0.5,0.5)
if keyboard_check_pressed(ord("1")) HurtTest-=1
if keyboard_check_pressed(ord("3")) HurtTest+=1


draw_sprite(spr_spawnpos,0,P1SpawnX,P1SpawnY)
}

if continueScreen=1 ///Continue?!
{
draw_set_alpha(1) draw_set_color(c_white)
draw_set_font(global.timefont)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
if isGameOver=0
{//{gameover_set()}
draw_sprite(spr_continue,isGameOver,160,50)///Continue
//draw_text(160,140,continueCountdown)
draw_sprite_ext(spr_continuenum,continueCountdown,160,140,2-(1/alarm[2])*2,2-(1/alarm[2])*2,0,c_white,1)


draw_set_halign(fa_center)
draw_set_font(global.scorefont)
if global.Continues=-1
draw_text(160,220,"CREDIT INFINITE")
else
draw_text(160,220,"CREDIT "+string(global.Continues))
}

if isGameOver=1
{
if alarm[3]<60
if isGameOverDark<4 isGameOverDark+=0.05
draw_set_alpha(isGameOverDark)

draw_set_color(c_black)
draw_rectangle(-32,-32,999,999,false)

gameOverSpin=lerp(gameOverSpin,360,0.1)


draw_sprite_ext(spr_continue,isGameOver,160,100+20*isGameOver,sin(gameOverSpin),1,0,c_black,1)///Game Over Text
d3d_set_culling(true)
draw_sprite_ext(spr_continue,isGameOver,160,100+20*isGameOver,sin(gameOverSpin),1,0,c_white,1)///Game Over Text
d3d_set_culling(false)

draw_set_alpha(isGameOverDark-1)///
draw_set_color(c_black)
draw_rectangle(-32,-32,999,999,false)
}
draw_set_alpha(1) draw_set_color(c_white)
}
draw_set_halign(fa_left)
draw_set_valign(fa_top)

if continueScreen=200 ///Character Select
{
if continueFlash<0 continueFlash=2 else continueFlash-=0.5

if characterSelect=0 pal_swap_set(global.p1Pals,global.p1Pal,false)
draw_sprite_ext(spr_playerface,0,0,0,1,1,0,c_white,1) pal_swap_reset()
if characterSelect=1 pal_swap_set(global.p1Pals,global.p1Pal,false)
draw_sprite_ext(spr_playerface,1,23,0,1,1,0,c_white,1) pal_swap_reset()
if characterSelect=2 pal_swap_set(global.p1Pals,global.p1Pal,false)
draw_sprite_ext(spr_playerface,2,46,0,1,1,0,c_white,1) pal_swap_reset()
if characterSelect=3 pal_swap_set(global.p1Pals,global.p1Pal,false)
draw_sprite_ext(spr_playerface,3,69,0,1,1,0,c_white,1) pal_swap_reset()


draw_set_color(c_white)

draw_set_font(global.scorefont)
draw_text(23*characterSelect+2,2,string_hash_to_newline(characterTimer))

if continueFlash<1
draw_sprite_ext(spr_playerface,4,23*characterSelect,0,1,1,0,c_white,1)

if global.UnlockAltPal=1
{
if oPlayer.key_up_pressed {if global.p1Pal=0 global.p1Pal=15 else global.p1Pal-=1 PlaySound(snd_steal)}
if -oPlayer.key_down_pressed {if global.p1Pal=15 global.p1Pal=0 else global.p1Pal+=1 PlaySound(snd_steal)}
}

if -oPlayer.key_left_pressed if characterSelect=0 characterSelect=3
else characterSelect-=1
if oPlayer.key_right_pressed if characterSelect=3 characterSelect=0
else characterSelect+=1
}

if continueScreen=300 ///Set Hi-Score Input
{
if continueFlash<0 continueFlash=2 else continueFlash-=0.5

if oPlayer.key_attack
{
//hiscore_check()
if hiScoreInputNum=3
{
keyGet3=string(keyNoCheck)
}
if hiScoreInputNum=2
{
keyGet2=string(keyNoCheck)
keyGet3=string(keyNoCheck)
}
if hiScoreInputNum=1
{
keyGet1=string(keyNoCheck)
keyGet2=string(keyNoCheck)
keyGet3=string(keyNoCheck)
}
if hiScoreInputNum!=5
hiScoreInputNum+=1
}

draw_set_font(global.scorefont)

draw_set_color(c_white) draw_set_alpha(1)

if -oPlayer.key_left_pressed {if keyNo=0 keyNo=48 else keyNo-=1 keyno_check()}
if oPlayer.key_right_pressed {if keyNo=48 keyNo=0 else keyNo+=1 keyno_check()}

if hiScoreInputNum=1
if continueFlash<1
draw_text(0,0,string_hash_to_newline(keyNoCheck))
if hiScoreInputNum=2
{
draw_text(0,0,string_hash_to_newline(keyGet1))
if continueFlash<1
draw_text(8,0,string_hash_to_newline(keyNoCheck))
}
if hiScoreInputNum=3
{
draw_text(0,0,string_hash_to_newline(keyGet1))
draw_text(8,0,string_hash_to_newline(keyGet2))
if continueFlash<1
draw_text(16,0,string_hash_to_newline((keyNoCheck)))
}
if hiScoreInputNum=4
{
draw_text(0,0,string_hash_to_newline(keyGet1))
draw_text(8,0,string_hash_to_newline(keyGet2))
draw_text(16,0,string_hash_to_newline(keyGet3))
if continueFlash<1
draw_text(24,0,string_hash_to_newline("X"))
}
if hiScoreInputNum=5
{
if continueFlash<1
{
draw_text(0,0,string_hash_to_newline(string(keyGet1)))
draw_text(8,0,string_hash_to_newline(string(keyGet2)))
draw_text(16,0,string_hash_to_newline(string(keyGet3)))
if keyToGameOver=0 ///Set Hi-Score
{
HiInput1=keyGet1+keyGet2+keyGet3

if finalStageEnd=0
{hiscore_check()
isGameOver=0 
keyToGameOver=1
alarm[2]=240
}
else
{
if finalStageScoreMark!=100 finalStageScoreMark+=1
else
{alarm[8]=100 finalStageScoreMark=241 hiscore_check()
stageEndFX=1
stageEnd=0
}
}
}
}
}

}

///Check Cheats
if StrongMode=1

{oPlayer.extradamage=9999 
oPlayer.extradefense=9999 
}else
{
oPlayer.extradamage=0
oPlayer.extradefense=0
}



///Map Check
if showMap=1
{
if mapYscale!=1 mapYscale+=0.05
mapX=lerp(mapX,160,0.16) //0.08

mapTime+=1

if mapTime<140
mapY=lerp(mapY,80,0.16)
else mapY=lerp(mapY,-320,0.1)

if mapTime>200 showMap=0

/////INTRO MAP CHECK

d3d_transform_set_identity()
d3d_transform_add_scaling(mapXscale,mapYscale,1)
d3d_transform_add_translation(round(mapX+mapXAdd*80),round(mapY),0)
if mapXAdd>0 mapXAdd-=0.02
d3d_set_culling(false)
shader_set(shd_grayscale)
draw_sprite_ext(spr_filmstage,prevstagecheck1,-240,0,1,1,0,c_white,1)
draw_sprite_ext(spr_filmstage,prevstagecheck2,-160,0,1,1,0,c_white,1)
draw_sprite_ext(spr_filmstage,prevstagecheck3,-80,0,1,1,0,c_white,1)

shader_reset()
draw_sprite_ext(spr_filmstage,stagecheck,0,0,1,1,0,c_white,1)
gpu_set_blendmode_ext(bm_dest_color, bm_zero)
if prevstagecheck1!=0
draw_sprite_ext(spr_filmstage2,0,-240,0,1,1,0,c_white,1)
if prevstagecheck2!=0
draw_sprite_ext(spr_filmstage2,0,-160,0,1,1,0,c_white,1)
if prevstagecheck3!=0
draw_sprite_ext(spr_filmstage2,0,-80,0,1,1,0,c_white,1)
draw_sprite_ext(spr_filmstage2,0,0,0,1,1,0,c_white,1)
draw_set_blend_mode(bm_normal)
draw_sprite_ext(spr_filmstage,0,0,0,1,1,0,c_white,mapXAdd)//
draw_sprite_ext(spr_filmstage,0,80,0,1,1,0,c_white,1)
draw_sprite_ext(spr_filmstage,0,160,0,1,1,0,c_white,1)
mapXFilm-=4 if mapXFilm<-16 mapXFilm+=16 draw_set_alpha(1)
draw_set_halign(fa_left)
var filmY=0;
var iI;
for (iI=0; iI<=320+64; iI+=16)
draw_sprite_ext(spr_filmpart,0,-160-64+mapXFilm+iI,-30-8,1,1,0,c_white,1);
var iB;
for (iB=0; iB<=320+64; iB+=16)
draw_sprite_ext(spr_filmpart,0,-160-64+mapXFilm+iB,+30,1,1,0,c_white,1);

draw_set_font(global.scorefont) draw_set_color(c_white)
draw_set_halign(fa_center)
draw_text(0,-30,"STAGE "+string(global.HiScoreLevel))
draw_text(0,30,stagename)

draw_set_halign(fa_left)
//d3d_set_culling(true)
//draw_sprite_ext(spr_filmstage,0,0,0,1,1,0,c_white,1)


d3d_transform_set_identity()
d3d_set_culling(false)
}else mapXFilm=0


///Dialogue
draw_set_halign(fa_center); draw_set_valign(fa_top);
draw_set_font(global.scorefont) draw_set_alpha(1)
draw_set_color(c_white)///Enemy Name Here
draw_text(160,240-24,string_hash_to_newline(TextDialogue))
draw_set_font(-1)
draw_set_halign(fa_left)

if bossID!=-1 if !instance_exists(bossID) bossID=-1;
else
if bossID.hp>=0
{
{
///Boss Name and Bar
draw_set_halign(fa_center); draw_set_valign(fa_top);
draw_set_font(global.scorefont) draw_set_alpha(1)
draw_set_color(c_white)///Enemy Name Here
draw_text(160,240-24,string_hash_to_newline(bossID.name)) draw_set_font(-1)
draw_set_color(c_white) draw_set_alpha(1) draw_rectangle(160-128-1,240-24+10-1,160+128+1,240-24+14+1,false)
draw_set_color(c_red) draw_set_alpha(1) draw_rectangle(160-128,240-24+10,160-128+256,240-24+14,false)

if bossID.maxhp<=1
{draw_set_color(c_yellow) draw_set_alpha(1) draw_rectangle(160-128,240-24+10,160-128+(256)*bossID.hp,240-24+14,false)}
if bossID.maxhp<=2
{draw_set_color(c_yellow) draw_set_alpha(1) draw_rectangle(160-128,240-24+10,160-128+(128)*bossID.hp,240-24+14,false)}
}

}
draw_set_halign(fa_left)


///Stage Clear



///Screen FX for intro
if stageIntro!=0 stageIntro-=0.05 else stageIntro=0
draw_set_color(c_black) draw_set_alpha(1)
if stageIntro!=0
draw_rectangle(-2,-2,320*stageIntro,999,false)
draw_set_color(c_white) draw_set_alpha(1)

///Screen FX for exit
if stageEndFX=1
{
if stageEnd!=1 stageEnd+=0.05 else stageEnd=1
draw_set_color(c_black) draw_set_alpha(1)
if stageEnd!=0
draw_rectangle(-2,-2,320*stageEnd,999,false)
draw_set_color(c_white) draw_set_alpha(1)
}
}////Draw main game end

///Title Screen
if room=rm_titlescreen
{
draw_set_color(c_white) draw_set_alpha(1)

shader_set(shd_white_sprite)
draw_sprite_ext(spr_gametitle,0,160,round(titlescreenY+titlescreenMenuY),titlescreenXscale,1,0,c_white,1)
shader_reset()

draw_sprite_ext(spr_gametitle,0,160,round(titlescreenY+titlescreenMenuY),titlescreenXscale,1,0,c_black,titleObjectWhite)



if iconShow>90
{
if iconShow<210-70
if iconSel=spr_scicon if global.IntroSkip=0
{global.IntroSkip=1 room_goto(rm_newspaper)} ///Skip To Newspaper Scene


if iconShow>210-60
{
draw_set_color(c_white) draw_set_alpha(1)
draw_rectangle(-4,-4,344,260,false)
draw_sprite(iconSel,0,160,120-16)
draw_set_color(c_black) draw_set_alpha(iconBlack)
draw_rectangle(-4,-4,344,260,false)
draw_set_color(c_white) draw_set_alpha(1)

}
else
{


if iconSel=spr_mrpr1993 and noIcon=0 {iconSel=spr_scicon iconShow+=160
	
	}
BlackY+=8
draw_set_color(c_black) draw_set_alpha(iconBlack)
draw_rectangle(-4,-2-BlackY,344,240+2-BlackY,false)
draw_rectangle(-4,-2+BlackY,344,240+2+BlackY,false)
draw_set_color(c_white) draw_set_alpha(1)
}

if iconShow>120+60
{if iconBlack!=0 iconBlack-=0.1}
else
{if iconBlack!=1 iconBlack+=0.1}

iconShow-=1
}
else
{
titlescreenY=lerp(titlescreenY,120,0.1)

if titlescreenY>121
titlescreenXscale=lerp(titlescreenXscale,1.5,0.2)
else titlescreenXscale=lerp(titlescreenXscale,1,0.2)

if titlescreenY<121
{titleFlashFX=0 if titleObjectWhite>0 titleObjectWhite-=0.02 else titleObjectWhite=0
titleFlashTime-=1 if titleFlashTime=0 {	
	if titleShow=0 titleShow=1}
}

if titleShow=1
{
draw_set_color(c_white) titleImg+=0.1
draw_sprite_ext(spr_gametitle,titleImg,160,round(titlescreenY+titlescreenMenuY),1,1,0,c_white,1)
draw_set_alpha(titleSquareFX) titleSquareFX-=0.02 if titleSquareFX=0.02 if global.MenuSkip=0
PlaySound(choose(snd_titlescreen,snd_titlescreen2,snd_titlescreen3,snd_titlescreen4))
if noWhite=0
draw_rectangle(-4,-4,340,260,false)

draw_set_font(global.scorefont)
{draw_set_halign(fa_center) draw_set_alpha(1)
if pressStartTime=0 pressStartTime=2 else pressStartTime-=0.025
if pressStart=0
{
if pressStartTime<1
{draw_text(160,184,string_hash_to_newline("PRESS START"))
}
}
else ///Select Menu
{
titlescreenMenuY=lerp(titlescreenMenuY,-20,0.1)
	if !instance_exists(oSettings)
	{
if key_up_pressed {PlaySound(snd_select) if menuSelect=0 menuSelect=7 else menuSelect-=1}
if -key_down_pressed {PlaySound(snd_select) if menuSelect=7 menuSelect=0 else menuSelect+=1}
	}
draw_set_halign(fa_left)
if selectStar=0 selectStar=2 else selectStar-=0.2

if menuSelect=0 {StarY=-24+184-16 StarSpace=108 menuLocked=1}
if menuSelect=1 {StarY=-24+184-16+8 StarSpace=104 menuLocked=1}
if menuSelect=2 {StarY=-24+184-16+16 StarSpace=120 menuLocked=1}
if menuSelect=3 {StarY=-24+184-16+24 StarSpace=122 menuLocked=1}
if menuSelect=4 {StarY=-24+184-16+32 StarSpace=136 menuLocked=1}
if menuSelect=5 {StarY=-24+184-16+40 StarSpace=132 menuLocked=global.UnlockFeats}
if menuSelect=6 {StarY=-24+184-16+48 StarSpace=84 menuLocked=global.UnlockCharacterData}
if menuSelect=7 {StarY=-24+184-16+56 StarSpace=112 menuLocked=1}
///✰✰✰ //56
draw_set_color(c_black) draw_set_alpha(0.75)
draw_rectangle(80,168-4-24,240,208-4,false)

draw_sprite(spr_scorefont,43,-8+4+StarSpace+selectStar,StarY-4)
draw_sprite(spr_scorefont,43,-8+4+320-StarSpace-selectStar,StarY-4)


draw_set_color(c_white) draw_set_alpha(1)
draw_set_halign(fa_center) //▲►▼◄


//draw_text(160,184-16-4-24,string_hash_to_newline("ARCADE MODE"))
//draw_text(160,184-8-4-24,string_hash_to_newline("STAGE SELECT"))
//draw_text(160,184-4-24,string_hash_to_newline("SETTINGS"))
//draw_text(160,184+8-4-24,string_hash_to_newline("TRAINING"))
//global.UnlockShop=1
//draw_text(160,184+16-4-24,string_hash_to_newline("SHOP"))
//if global.UnlockFeats=0 draw_set_color(c_dkgray)
//draw_text(160,184+24-4-24,string_hash_to_newline("FEATS")) draw_set_color(c_white)
//if global.UnlockCharacterData=0 draw_set_color(c_dkgray)
//draw_text(160,184+32-4-24,string_hash_to_newline("CHARACTER PROFILE")) draw_set_color(c_white)
//draw_text(160,184+40-4-24,string_hash_to_newline("HIGH SCORE"))
}

draw_text(160,184+24,string_hash_to_newline("©2023 MRPR1993"))
if global.Continues=-1
draw_text(160,184+40,string_hash_to_newline("CREDIT ∞"))
else
draw_text(160,184+40,string_hash_to_newline("CREDIT "+string(global.Continues)))
draw_set_halign(fa_left)

draw_set_valign(fa_bottom)
draw_text(0,320,string_hash_to_newline("EARLY ACCESS DEMO V.1"))
draw_set_valign(fa_top)
}
}
}


if introSkipFX!=0
{introSkipFX-=0.25
draw_set_color(c_black) draw_set_alpha(1)
draw_rectangle(-4,-4,340,260,false)
}

draw_set_color(c_white) draw_set_alpha(1)

if titleShow=1 introSkip=1

if selectScreen=0
if key_attack or keyboard_check_pressed(vk_enter) or key_start
if introSkip=0
{
introSkip=1 noWhite=1
introSkipFX=2
iconShow=0
iconBlack=0
titlescreenY=120
titlescreenXscale=1
titleFlashFX=0
titleFlashTime=0
titleObjectWhite=0
titleShow=1
}
else
{
if pressStart=0
{pressStart=1 {PlaySound(snd_picked) selectScreen=1 alarm[4]=10 screenBlack=1}
	global.MenuSkip=1 global.IntroSkip=2
	}
else
if !instance_exists(oSettings)
	{if menuLocked=0 PlaySound(snd_steal) else
		{PlaySound(snd_picked) selectScreen=1 alarm[4]=10 screenBlack=1}
		}
	}

if screenBlack=1
{
draw_set_color(c_black) draw_set_alpha(1)
draw_rectangle(-8,-8,2222,2222,0)
}

}



///Character Select
if room=rm_characterselect
{fpsY=32
draw_set_color(c_white) draw_set_alpha(1)

draw_sprite(spr_characterselecttext,0,160+p5.introtextadd,round(32+charselLerp))

if global.TrainingRoom=0
if global.SkipDifficulty=0
{
if global.MultiVS=0
{
	
if oControl.charsetting=0
{
if p5.key_up_pressed{if oControl.multiVSsetting=0 oControl.multiVSsetting=1 else oControl.multiVSsetting-=1 PlaySound(snd_select)}
if -p5.key_down_pressed{if oControl.multiVSsetting=1 oControl.multiVSsetting=1 else oControl.multiVSsetting+=1 PlaySound(snd_select)}

if oControl.multiVSsetting=0
{

if -p5.key_left_pressed {if global.Difficulty=0 global.Difficulty=4 else global.Difficulty-=1 PlaySound(snd_select)}
if p5.key_right_pressed {if global.Difficulty=4 global.Difficulty=0 else global.Difficulty+=1 PlaySound(snd_select)}
}
if oControl.multiVSsetting=1
{
if -p5.key_left_pressed or p5.key_right_pressed {global.FriendlyFire^=1 PlaySound(snd_select)}
}
}

global.MultiSuper=0	
charselectgo=1;
draw_sprite(spr_difficultyselect,0,160+p5.introtextadd-640,round(32+charselLerp))

draw_set_font(global.scorefont)
var xadd=-640+160+p5.introtextadd
draw_set_halign(fa_center)

var diftext=""
var diftext2=""
if global.Difficulty=0 {diftext="STILL IN BAND CAMP\n(VERY EASY)\n(4 LIVES, 5 CONTINUES)" 
	diftext2="YOU TAKE WAY LESS DAMAGE AND DEAL MORE."
	global.LifeStart=4; global.Continues=5;}
if global.Difficulty=1 {diftext="FIRST GIG\n(EASY)\n(3 LIVES, 4 CONTINUES)"  
	diftext2="YOU TAKE LESS DAMAGE."
		global.LifeStart=3; global.Continues=4;}
	
if global.Difficulty=2 {diftext="FAVORITE AT THE CLUB\n(MEDIUM)\n(2 LIVES, 3 CONTINUES)" 
	diftext2="NORMAL DIFFICULTY, THE BASICS."
		global.LifeStart=2; global.Continues=3;}
	
if global.Difficulty=3 {diftext="THE MAIN EVENT AT THE CONCERT\n(HARD)\n(2 LIVES, 2 CONTINUES)" 
	diftext2="TOUGHER FOES, YOU TAKE MORE DAMAGE."
		global.LifeStart=2; global.Continues=2;}
	
if global.Difficulty=4 {diftext="FOR THE GOLDEN RECORD\n(VERY HARD)\n(2 LIVES, 1 CONTINUE)" 
	diftext2="NOT SUITABLE FOR NEWBIES."
		global.LifeStart=2; global.Continues=1;}
	
if global.CheatUnlock[2] global.LifeStart=global.LifeStart*2;
if global.CheatUnlock[15] global.Continues=-1;

if oControl.multiVSsetting=1
{diftext="FRIENDLY FIRE" 
	diftext2="THE OTHER DIVAS CAN GET HIT BY YOUR OWN MOVES.\n(SHOWTIME WON'T APPLY TO THEM)"}


draw_text(xadd,120-32-24,diftext)
draw_text(xadd,128+8,diftext2)
}
else
{
draw_sprite(spr_multisetting,0,160+p5.introtextadd-640,round(32+charselLerp))

charselectgo=0;

with p5
{
if oControl.charsetting=0
{
if key_up_pressed{if oControl.multiVSsetting=0 oControl.multiVSsetting=3 else oControl.multiVSsetting-=1 PlaySound(snd_select)}
if -key_down_pressed{if oControl.multiVSsetting=2 oControl.multiVSsetting=3 else oControl.multiVSsetting+=1 PlaySound(snd_select)}
////HP Settings
if oControl.multiVSsetting=0
{
if -key_left_pressed {if global.MultiVSHP=0 global.MultiVSHP=3 else global.MultiVSHP-=0.1 PlaySound(snd_select)}
if key_right_pressed {if global.MultiVSHP=3 global.MultiVSHP=0 else global.MultiVSHP+=0.1 PlaySound(snd_select)}
}
////Lives/Max Points

if oControl.multiVSsetting=1
{
if -key_left_pressed {if global.MultiVSLife=0 global.MultiVSLife=9 else global.MultiVSLife-=1 PlaySound(snd_select)}
if key_right_pressed {if global.MultiVSLife=9 global.MultiVSLife=0 else global.MultiVSLife+=1 PlaySound(snd_select)}
}

if oControl.multiVSsetting=2 
{
if -key_left_pressed {if global.MultiTime=0 global.MultiTime=99 else global.MultiTime-=1 PlaySound(snd_select)}
if key_right_pressed {if global.MultiTime=99 global.MultiTime=0 else global.MultiTime+=1 PlaySound(snd_select)}
}

if oControl.multiVSsetting=3
{
if -key_left_pressed {if global.MultiStage=-1 global.MultiStage=18 else global.MultiStage-=1 PlaySound(snd_select)}
if key_right_pressed {if global.MultiStage=18 global.MultiStage=-1 else global.MultiStage+=1 PlaySound(snd_select)}
}
}
diftext="LOCKED"
global.StageGoing=rm_arena
if global.MultiStage=-1 {oControl.charselectgo=1 diftext="RANDOM"
	
	global.StageGoing=choose(rm_arena,rm_stage1multi)
	if global.StageGoing=rm_stage1multi if global.UnlockStage[1]=0 global.StageGoing=rm_arena
	
	} ///Random
if global.MultiStage=0 {oControl.charselectgo=1 diftext="ARENA"} ///Random
if global.MultiStage=1 {oControl.charselectgo=global.UnlockStage[1] global.StageGoing=rm_stage1multi diftext="DOWNTOWN STREET" } ///Random
if global.MultiStage=2 {oControl.charselectgo=global.UnlockStage[2] diftext="AIRPORT CATWALK" } ///Random
if global.MultiStage=3 {oControl.charselectgo=global.UnlockStage[3] diftext="SEA CRUISE SHIP" } ///Random
if global.MultiStage=4 {oControl.charselectgo=global.UnlockStage[4] diftext="EL LOCO DOS" } ///Random
if global.MultiStage=5 {oControl.charselectgo=global.UnlockStage[5] diftext="ANNA MARI'S MANSION" } ///Random
if global.MultiStage=6 {oControl.charselectgo=global.UnlockStage[6] diftext="MASHED MUSEUM" } ///Random
if global.MultiStage=7 {oControl.charselectgo=global.UnlockStage[7] diftext="LUCKY DOJO CASINO" } ///Random
if global.MultiStage=8 {oControl.charselectgo=global.UnlockStage[8] diftext="SWAMP OF THE WITCH" } ///Random
if global.MultiStage=9 {oControl.charselectgo=global.UnlockStage[9] diftext="DUCK'S CARNIVAL" } ///Random
if global.MultiStage=10 {oControl.charselectgo=global.UnlockStage[10] diftext="WAYSIDE BEACH" } ///Random
if global.MultiStage=11 {oControl.charselectgo=global.UnlockStage[11] diftext="MARTIAN UFO" } ///Random
if global.MultiStage=12 {oControl.charselectgo=global.UnlockStage[12] diftext="PRINCE'S COLISSEUM" } ///Random
if global.MultiStage=13 {oControl.charselectgo=global.UnlockStage[13] diftext="UNDERGROUND TEMPLE" } ///Random
if global.MultiStage=14 {oControl.charselectgo=global.UnlockStage[14] diftext="SNOWY PALACE" } ///Random
if global.MultiStage=15 {oControl.charselectgo=global.UnlockStage[15] diftext="GOBLIN CAVERN" } ///Random
if global.MultiStage=16 {oControl.charselectgo=global.UnlockStage[16] diftext="FLUFFY CLOUDY SKY" } ///Random
if global.MultiStage=17 {oControl.charselectgo=global.UnlockStage[18] diftext="MAD DOCTOR'S LAB" } ///Random
if global.MultiStage=18 {oControl.charselectgo=global.UnlockStage[20] diftext="THE DASTARDLY BLIMP" } ///Random

if oControl.charselectgo=0 diftext="LOCKED"

var xadd=-640+160+introtextadd;

draw_set_halign(fa_center)

draw_set_color(c_gray) if oControl.multiVSsetting=0 draw_set_color(c_white)
draw_text(xadd,120-48,"HEALTH LEVEL "+string(round(global.MultiVSHP*100))+"%")///Stage Name
draw_set_color(c_gray) if oControl.multiVSsetting=1 draw_set_color(c_white)
draw_text(xadd,120-48+16,"LIVES "+string(global.MultiVSLife))///Stage Name
draw_set_color(c_gray) if oControl.multiVSsetting=2 draw_set_color(c_white)
draw_text(xadd,120-48+32,"TIME "+string(global.MultiTime))///Time

draw_set_color(c_gray) if oControl.multiVSsetting=3 draw_set_color(c_white)
draw_text(xadd,120-48+32+16,"STAGE SELECT")///Time

draw_set_color(c_gray) var bgcol=c_gray; var bga=0; if oControl.multiVSsetting=3 {bgcol=c_white bga=0.25;}
if global.MultiStage>0.5
draw_sprite_ext(spr_filmstage,global.MultiStage,xadd,168,1,1,0,bgcol*oControl.charselectgo,0.75+bga)
else
draw_sprite_ext(spr_filmstage3,global.MultiStage+1,xadd,168,1,1,0,bgcol*oControl.charselectgo,0.75+bga)
draw_set_color(c_white)
draw_text(xadd,208,diftext)///Stage Name
draw_set_halign(fa_left)
}

draw_sprite(spr_characterselecttext,0,160+p5.introtextadd,round(32+charselLerp))
}

draw_set_halign(fa_left)

//draw_sprite_ext(spr_characterselect,2,xadd,16,1,1,0,c_white,0.5)
var difadd=0; global.Difficulty=clamp(global.Difficulty,0,4)
if global.Difficulty=1 difadd=16
if global.Difficulty=2 difadd=32
if global.Difficulty=3 difadd=48
if global.Difficulty=4 difadd=64
for (iI=0; iI<=global.Difficulty; iI+=1)
{
if global.MultiVS=0
{var selecty=c_gray if oControl.multiVSsetting=0 selecty=c_white
draw_sprite_ext(spr_difficultystar,0,-32*iI+xadd+difadd,120-8,1,1,0,selecty,1)
selecty=c_gray if oControl.multiVSsetting=1 selecty=c_white
draw_set_color(selecty)
 var onoff="OFF" if global.FriendlyFire onoff="ON" draw_set_halign(fa_center)
draw_text(-640+160+p5.introtextadd,120+32,"FRIENDLY FIRE:"+string(onoff))
draw_set_color(c_white) draw_set_halign(fa_left)
}
}
}
///COMMAND TEXT
draw_command(2)
///

draw_set_halign(fa_center)
if characterSelReady=1
{charselLerp=lerp(charselLerp,-6,0.1)
draw_text(160+p5.introtextadd,44,"PRESS START TO PLAY")
}else charselLerp=lerp(charselLerp,0,0.1)

draw_set_font(global.timefont)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_alpha(1)
if characterSelReady=2
{
draw_set_color(c_black) draw_rectangle(-1,-1,321,241,false)
}

draw_set_color(c_white) draw_set_alpha(1)

}

///Hi-Score Screen - Draw_GUI

if room=rm_hiscore
{
yy = 1+hiScoreY;///For the left part's text
yy2 = 1+hiScoreY;///For the right one's text
yy3 = 1+hiScoreY;///For the character's face
///The sprite size I used for the character's face is 


///For Testing Hi Score - If you don't need this, you can remove this or disable it
///////////////
if global.HiScoreSee=1{
draw_sprite_tiled(bg_hscore,0,0,(26*hiScoreY))
draw_sprite_ext(bg_hscore3,0,160,((26*hiScoreY))-28+12,1,286,0,c_white,1)
draw_sprite(bg_hscore2,0,160,(26*hiScoreY)-28+12-4)
draw_sprite_ext(bg_hscore2,0,160,((26*hiScoreY))-28+286+12+4,1,-1,0,c_white,1)
}

if global.GlobalBeta=1
{

draw_text(8,8,string_hash_to_newline(global.P1Score))
draw_text(8,32,string_hash_to_newline("STAGE "+string(global.HiScoreStage)))
draw_text(8,64,string_hash_to_newline("NAME "+string(HiInput1)))
draw_sprite(spr_playerface,global.P1Char,8,96)

if keyboard_check_pressed(ord("R"))///To reset the hi-score screen
room_restart()
if keyboard_check_pressed(ord("1"))///To increase score.
global.P1Score+=1000
///This is to change the character's current face
if keyboard_check_pressed(ord("2"))
if global.P1Char=3 global.P1Char=0 else global.P1Char+=1
if keyboard_check_pressed(ord("3"))
if global.P1Char=0 global.P1Char=3 else global.P1Char-=1
if keyboard_check_pressed(ord("4"))
/////This one will randomize the name shown below
HiInput1=choose("ASG","DND","FAT","TOO","BRB","GTG","BIM","BO.","AAA","SIN","COS")
if keyboard_check_pressed(ord("5"))
global.HiScoreStage=choose(1,2,3,4,5,6,7,8)
if keyboard_check(vk_shift)////Hold Shift and 1 to see it update and 
and keyboard_check_pressed(ord("1"))////See how it affects the hi-score
hiscore_check()

///////////////////////////////////////////



///For Text
draw_text(8,8,string_hash_to_newline(global.P1Score))
draw_text(8,32,string_hash_to_newline("STAGE "+string(global.HiScoreStage)))
draw_text(8,64,string_hash_to_newline("NAME "+string(HiInput1)))
draw_sprite(spr_playerface,global.P1Char,8,96)
}

if global.HiScoreSee=0
{
if hiScoreYgo=1
if hiScoreY<2
hiScoreY+=0.025
else {
hiScoreYgo=2 alarm[5]=180////This alarm's so it can tell when to change the room
}
}


draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_font(global.scorefont)
draw_set_alpha(1)

draw_set_color(c_white)

///Left Part
draw_text(64, (yy++ * 26)-28, string_hash_to_newline(" 1ST " +string(global.HiScoreName1)+string(" ")));
draw_text(64, (yy++ * 26)-28, string_hash_to_newline(" 2ND " +string(global.HiScoreName2)+string(" ")));
draw_text(64, (yy++ * 26)-28, string_hash_to_newline(" 3RD " +string(global.HiScoreName3)+string(" ")));
draw_text(64, (yy++ * 26)-28, string_hash_to_newline(" 4TH " +string(global.HiScoreName4)+string(" ")));
draw_text(64, (yy++ * 26)-28, string_hash_to_newline(" 5TH " +string(global.HiScoreName5)+string(" ")));
draw_text(64, (yy++ * 26)-28, string_hash_to_newline(" 6TH " +string(global.HiScoreName6)+string(" ")));
draw_text(64, (yy++ * 26)-28, string_hash_to_newline(" 7TH " +string(global.HiScoreName7)+string(" ")));
draw_text(64, (yy++ * 26)-28, string_hash_to_newline(" 8TH " +string(global.HiScoreName8)+string(" ")));
draw_text(64, (yy++ * 26)-28, string_hash_to_newline(" 9TH " +string(global.HiScoreName9)+string(" ")));
draw_text(64, (yy++ * 26)-28, string_hash_to_newline("10TH " +string(global.HiScoreName10)+string(" ")));

///Right Part
draw_set_halign(fa_right)
draw_text(320-64, (yy2++ * 26)-28, string_hash_to_newline(string(global.HiScore1)+string("   ")+string(global.HiScoreStage1)));
draw_text(320-64, (yy2++ * 26)-28, string_hash_to_newline(string(global.HiScore2)+string("   ")+string(global.HiScoreStage2)));
draw_text(320-64, (yy2++ * 26)-28, string_hash_to_newline(string(global.HiScore3)+string("   ")+string(global.HiScoreStage3)));
draw_text(320-64, (yy2++ * 26)-28, string_hash_to_newline(string(global.HiScore4)+string("   ")+string(global.HiScoreStage4)));
draw_text(320-64, (yy2++ * 26)-28, string_hash_to_newline(string(global.HiScore5)+string("   ")+string(global.HiScoreStage5)));
draw_text(320-64, (yy2++ * 26)-28, string_hash_to_newline(string(global.HiScore6)+string("   ")+string(global.HiScoreStage6)));
draw_text(320-64, (yy2++ * 26)-28, string_hash_to_newline(string(global.HiScore7)+string("   ")+string(global.HiScoreStage7)));
draw_text(320-64, (yy2++ * 26)-28, string_hash_to_newline(string(global.HiScore8)+string("   ")+string(global.HiScoreStage8)));
draw_text(320-64, (yy2++ * 26)-28, string_hash_to_newline(string(global.HiScore9)+string("   ")+string(global.HiScoreStage9)));
draw_text(320-64, (yy2++ * 26)-28, string_hash_to_newline(string(global.HiScore10)+string("   ")+string(global.HiScoreStage10)));

///Sprites
draw_set_halign(fa_left)
pal_swap_set(global.HiScorePalS1,global.HiScorePal1,false);
draw_sprite(spr_playerface,global.HiScoreFace1, 320-96,(yy3++ * 26)-30) pal_swap_reset()
pal_swap_set(global.HiScorePalS2,global.HiScorePal2,false);
draw_sprite(spr_playerface,global.HiScoreFace2, 320-96,(yy3++ * 26)-30) pal_swap_reset()
pal_swap_set(global.HiScorePalS3,global.HiScorePal3,false);
draw_sprite(spr_playerface,global.HiScoreFace3, 320-96,(yy3++ * 26)-30) pal_swap_reset()
pal_swap_set(global.HiScorePalS4,global.HiScorePal4,false);
draw_sprite(spr_playerface,global.HiScoreFace4, 320-96,(yy3++ * 26)-30) pal_swap_reset()
pal_swap_set(global.HiScorePalS5,global.HiScorePal5,false);
draw_sprite(spr_playerface,global.HiScoreFace5, 320-96,(yy3++ * 26)-30) pal_swap_reset()
pal_swap_set(global.HiScorePalS6,global.HiScorePal6,false);
draw_sprite(spr_playerface,global.HiScoreFace6, 320-96,(yy3++ * 26)-30) pal_swap_reset()
pal_swap_set(global.HiScorePalS7,global.HiScorePal7,false);
draw_sprite(spr_playerface,global.HiScoreFace7, 320-96,(yy3++ * 26)-30) pal_swap_reset()
pal_swap_set(global.HiScorePalS8,global.HiScorePal8,false);
draw_sprite(spr_playerface,global.HiScoreFace8, 320-96,(yy3++ * 26)-30) pal_swap_reset()
pal_swap_set(global.HiScorePalS9,global.HiScorePal9,false);
draw_sprite(spr_playerface,global.HiScoreFace9, 320-96,(yy3++ * 26)-30) pal_swap_reset()
pal_swap_set(global.HiScorePalS10,global.HiScorePal10,false);
draw_sprite(spr_playerface,global.HiScoreFace10, 320-96,(yy3++ * 26)-30) pal_swap_reset()


if global.HiScoreSee=1
{
if key_up if hiScoreY>-10 hiScoreY-=0.1
if key_down if hiScoreY<10 hiScoreY+=0.1
hiScoreY=clamp(hiScoreY,-2.5,2.5)
draw_text(8,8+16+16,"▲▼MOVE")
draw_command(7) global.StageGoing=rm_menu
}
if pauseBuffer!=0 pauseBuffer-=1
if key_attack or key_start or key_A or key_B
or key_cancel or keyboard_check_pressed(vk_escape)
if pauseBuffer=0
{////Hiscore to Title Screen
if global.HiscoreSkip=0 {global.MenuSkip=0 global.IntroSkip=0}
else {global.MenuSkip=0 global.IntroSkip=1} //global.MenuSkip=1 global.IntroSkip=2}
if global.HiScoreSee=0
{global.MenuSkip=0 global.IntroSkip=1 room_goto(rm_titlescreen)}
else
if !key_attack and !key_start
{
room_goto(rm_menu)
}
}
}



///Animation Editor
if room=rm_animeditor
{




}

///Newspaper Scene
if  room=rm_newspaper
{
if betatest=1
if keyboard_check_pressed(vk_backspace)///Change cutscene text

cutsceneline=get_string("Change dialogue",cutsceneline)

newsBlack-=0.1

if newsShow=1
{
if newsBlack>0
{
draw_set_color(c_black) draw_set_alpha(1)
draw_rectangle(-4,-4,324,244,0)
}
else
{
if newsScale!=1 and newsTime<60
{newspaperspin+=22.5 if newspaperspin=360-22.5 newspaperspin=0 newsTime+=1
} else {newspaperspin=0 newsTime+=1 if newsScale<1 newsScale=1.1

if newsTime>360
if newsIndex!=3 {
newsBlack=1
newspaperspin=0
newsScale=0.01
newsTime=0
newsIndex+=1
} else 
{
if global.IsMovie=0
{
global.MenuSkip=0
global.IntroSkip=1
room_goto(rm_titlescreen)
}
else room_goto(rm_cutscenes)

}
}
}
newsScale+=angle_difference(1,newsScale)/12

newsX=lerp(newsX,0,0.1)
newsY=lerp(newsY,0,0.1)

draw_sprite_ext(spr_newspaper,newsIndex,(160)+newsX,(120-32)+newsY,newsScale,newsScale,newspaperspin,c_white,1)
}
if newsFade=0 {if newsFadeA>0 newsFadeA-=0.05 else newsFadeA=0}
if newsFade=1 {if newsFadeA<1 newsFadeA+=0.05 else newsFadeA=1}
if newsFade=2 {if newsFadeA<1 newsFadeA+=0.05 else newsFade=0}
if newsText=1
{fpsY=240-56
draw_set_alpha(1) draw_set_color(c_black)
draw_rectangle(-32,192,333,666,false)
draw_set_color(c_white)
draw_set_font(global.scorefont)
draw_set_halign(fa_center)
draw_text(160,210-16,cutscenename)
draw_set_halign(fa_left)
if instance_exists(oTextBox)
{
//draw_text(8,220-16,cutsceneline)
// Draw the text
with oTextBox
draw_dialogue()
}
}else fpsY=240-8

draw_sprite_ext(spr_newspaper,0,160,120,4,4,0,c_black,newsFadeA)

if key_attack or keyboard_check_pressed(vk_enter)
or key_jump or keyboard_check_pressed(ord("J")) or keyboard_check_pressed(ord("K"))
{////Hiscore to Title Screen
if global.IsMovie=0
{
global.MenuSkip=0 global.IntroSkip=1
room_goto(rm_titlescreen)
}
else
room_goto(rm_cutscenes)
}
}

///Credits - Unused Version
if room=rm_credits
{
if credMSC=0
{PlaySound(msc_gameover) credMSC=1}


if creditsGo=0
{if creditsAlpha>-0.1 creditsAlpha-=0.1} else creditsAlpha+=0.1

if creditsAlpha>1.5 room_goto(rm_titlescreen)
creditsCameo=0

creditsTime-=1
if creditsTime<0 creditsGo=1

if creditsTime<400
creditsCameoY=lerp(creditsCameoY,-240,0.1)

draw_set_alpha(1)
draw_set_color(c_white)
draw_set_font(global.scorefont)
d3d_transform_set_identity()
d3d_transform_set_translation(0,round(creditsCameoY),0)
draw_set_halign(fa_center)
if creditsCameoY>-120
{
draw_text(160,4,"THANK YOU FOR PLAYING")
draw_text(160,4+8,"THE EARLY ACCESS 2023 DEMO")
draw_text(160,8+16,"COMING SOON:MORE STAGES!MORE CUTSCENES!")
draw_text(160,8+24,"BOSSES!BUGFIXES!FEATURES!CHOICES!")
draw_text(160,8+32,"LEVEL UPDATES!MORE ANIMALS TO PET!")

draw_text(160,190-8,"CODING:MRPR1993")
draw_text(160,190,"GRAPHICS:MRPR1993,FROTHIER")
draw_text(160,200,"SOUNDS:MRPR1993,MASTERSAUCE")
draw_text(160,210,"MUSIC:JONORSI")
draw_text(160,220,"VOICES:MIMI HUNG,FLIRTYFAWN,CINDER")
draw_text(160,230,"SED2116,MIZZPEACHY,SUCCUBOO,SHYGUYWHY")

draw_sprite_ext(spr_viva_move,credFram,160+96-32,180-8,1,1,0,c_black,1)
draw_sprite_ext(spr_hina_move,credFram,160+48-32,180-8,1,1,0,c_black,1)
draw_sprite_ext(spr_bahati_move,credFram,160-32,180-8,1,1,0,c_black,1)
draw_sprite_ext(spr_sofia_move,credFram,160-48-4-32-8,180,1,1,0,c_black,1)
}
else
{
draw_text(160,4+240,"CAMEOS SHOWN IN GAME")

draw_sprite_ext(spr_cameo1a,0,-32+16+64,100+248,1,1,0,c_white,1)
draw_sprite_ext(spr_cameo2,1,-32+8+64*2,100+248,1,1,0,c_white,1)
draw_sprite_ext(spr_cameo3,2,-32-16+8+64*3,100+248,1,1,0,c_white,1)
draw_sprite_ext(spr_cameo4,3,-48+8+64*4,100+248,1,1,0,c_white,1)
draw_sprite_ext(spr_cameo5,4,-48+8+64*5,100+248,1,1,0,c_white,1)

draw_sprite_ext(spr_cameo6,0,-4-16-32+16+64,100+248+220-100,1,1,0,c_white,1)
draw_sprite_ext(spr_cameo7,1,-8-32+8+64*2,100+248+220-100,1,1,0,c_white,1)
draw_sprite_ext(spr_cameo8,2,24-32-16+8+64*3,100+248+220-100,1,1,0,c_white,1)
draw_sprite_ext(spr_cameo9,3,8-48+8+64*4,100+248+220-100,1,1,0,c_white,1)
draw_sprite_ext(spr_cameo10,4,4-48+8+64*5,100+248+220-100,1,1,0,c_white,1)

draw_text(-32+8+64*2,100+8+240-8,"-SHADES,SILVIE,DETOUR-\nSHADY CORNER")
draw_text(-48+8+64*4,100+8+240-32,"-SEDRIANA-\nSED2116")
draw_text(-48+8+64*5,100+8+240,"-CATAPPA-\nBLUETOMATO")

draw_text(6-16-32+16+64,100+8+240+220-100-9,"-JENNY-\nSLASHER03")
draw_text(-8-32+8+64*2,100+8+240-32+220-100,"-TURQUOISE-\nSHEEP")
draw_text(24-32-16+8+64*3,100+8+240+220-100-9,"-CAIT-\nPONNO")
draw_text(8-48+8+64*4,100+8+240-32+220-100,"-TAMARA-\nBRADFLAKES")
draw_text(4-48+8+64*5,100+8+240+220-100-9,"-ELOA-\nTHEFLAW")
}
d3d_transform_set_identity()
credFram+=0.25

draw_set_alpha(creditsAlpha)
draw_set_color(c_black) draw_rectangle(-32,-32,777,777,0)

}

///Feats
if room=rm_creditscene
credits_draw()

if room=rm_howtoplay
{
controller_setup()
if creditsGo=0
{if creditsAlpha>-0.1 creditsAlpha-=0.1} else creditsAlpha+=0.1

if creditsAlpha>1.5 room_goto(rm_stage1)

creditsTime-=1
if keyboard_check(vk_anykey)
or key_attack or key_jump or key_super or key_shield
creditsGo=1

	draw_set_alpha(1)
draw_set_color(c_white)
draw_set_font(global.scorefont)
draw_set_halign(fa_center)
draw_text(160,10,"HOW TO PLAY")
draw_text(160,10+8,"")
draw_text(160,10+16,"A GANG OF THIEVES STOLE THE DIVAS'")
draw_text(160,10+24,"SACRED TREASURES. IT'S UP TO THEM TO")
draw_text(160,10+32,"GET THEM BACK!")

draw_text(160,10+48,"ASDW - MOVE")
draw_text(160,10+56,"J - ATTACK   K - JUMP")
draw_text(160,10+64,"L - SPECIAL OR SIDE SPECIAL")
draw_text(160,10+72,"HOLD L - CHARGE ATTACK")
draw_text(160,10+80,"-WHEN BAR IS FULL-")
draw_text(160,10+90,"PRESS H FOR SUPER ATTACK")
draw_text(160,10+100,"TAP SIDE TO RUN")
draw_text(160,10+110,"TAP AND J - SIDE ATTACK")
draw_text(160,10+120,"DOWN UP J - UPPERCUT")
draw_text(160,10+130,"RUN AND J - RUN ATTACK")

draw_text(160,10+140,"THE GAME IS CONTROLLER COMPATIBLE!")
draw_text(160,10+150,"F11 TRIGGERS FPS - F12 RESIZES SCREEN")

draw_text(160,10+180-8-4,"THE DEMO ONLY HAS THREE STAGES")
draw_text(160,10+190-8-4,"HOWEVER I DIDN'T HAVE TIME TO")
draw_text(160,10+190-4,"FIX AND ADD SOME THINGS")
draw_text(160,10+200,"SO ENJOY WHAT I HAVE HERE")
}

///Feats
if room=rm_feats
feats_screen()

if betatest=1 if keyboard_check_pressed(ord("6"))
{
featc=instance_create_depth(0,0,0,oFeatDisplay) with featc
{featX=-128
}
}

if global.DisplayFeats=1
{
if instance_exists(oFeatDisplay) with oFeatDisplay
{draw_set_alpha(1) draw_set_font(global.scorefont)
draw_set_color(c_white) draw_rectangle(0+featX,240-24,128+featX,240,false)
draw_set_color(c_black) draw_rectangle(0+2+featX,240-24+2,128-2+featX,240-3,false)
draw_set_halign(fa_left)
draw_set_color(c_white) draw_text(6+featX,240-24+4,"FEAT COMPLETE:")
draw_set_color(c_white) draw_text(6+featX,240-24+4+8,name)
}}

///This will be used to play the cutscenes
if room=rm_cutscene1 or room=rm_opening or (room=rm_newspaper and global.IsMovie=1)
or isCutscene=1
{
if keyboard_check_pressed(vk_f5)
game_save("SaveState")
if keyboard_check_pressed(vk_f7)
game_load("SaveState")
	
__view_set( e__VW.XView, 0, SceneX )
SceneX+=SceneSpeedX
__view_set( e__VW.YView, 0, SceneY )
SceneY+=SceneSpeedY

if global.IsMovie=1 {global.StageName=rm_cutscenes CutsceneStage=rm_cutscenes}

if creditsGo=0
{if creditsAlpha>-0.1 creditsAlpha-=0.1} else creditsAlpha+=0.1

creditsTime-=1
controller_setup()
/////Skip Cutscene if cutsceneMode=0
if key_charge or key_jump_hold or key_shield or keyboard_check(vk_enter)
{


if cutscenedecision=0
{
if canSkipCutscene=2 or canSkipCutscene=1
{
draw_set_font(global.scorefont)
draw_set_halign(fa_center) draw_set_color(c_white)
draw_text_transformed(160,8,"SKIPPING",1.5,1.5,0)
draw_set_color(c_black)
draw_rectangle(160-80,24,160+80,32,false)
draw_set_color(c_white)
draw_rectangle(160-80+1,24+1,-1+160-80+160*skipScene,32-1,false)
} else skipScene=0
draw_set_halign(fa_left)

if skipScene<1 skipScene+=global.CutsceneSkipSpd
else
{
if canSkipCutscene=2 stageEndFX=1
if canSkipCutscene=1 {global.CutsceneSkip=1 room_restart()}
}
}
} else skipScene=0


//draw_sprite(CutsceneImage,CutsceneIndex,CutsceneX,CutsceneY)

CutsceneX+=CutsceneHSpeed
CutsceneY+=CutsceneVSpeed


draw_set_alpha(1) draw_set_color(c_black)
if newsBox=1
{draw_rectangle(-32,192,333,666,false)}
draw_set_color(c_white)
draw_set_font(global.scorefont)
draw_set_halign(fa_center)

//draw_text(160,10+48,"ASDW - MOVE")
//draw_text(160,10+56,"J - ATTACK   K - JUMP")
//draw_text(160,10+64,"L - SPECIAL OR SIDE SPECIAL")
//draw_text(160,10+72,"HOLD L - CHARGE ATTACK")
//draw_text(160,10+80,"-WHEN BAR IS FULL-")
//draw_text(160,10+90,"PRESS H FOR SUPER ATTACK")
//draw_text(160,10+100,"TAP SIDE TO RUN")
//draw_text(160,10+110,"TAP AND J - SIDE ATTACK")
//draw_text(160,10+120,"DOWN UP J - UPPERCUT")
//draw_text(160,10+130,"RUN AND J - RUN ATTACK")

//draw_text(160,10+200,"THE GAME IS CONTROLLER COMPATIBLE!")
if newsText=1
{fpsY=240-56
draw_text(160,210-16,cutscenename)
draw_set_halign(fa_left)
//draw_text(8,220-16,cutsceneline)
with oTextBox
draw_dialogue()
}else fpsY=240-8

//draw_text(160,10+230,"WITH TWO MORE FOR THIS DEMO")

///Decision Text
if cutscenedecision!=0
{
controller_setup()
	
		
	
	if cutscenedecision=1
	{if cutsceneDecbuffer!=0 cutsceneDecbuffer-=1 cutsceneDecbufferBG=lerp(cutsceneDecbufferBG,0.8,0.1) 
	CDtextTy=lerp(CDtextTy,0,0.1)
	CDtextAx=lerp(CDtextAx,0,0.1)
	CDtextBx=lerp(CDtextBx,0,0.1)
	CDtextCx=lerp(CDtextCx,0,0.1)
		
if key_up_pressed {PlaySound(snd_select) if cutsceneDecmode=0 cutsceneDecmode=2 else cutsceneDecmode-=1}
if -key_down_pressed {PlaySound(snd_select) if cutsceneDecmode=2 cutsceneDecmode=0 else cutsceneDecmode+=1}

if key_attack or key_jump or key_super or key_shield or keyboard_check_pressed(vk_enter)
{cutscenedecision=2 PlaySound(snd_picked) cutsceneDecbuffer=120
	CDtextTy=0
	CDtextAx=0
	CDtextBx=0
	CDtextCx=0
	}
	
}

	
	if cutscenedecision=2 ///Decided
	{if cutsceneDecbuffer!=0 cutsceneDecbuffer-=1
	else cutscenedecision=0
	
	
	
	CDtextTy=lerp(CDtextTy,-400,0.1)
	if cutsceneDecmode=0 {CDtextAy=lerp(CDtextAy,-10,0.1) CDtextAs=lerp(CDtextAs,1.5,0.1)} else CDtextAx=lerp(CDtextAx,240,0.1)
	if cutsceneDecmode=1 {CDtextBy=lerp(CDtextBy,-10,0.1) CDtextBs=lerp(CDtextBs,1.5,0.1)} else CDtextBx=lerp(CDtextBx,-240,0.1)
	if cutsceneDecmode=2 {CDtextCy=lerp(CDtextCy,-10,0.1) CDtextCs=lerp(CDtextCs,1.5,0.1)}else CDtextCx=lerp(CDtextCx,240,0.1)
	
	if cutsceneDecbuffer<60
	{
	if cutsceneDecmode=0 {CDtextAy=lerp(CDtextAy,320,0.1) CDtextAs=lerp(CDtextAs,0,0.1)}
	if cutsceneDecmode=1 {CDtextBy=lerp(CDtextBy,320,0.1) CDtextBs=lerp(CDtextBs,0,0.1)}
	if cutsceneDecmode=2 {CDtextCy=lerp(CDtextCy,320,0.1) CDtextCs=lerp(CDtextCs,0,0.1)}
	}
	cutsceneDecbufferBG=lerp(cutsceneDecbufferBG,0,0.05) 
	}

if CDtextvis=1
{
draw_set_color(c_black) draw_set_alpha(cutsceneDecbufferBG)	
draw_rectangle(-66,-66,666,666,false)

draw_set_halign(fa_center)draw_set_color(c_white) draw_set_alpha(1)
draw_text_transformed(160,round(60+CDtextTy),CDtextT,1.5,1.5,0)
if cutscenedecision=2 {if CDtextflash=0 CDtextflash=2 else CDtextflash-=0.25}
draw_set_color(c_gray)
if cutsceneDecmode=0 if CDtextflash<=1 draw_set_color(c_white)
draw_text_transformed(round(160+CDtextAx),round(90+CDtextAy),CDtextA,CDtextAs,CDtextAs,0) draw_set_color(c_gray)
if cutsceneDecmode=1 if CDtextflash<=1 draw_set_color(c_white)
draw_text_transformed(round(160+CDtextBx),round(120+CDtextBy),CDtextB,CDtextBs,CDtextBs,0) draw_set_color(c_gray)
if cutsceneDecmode=2 if CDtextflash<=1 draw_set_color(c_white)
draw_text_transformed(round(160+CDtextCx),round(150+CDtextCy),CDtextC,CDtextCs,CDtextCs,0)
}
} 

draw_set_halign(fa_left)
///Screen FX for intro
if stageIntro!=0 stageIntro-=0.05 else stageIntro=0
draw_set_color(c_black) draw_set_alpha(1)
if stageIntro!=0
draw_rectangle(-2,-2,320*stageIntro,999,false)
draw_set_color(c_white) draw_set_alpha(1)

///Screen FX for exit
if stageEndFX=1
{
stageEnd+=0.05 if stageEnd>1.5 room_goto(CutsceneStage) ///Cutscene End
draw_set_color(c_black) draw_set_alpha(1)
if stageEnd!=0
draw_rectangle(320-320*stageEnd,-2,320+2,999,false)
draw_set_color(c_white) draw_set_alpha(1)
}
}

///Bottom Screen
if keyboard_check_pressed(vk_f11) if global.fpsMode=1 global.fpsMode=0 else global.fpsMode=1

draw_set_font(global.scorefont)

draw_set_font(-1)
	draw_set_halign(fa_top)
if room=rm_map
{


draw_sprite(spr_stageselecttext,0,160,24)


draw_set_font(global.scorefont) draw_set_color(c_white)
draw_set_halign(fa_center)
if mapSName!="LOCKED"
draw_text(160,44,string(mapSName)+"\nHIGH SCORE: "+string(mapHighScore))
else
draw_text(160,44,string(mapSName))

draw_set_halign(fa_left)
if mapSelected=1
draw_sprite_ext(spr_whitecol,0,-8,-8,99999,9999,0,c_black,1)

if quickMapLerp!=0
draw_sprite_ext(spr_whitecol,0,-8,-8,99999,9999,0,c_black,1)

draw_command(1)
}

menu_draw()
charinfo_draw()
animeditor_gui()
settings_draw()
draw_shop()
soundtest_draw()
gallery_draw()
draw_brickbreakgame()
draw_minigames()
draw_cutscenes()


if global.fpsMode=1
{draw_set_font(global.scorefont) draw_set_halign(fa_right)
draw_set_color(c_white)
draw_text(fpsX,fpsY-8,string_hash_to_newline("FPSR:"+string(fps_real)))
draw_text(fpsX,fpsY,string_hash_to_newline("FPS:"+string(fps)))
draw_set_halign(fa_left)
}

}
else ///PauseMode
{
draw_set_color(c_white) draw_set_alpha(1)
draw_sprite(spr_photoplaceholder,0,0,0)
draw_set_color(c_black) draw_set_alpha(0.5)
}
////
crt_fxset()



draw_set_halign(fa_left)
draw_set_valign(fa_top)

if pauseBuffer!=0 pauseBuffer-=1
if key_start=1 or keyboard_check_pressed(vk_escape)
if pauseBuffer=0
if stagePause=1
{pauseBuffer=10 game_pause()}