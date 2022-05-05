/// @description Game
tvfx_draw()

display_set_gui_size(320,240)
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
	
	if oControl.TVfx!=0
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

	if oControl.TVfx!=0
	{
surface_resize(new_surf,320,240)

surface_set_target(new_surf);
draw_clear_alpha(c_black, 0.0);
//shader_set(shd_grayscale)
draw_surface(application_surface, 0, 0);
//shader_reset()
	}
////////////////
	
	
if isPaused=0
{

if room!=rm_titlescreen and room!=rm_characterselect and room!=rm_hiscore
and room!=rm_animeditor and room!=rm_newspaper and room!=rm_credits and room!=rm_howtoplay and room!=rm_cutscene1
and room!=rm_map and room!=rm_chardata and room!=rm_feats and room!=rm_shop
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
draw_set_font(global.timefont)///Timer
if continueScreen=0
{
if time>=10
draw_text(160-16,0,string_hash_to_newline(time))
else
{
draw_text(160,0,string_hash_to_newline(time))
draw_text(160-16,0,string_hash_to_newline(0))
}}
draw_set_font(-1)
draw_set_halign(fa_left);
 draw_set_valign(fa_top);
 draw_set_color(c_white)
 
 
 //Player Icons
 
draw_sprite(spr_hud,0,0,0)
draw_sprite(spr_hud,0,72,0)
draw_sprite(spr_hud,0,320-144,0)
draw_sprite(spr_hud,0,320-72,0)

//draw_sprite(spr_hud,0,80,0) playerNo=1
with oPlayer if oControl.continueScreen=0
{
draw_playerhp()
}
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



///GO!
if goActive=1
draw_sprite(spr_go,goFrame,320-50,80)

if goFrame!=0 goFrame-=0.25 else {goFrame=6 if goActive=1 PlaySound(snd_go)}

if betatest=1 and TextBeta=1
{
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

if continueScreen=2 ///Character Select
{
if continueFlash<0 continueFlash=2 else continueFlash-=0.5

if characterSelect=0 pal_swap_set(spr_playerpal,global.p1Pal,false)
draw_sprite_ext(spr_playerface,0,0,0,1,1,0,c_white,1) pal_swap_reset()
if characterSelect=1 pal_swap_set(spr_playerpal,global.p1Pal,false)
draw_sprite_ext(spr_playerface,1,23,0,1,1,0,c_white,1) pal_swap_reset()
if characterSelect=2 pal_swap_set(spr_playerpal,global.p1Pal,false)
draw_sprite_ext(spr_playerface,2,46,0,1,1,0,c_white,1) pal_swap_reset()
if characterSelect=3 pal_swap_set(spr_playerpal,global.p1Pal,false)
draw_sprite_ext(spr_playerface,3,69,0,1,1,0,c_white,1) pal_swap_reset()


draw_set_color(c_white)

draw_set_font(global.scorefont)
draw_text(23*characterSelect+2,2,string_hash_to_newline(characterTimer))

if continueFlash<1
draw_sprite_ext(spr_playerface,4,23*characterSelect,0,1,1,0,c_white,1)

if oPlayer.key_up_pressed if global.p1Pal=0 global.p1Pal=15 else global.p1Pal-=1
if -oPlayer.key_down_pressed if global.p1Pal=15 global.p1Pal=0 else global.p1Pal+=1

if -oPlayer.key_left_pressed if characterSelect=0 characterSelect=3
else characterSelect-=1
if oPlayer.key_right_pressed if characterSelect=3 characterSelect=0
else characterSelect+=1
}

if continueScreen=3 ///Set Hi-Score Input
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
hiscore_check()
isGameOver=0 
keyToGameOver=1
alarm[2]=240
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
if mapYscale!=1 mapYscale+=0.025
mapX=lerp(mapX,160,0.08)

mapTime+=1

if mapTime<140
mapY=lerp(mapY,80,0.08)
else mapY=lerp(mapY,-320,0.05)

if mapTime>200 showMap=0

d3d_transform_set_identity()
d3d_transform_add_scaling(mapXscale,mapYscale,1)
d3d_transform_add_translation(round(mapX),round(mapY),0)

d3d_set_culling(false)

draw_sprite_ext(spr_gamemap,0,0,0,1,1,0,c_black,1)

d3d_set_culling(true)

draw_sprite_ext(spr_gamemap,0,0,0,1,1,0,c_white,1)


d3d_transform_set_identity()
d3d_set_culling(false)
}


///Dialogue
draw_set_halign(fa_center); draw_set_valign(fa_top);
draw_set_font(global.scorefont) draw_set_alpha(1)
draw_set_color(c_white)///Enemy Name Here
draw_text(160,240-24,string_hash_to_newline(TextDialogue)) draw_set_font(-1)
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

if stageClear=1
{
stageClearIndex+=0.5

if stageClearY<120 stageClearY+=16

draw_sprite_ext(spr_stageclear,stageClearIndex,160,stageClearY,1,1,0,c_white,1)///Game Over Text
draw_set_alpha(1) draw_set_color(c_white)
if stageScore=1
{alarm[0]=0 
draw_set_font(global.scorefont)
draw_set_halign(fa_center)
draw_set_halign(fa_right)
draw_text(160-8,160,string_hash_to_newline(string(stageBoss)))
draw_text(160-8,160+16,string_hash_to_newline("VITALITY"))
draw_text(160-8,160+32,string_hash_to_newline("TIME"))

draw_set_halign(fa_left)
draw_text(160+8,160,string_hash_to_newline(bossScore))
draw_text(160+8,160+16,string_hash_to_newline(round(oPlayer.hp*20000)))
draw_text(160+8,160+32,string_hash_to_newline(round(time*200)))

if scoreClearSet=0
{scoreClearSet=1 alarm[7]=120
alarm[8]=240
oPlayer.PlayerScore+=round(oPlayer.hp*20000)+round(time*200)+bossScore
}

draw_set_halign(fa_left)
}

}

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

}

///Title Screen
if room=rm_titlescreen
{
draw_set_color(c_white) draw_set_alpha(1)

shader_set(shd_white_sprite)
draw_sprite_ext(spr_gametitle,0,160,round(titlescreenY),titlescreenXscale,1,0,c_white,1)
shader_reset()

draw_sprite_ext(spr_gametitle,0,160,round(titlescreenY),titlescreenXscale,1,0,c_black,titleObjectWhite)



if iconShow>90
{
if iconShow<210-70
if iconSel=spr_scicon if global.IntroSkip=0
{global.IntroSkip=1 room=rm_newspaper} ///Skip To Newspaper Scene


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
draw_sprite_ext(spr_gametitle,titleImg,160,round(titlescreenY),1,1,0,c_white,1)
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
	if !instance_exists(oSettings)
	{
if key_up_pressed {PlaySound(snd_select) if menuSelect=0 menuSelect=4 else menuSelect-=1}
if -key_down_pressed {PlaySound(snd_select) if menuSelect=4 menuSelect=0 else menuSelect+=1}
	}
draw_set_halign(fa_left)
if selectStar=0 selectStar=2 else selectStar-=0.2

if menuSelect=0 {StarY=184-16 StarSpace=104}
if menuSelect=1 {StarY=184-16+8 StarSpace=104}
if menuSelect=2 {StarY=184-16+16 StarSpace=80}
if menuSelect=3 {StarY=184-16+24 StarSpace=120}
if menuSelect=4 {StarY=184-16+32 StarSpace=112}
///✰✰✰ //56
draw_set_color(c_black) draw_set_alpha(0.75)
draw_rectangle(80,168-4,240,208-4,false)

draw_sprite(spr_scorefont,43,-8+4+StarSpace+selectStar,StarY-4)
draw_sprite(spr_scorefont,43,-8+4+320-StarSpace-selectStar,StarY-4)


draw_set_color(c_white) draw_set_alpha(1)
draw_set_halign(fa_center) //▲►▼◄

draw_text(160,184-16-4,string_hash_to_newline("ARCADE MODE"))
draw_text(160,184-8-4,string_hash_to_newline("SELECT STAGE"))
draw_text(160,184-4,string_hash_to_newline("CHARACTER PROFILE"))
draw_text(160,184+8-4,string_hash_to_newline("SETTINGS"))
draw_text(160,184+16-4,string_hash_to_newline("HIGH SCORE"))

}

draw_text(160,184+24,string_hash_to_newline("©2022 MRPR1993"))
if global.Continues=-1
draw_text(160,184+40,string_hash_to_newline("CREDIT ∞"))
else
draw_text(160,184+40,string_hash_to_newline("CREDIT "+string(global.Continues)))
draw_set_halign(fa_left)

draw_set_valign(fa_bottom)
draw_text(0,320,string_hash_to_newline("V.0.1"))
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
if key_attack or keyboard_check_pressed(vk_enter)
if introSkip=0
{introSkip=1 noWhite=1
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
{pressStart=1 PlaySound(snd_picked)}
else
if !instance_exists(oSettings)
	{PlaySound(snd_picked) selectScreen=1 alarm[4]=10 screenBlack=1}
	}

if screenBlack=1
{
draw_set_color(c_black) draw_set_alpha(1)
draw_rectangle(-8,-8,2222,2222,0)
}

}



///Character Select
if room=rm_characterselect
{
draw_set_color(c_white) draw_set_alpha(1)
draw_sprite(spr_characterselecttext,0,160,32)

if p1Select=0
{
if -key_left_pressed{PlaySound(snd_select)
if global.P1Char=0 global.P1Char=3 else
global.P1Char-=1}

if key_right_pressed{PlaySound(snd_select)
if global.P1Char=3 global.P1Char=0 else
global.P1Char+=1}
}

if key_up_pressed if global.p1Pal=0 global.p1Pal=15 else global.p1Pal-=1 
if -key_down_pressed if global.p1Pal=15 global.p1Pal=0 else global.p1Pal+=1 

//current_pal=0;
//my_pal_sprite=spr_playerpal

{
if global.P1Char=0 pal_swap_set(spr_playerpal,global.p1Pal,false);
draw_sprite(spr_csviva,0,0,53) pal_swap_reset()
if global.P1Char=1 pal_swap_set(spr_playerpal,global.p1Pal,false);
draw_sprite(spr_cshina,0,80,53) pal_swap_reset()
if global.P1Char=2 pal_swap_set(spr_playerpal,global.p1Pal,false);
draw_sprite(spr_csbahati,0,160,53) pal_swap_reset()
if global.P1Char=3 pal_swap_set(spr_playerpal,global.p1Pal,false);
draw_sprite(spr_cssofia,0,240,53) pal_swap_reset()
}
if p1Select=1
{
pal_swap_set(spr_playerpal,global.p1Pal,false);
if p1selFrame<3 if p1selFrame<1 p1selFrame+=0.05 else p1selFrame+=0.2
if global.P1Char=0
draw_sprite(spr_csviva,1+p1selFrame,0,53)
if global.P1Char=1
draw_sprite(spr_cshina,1+p1selFrame,80,53)
if global.P1Char=2
draw_sprite(spr_csbahati,1+p1selFrame,160,53)
if global.P1Char=3
draw_sprite(spr_cssofia,1+p1selFrame,240,53)
pal_swap_reset()
}

if charSelectFlash!=0
{
shader_set(shd_white_sprite)
if global.P1Char=0
draw_sprite(spr_characterselect,1,0,53)
if global.P1Char=1
draw_sprite(spr_characterselect,1,80,53)
if global.P1Char=2
draw_sprite(spr_characterselect,1,160,53)
if global.P1Char=3
draw_sprite(spr_characterselect,1,240,53)
shader_reset()
}

if p1Select=1 {if p1Flicker<0 p1Flicker=2 else p1Flicker-=0.5}
{

if alarm[4]=90+80
{
if global.P1Char=0 PlaySound(snd_viva1)
if global.P1Char=1 PlaySound(snd_hina1)
if global.P1Char=2 PlaySound(snd_bahati1)
if global.P1Char=3 PlaySound(snd_sofia1)
}


if global.P1Char=0 {
if p1Flicker<1
draw_sprite(spr_characterselect,0,0,53)
//draw_sprite_ext(spr_characterselect,5,0,53,1,1,0,0,0.5)
draw_sprite_ext(spr_characterselect,1,80,53,1,1,0,0,0.5)
draw_sprite_ext(spr_characterselect,1,160,53,1,1,0,0,0.5)
draw_sprite_ext(spr_characterselect,1,240,53,1,1,0,0,0.5)
}
if global.P1Char=1 {
if p1Flicker<1
draw_sprite(spr_characterselect,0,80,53)
draw_sprite_ext(spr_characterselect,1,0,53,1,1,0,0,0.5)
//draw_sprite_ext(spr_characterselect,5,80,53,1,1,0,0,0.5)
draw_sprite_ext(spr_characterselect,1,160,53,1,1,0,0,0.5)
draw_sprite_ext(spr_characterselect,1,240,53,1,1,0,0,0.5)
}
if global.P1Char=2 {
if p1Flicker<1
draw_sprite(spr_characterselect,0,160,53)
draw_sprite_ext(spr_characterselect,1,0,53,1,1,0,0,0.5)
draw_sprite_ext(spr_characterselect,1,80,53,1,1,0,0,0.5)
//draw_sprite_ext(spr_characterselect,5,160,53,1,1,0,0,0.5)
draw_sprite_ext(spr_characterselect,1,240,53,1,1,0,0,0.5)
}
if global.P1Char=3 {
if p1Flicker<1
draw_sprite(spr_characterselect,0,240,53)
draw_sprite_ext(spr_characterselect,1,0,53,1,1,0,0,0.5)
draw_sprite_ext(spr_characterselect,1,80,53,1,1,0,0,0.5)
draw_sprite_ext(spr_characterselect,1,160,53,1,1,0,0,0.5)
///draw_sprite_ext(spr_characterselect,5,240,53,1,1,0,0,0.5)
}
}

if charSelectFlash!=0 charSelectFlash-=0.5

draw_sprite(spr_characterstats,0,0,189)
draw_sprite(spr_characterstats,0,80,189)
draw_sprite(spr_characterstats,0,160,189)
draw_sprite(spr_characterstats,0,240,189)

draw_set_font(global.scorefont)
draw_set_valign(fa_top)
///P1
draw_set_halign(fa_center)
draw_text(40,190,string_hash_to_newline("POWER"))
draw_text(40,190+8,string_hash_to_newline("✰✰✰"))
draw_text(40,190+16,string_hash_to_newline("SPEED"))
draw_text(40,190+24,string_hash_to_newline("✰✰✰"))
draw_text(40,190+32,string_hash_to_newline("REACH"))
draw_text(40,190+40,string_hash_to_newline("✰✰✰"))
///P2
draw_set_halign(fa_center)
draw_text(40+80,190,string_hash_to_newline("POWER"))
draw_text(40+80,190+8,string_hash_to_newline("✰✰✰"))
draw_text(40+80,190+16,string_hash_to_newline("SPEED"))
draw_text(40+80,190+24,string_hash_to_newline("✰✰"))
draw_text(40+80,190+32,string_hash_to_newline("REACH"))
draw_text(40+80,190+40,string_hash_to_newline("✰✰✰✰"))
draw_set_halign(fa_left)
///P3
draw_set_halign(fa_center)
draw_text(40+160,190,string_hash_to_newline("POWER"))
draw_text(40+160,190+8,string_hash_to_newline("✰✰✰✰✰"))
draw_text(40+160,190+16,string_hash_to_newline("SPEED"))
draw_text(40+160,190+24,string_hash_to_newline("✰"))
draw_text(40+160,190+32,string_hash_to_newline("REACH"))
draw_text(40+160,190+40,string_hash_to_newline("✰✰✰"))
///P4
draw_set_halign(fa_center)
draw_text(40+240,190,string_hash_to_newline("POWER"))
draw_text(40+240,190+8,string_hash_to_newline("✰"))
draw_text(40+240,190+16,string_hash_to_newline("SPEED"))
draw_text(40+240,190+24,string_hash_to_newline("✰✰✰✰✰"))
draw_text(40+240,190+32,string_hash_to_newline("REACH"))
draw_text(40+240,190+40,string_hash_to_newline("✰✰✰"))

draw_set_font(global.timefont)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text(160,32,string_hash_to_newline(charSelCountdown))

if charSelCountdown!=0 and p1Select=0
{
charSelFlash-=1
if charSelFlash=0 {charSelFlash=60 charSelCountdown-=1}
if charSelCountdown=0 charSelForceSelect=1
}

if key_attack or keyboard_check_pressed(vk_enter) or charSelForceSelect=1
{
if p1Select=0///Select Character
{PlaySound(snd_picked) charSelectFlash=1
p1Select=1
alarm[4]=200
}}

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

if hiScoreYgo=1
if hiScoreY<2
hiScoreY+=0.025
else {
hiScoreYgo=2 alarm[5]=180////This alarm's so it can tell when to change the room
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
draw_sprite(spr_playerface,global.HiScoreFace1, 320-96,(yy3++ * 26)-30)
draw_sprite(spr_playerface,global.HiScoreFace2, 320-96,(yy3++ * 26)-30)
draw_sprite(spr_playerface,global.HiScoreFace3, 320-96,(yy3++ * 26)-30)
draw_sprite(spr_playerface,global.HiScoreFace4, 320-96,(yy3++ * 26)-30)
draw_sprite(spr_playerface,global.HiScoreFace5, 320-96,(yy3++ * 26)-30)
draw_sprite(spr_playerface,global.HiScoreFace6, 320-96,(yy3++ * 26)-30)
draw_sprite(spr_playerface,global.HiScoreFace7, 320-96,(yy3++ * 26)-30)
draw_sprite(spr_playerface,global.HiScoreFace8, 320-96,(yy3++ * 26)-30)
draw_sprite(spr_playerface,global.HiScoreFace9, 320-96,(yy3++ * 26)-30)
draw_sprite(spr_playerface,global.HiScoreFace10, 320-96,(yy3++ * 26)-30)


if key_attack or keyboard_check_pressed(vk_enter)
or key_jump or keyboard_check_pressed(ord("J")) or keyboard_check_pressed(ord("K"))
{////Hiscore to Title Screen
global.MenuSkip=0 global.IntroSkip=0
room_goto(rm_titlescreen)
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
{global.MenuSkip=0
global.IntroSkip=1
room_goto(rm_titlescreen)
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
{
draw_set_alpha(1) draw_set_color(c_black)
draw_rectangle(-32,192,333,666,false)
draw_set_color(c_white)
draw_set_font(global.scorefont)
draw_set_halign(fa_center)
draw_text(160,210-16,cutscenename)
draw_set_halign(fa_left)
draw_text(8,220-16,cutsceneline)
}

draw_sprite_ext(spr_newspaper,0,160,120,4,4,0,c_black,newsFadeA)

if key_attack or keyboard_check_pressed(vk_enter)
or key_jump or keyboard_check_pressed(ord("J")) or keyboard_check_pressed(ord("K"))
{////Hiscore to Title Screen
global.MenuSkip=0 global.IntroSkip=1
room_goto(rm_titlescreen)
}
}

///Credits
if room=rm_credits
{
if credMSC=0
{PlaySound(msc_gameover) credMSC=1}


if creditsGo=0
{if creditsAlpha>-0.1 creditsAlpha-=0.1} else creditsAlpha+=0.1

if creditsAlpha>1.5 room=rm_titlescreen


creditsTime-=1
if creditsTime<0 creditsGo=1

	draw_set_alpha(1)
draw_set_color(c_white)
draw_set_font(global.scorefont)
draw_set_halign(fa_center)
draw_text(160,4,"THANK YOU FOR PLAYING")
draw_text(160,4+8,"THE PROTOTYPE")
draw_text(160,8+16,"STAY TUNED FOR MORE ")
draw_text(160,8+24,"UPDATES AND BUG FIXES")
draw_text(160,8+32,"AND NEW CONTENT")

draw_text(160,190,"CODING BY MRPR1993, GRAPHICS BY MRPR1993")
draw_text(160,200,"SOUNDS BY MRPR1993 AND MASTERSAUCE")
draw_text(160,210,"MUSIC BY JONORSI")
draw_text(160,220,"VOICES-MIMI HUNG,FLIRTYFAWN,CINDER")
draw_text(160,230,"SED,MIZZPEACHY,SUCCUBOO")
draw_sprite_ext(spr_viva_move,credFram,160+96-32,180,1,1,0,c_black,1)
draw_sprite_ext(spr_hina_move,credFram,160+48-32,180,1,1,0,c_black,1)
draw_sprite_ext(spr_bahati_move,credFram,160-32,180,1,1,0,c_black,1)
draw_sprite_ext(spr_sofia_move,credFram,160-48-4-32,180,1,1,0,c_black,1)
credFram+=0.25

draw_set_alpha(creditsAlpha)
draw_set_color(c_black) draw_rectangle(-32,-32,777,777,0)

}

if room=rm_howtoplay
{
controller_setup()
if creditsGo=0
{if creditsAlpha>-0.1 creditsAlpha-=0.1} else creditsAlpha+=0.1

if creditsAlpha>1.5 room=rm_stage1

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
if room=rm_cutscene1
{

if creditsGo=0
{if creditsAlpha>-0.1 creditsAlpha-=0.1} else creditsAlpha+=0.1

creditsTime-=1
if keyboard_check(ord("J")) stageEndFX=1

//draw_sprite(CutsceneImage,CutsceneIndex,CutsceneX,CutsceneY)

CutsceneX+=CutsceneHSpeed
CutsceneY+=CutsceneVSpeed

draw_set_alpha(1) draw_set_color(c_black)

draw_rectangle(-32,192,333,666,false)

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

draw_text(160,210-16,cutscenename)
draw_set_halign(fa_left)
draw_text(8,220-16,cutsceneline)
//draw_text(160,10+230,"WITH TWO MORE FOR THIS DEMO")

///Screen FX for intro
if stageIntro!=0 stageIntro-=0.05 else stageIntro=0
draw_set_color(c_black) draw_set_alpha(1)
if stageIntro!=0
draw_rectangle(-2,-2,320*stageIntro,999,false)
draw_set_color(c_white) draw_set_alpha(1)

///Screen FX for exit
if stageEndFX=1
{
stageEnd+=0.05 if stageEnd>1.5 room=CutsceneStage ///Cutscene End
draw_set_color(c_black) draw_set_alpha(1)
if stageEnd!=0
draw_rectangle(320-320*stageEnd,-2,320+2,999,false)
draw_set_color(c_white) draw_set_alpha(1)
}

}

///Bottom Screen
if keyboard_check_pressed(vk_f11) if global.fpsMode=1 global.fpsMode=0 else global.fpsMode=1

draw_set_font(global.scorefont)
if global.fpsMode=1
{draw_set_halign(fa_right)

draw_text(320,240-8,string_hash_to_newline("FPS: "+string(fps_real)))
draw_text(320,240-16,string_hash_to_newline("FPSR : "+string(fps)))
draw_set_halign(fa_left)
}
draw_set_font(-1)
	draw_set_halign(fa_top)
if room=rm_map
{
draw_sprite(spr_hud,0,0,0)
draw_sprite(spr_hud,0,72,0)
draw_sprite(spr_hud,0,320-144,0)
draw_sprite(spr_hud,0,320-72,0)
draw_set_color(c_white)
draw_sprite_part_ext(spr_hpbar,global.P1Char,0,0,32*1,10,24,21,1,1,c_white,1)
draw_sprite(spr_playerface,global.P1Char,2,8)
draw_set_font(global.scorefont)
if global.P1Char=0
mapPlayerName="VIVA"
if global.P1Char=1
mapPlayerName="HINA"
if global.P1Char=2
mapPlayerName="BAHATI"
if global.P1Char=3
mapPlayerName="SOFIA"
if string_length(mapPlayerName)<=4
draw_text(25,12,string_hash_to_newline(mapPlayerName))
else
draw_text_transformed(25,12,string_hash_to_newline(mapPlayerName),0.75,1,0)
draw_set_font(-1)
//Super Bar
draw_set_font(global.scorefont)
draw_set_halign(fa_right)
draw_text(70,12,string_hash_to_newline(global.P1Life)) //draw_text(39,0,7400)
draw_text(70,2,string_hash_to_newline(global.P1Score)) //draw_text(39,0,7400)

draw_set_halign(fa_center)
draw_text(160,48,mapSName)

draw_set_halign(fa_left)
}

charinfo_draw()
animeditor_gui()
settings_draw()
draw_shop()

}
else ///PauseMode
{
draw_set_color(c_white) draw_set_alpha(1)
draw_sprite(spr_photoplaceholder,0,0,0)
draw_set_color(c_black) draw_set_alpha(0.5)
}
////
	if oControl.TVfx=1 { var_distort = true; var_distortion_ammount = 0.12; var_border = true;}
	if oControl.TVfx=2 { var_distort = false; var_distortion_ammount = 0.12; var_border = true;}
	if oControl.TVfx=3 { var_distort = true; var_distortion_ammount = 0.12; var_border = false;}
	if oControl.TVfx=4 { var_distort = false; var_distortion_ammount = 0.12; var_border = false;}
	if oControl.TVfx=5 { var_distort = true; var_distortion_ammount = 0.24; var_border = true;}
	if oControl.TVfx=6 { var_distort = true; var_distortion_ammount = 0; var_border = true;}



	if oControl.TVfx!=0
	{surface_reset_target();
application_surface_draw_enable(false);

shader_set(shade)
  shader_set_uniform_f(uni_crt_sizes, surface_width, surface_height,crt_surface_width, crt_surface_height);
  shader_set_uniform_f(distort, var_distort);
  shader_set_uniform_f(distortion, var_distortion_ammount);
  shader_set_uniform_f(border, var_border);
  draw_clear_alpha(c_black, 0.0);
draw_surface_part_ext(new_surf, 0, 0, view_wview[0], view_hview[0], 0, 0, crt_surface_scale, crt_surface_scale, c_white, 1);

shader_reset();
	}
draw_set_halign(fa_left)
draw_set_valign(fa_top)