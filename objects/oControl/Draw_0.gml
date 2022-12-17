//
shader_reset()
draw_set_alpha(1)
isPaused=0
{
//Draw Map
if room=rm_map
{
controller_setup()

if key_attack or key_super or key_shield_pressed or keyboard_check_pressed(vk_enter) or key_start
if mapSelected=0 and quickMapLerp=0
{
if mapSName="LOCKED"
PlaySound(snd_steal)
else
{
global.StageSelX=mapSelX
global.StageSelY=mapSelY
PlaySound(snd_picked) mapSelected=1
alarm[4]=10
}
}
mapSName="LOCKED"
global.StageName=mapSName
//mapSelX=0
//mapSelY=0
//mapSX=80
//mapSY=121
if mapSelected=0 and quickMapLerp=0
{
if -key_left_pressed
{if mapSelX!=0 {mapSelX-=1 PlaySound(snd_select)} else {}}
if key_right_pressed
{if mapSelX!=7 {mapSelX+=1 PlaySound(snd_select)} else {}}

if key_up_pressed
{if mapSelY!=-1 {mapSelY-=1 PlaySound(snd_select)} else {}}
if -key_down_pressed
{if mapSelY!=1 {mapSelY+=1 PlaySound(snd_select)} else {}}
}

mapSX=lerp(mapSX,mapSXlerp,0.25+1*quickMapLerp)
mapSY=lerp(mapSY,mapSYlerp,0.25+1*quickMapLerp)
if quickMapLerp!=0 {quickMapLerp-=1 
	
mapSX=mapSXlerp 
mapSY=mapSYlerp x=mapSXlerp
	}
///Check Map Locations
//A
if mapSelX=0 and mapSelY=-1 



if mapSelX=0 and mapSelY=-1
{mapSelY=0 global.StageGoing=rm_stage1 mapSXlerp=80 mapSYlerp=121 mapHighScore=global.LevelHiScore[1] if lockedMap[1]=1 mapSName="STAGE 1\nDOWNTOWN BEAT"}

if mapSelX=0 and mapSelY=0
{global.StageGoing=rm_stage1 mapSXlerp=80 mapSYlerp=121 mapHighScore=global.LevelHiScore[1] if lockedMap[1]=1 mapSName="STAGE 1\nDOWNTOWN BEAT"}

if mapSelX=0 and mapSelY=1
{mapSelY=0 global.StageGoing=rm_stage1 mapSXlerp=80 mapSYlerp=121mapHighScore=global.LevelHiScore[1]  if lockedMap[1]=1  mapSName="STAGE 1\nDOWNTOWN BEAT"}
//B
if mapSelX=1 and mapSelY=-1 {global.StageGoing=rm_stage2b mapSXlerp=190 mapSYlerp=102 mapHighScore=global.LevelHiScore[2]  if lockedMap[2]=1 mapSName="STAGE 2-B\nAERIAL WALK"}
if mapSelX=1 and mapSelY=0 {global.StageGoing=rm_stage2 mapSXlerp=152 mapSYlerp=142 mapHighScore=global.LevelHiScore[3] if lockedMap[3]=1 mapSName="STAGE 2\nRUSH OVER THE SEA"}
if mapSelX=1 and mapSelY=1 {global.StageGoing=rm_stage2c mapSXlerp=102 mapSYlerp=194 mapHighScore=global.LevelHiScore[4] if lockedMap[4]=1 mapSName="STAGE 2-C\nTRAINING TRAVEL"}
//C
if mapSelX=2 and mapSelY=-1 {global.StageGoing=rm_stage4 mapSXlerp=248 mapSYlerp=109 mapHighScore=global.LevelHiScore[5] if lockedMap[5]=1 mapSName="STAGE 3-B\nGRITTY GRAVES"}
if mapSelX=2 and mapSelY=0 {global.StageGoing=rm_stage3 mapSXlerp=228 mapSYlerp=154 mapHighScore=global.LevelHiScore[6] if lockedMap[6]=1 mapSName="STAGE 3\nMASHUP MUSEUM"}
if mapSelX=2 and mapSelY=1 {global.StageGoing=rm_stage5 mapSXlerp=204 mapSYlerp=212 mapHighScore=global.LevelHiScore[7] if lockedMap[7]=1 mapSName="STAGE 3-C\nLUCKY DOJO CASINO"}
//D
if mapSelX=3 and mapSelY=-1 {global.StageGoing=rm_stageswamp mapSXlerp=320 mapSYlerp=111 mapHighScore=global.LevelHiScore[8]  if lockedMap[8]=1 mapSName="STAGE 4-B\nDEEP DEAD SWAMPS"}
if mapSelX=3 and mapSelY=0 {global.StageGoing=rm_stagecarnival mapSXlerp=320 mapSYlerp=157 mapHighScore=global.LevelHiScore[9] if lockedMap[9]=1 mapSName="STAGE 4\nCLOWNY HONKY CARNIVAL"}
if mapSelX=3 and mapSelY=1 {global.StageGoing=rm_stagebeach mapSXlerp=320 mapSYlerp=215 mapHighScore=global.LevelHiScore[10] if lockedMap[10]=1 mapSName="STAGE 4-C/nDOWNSIDE BEACH"}
//E
if mapSelX=4 and mapSelY=-1 {global.StageGoing=rm_stageufo mapSXlerp=640-248 mapSYlerp=109 mapHighScore=global.LevelHiScore[11]  if lockedMap[11]=1 mapSName="STAGE 5-B\nUFO BEYOND THE STARS"}
if mapSelX=4 and mapSelY=0 {global.StageGoing=rm_stagemermaid mapSXlerp=640-228 mapSYlerp=154 mapHighScore=global.LevelHiScore[12]  if lockedMap[12]=1 mapSName="STAGe 5\nUNDER THE SEA JAM"}
if mapSelX=4 and mapSelY=1 {global.StageGoing=rm_stagedesert mapSXlerp=640-204 mapSYlerp=212  mapHighScore=global.LevelHiScore[13] if lockedMap[13]=1 mapSName="STAGE 5-C\nHEATING HOT DESERT"}
//F
if mapSelX=5 and mapSelY=-1 {global.StageGoing=rm_stagesnow mapSXlerp=640-190 mapSYlerp=102 mapHighScore=global.LevelHiScore[14] if lockedMap[14]=1 mapSName="STAGE 6-B\nGREAT CLIMBING COLD"}
if mapSelX=5 and mapSelY=0 {global.StageGoing=rm_stagecave mapSXlerp=640-152 mapSYlerp=142  mapHighScore=global.LevelHiScore[15] if lockedMap[15]=1 mapSName="STAGE 6\nFANTASTIC FANTASY CAVERNS"}
if mapSelX=5 and mapSelY=1 {global.StageGoing=rm_stageclouds mapSXlerp=640-102 mapSYlerp=194 mapHighScore=global.LevelHiScore[16] if lockedMap[16]=1 mapSName="STAGE 6-C\nAHEAD IN THE CLOUDS"}
//G
if mapSelX=6 and mapSelY=-1 {mapSelY=0 global.StageGoing=rm_stagelab mapSXlerp=640-80 mapSYlerp=121  mapHighScore=global.LevelHiScore[18] if lockedMap[18]=1 mapSName="STAGE 7\nDANGEROUS SCIENCE"}
if mapSelX=6 and mapSelY=0 {mapSelY=0 global.StageGoing=rm_stagelab mapSXlerp=640-80 mapSYlerp=121 mapHighScore=global.LevelHiScore[18] if lockedMap[18]=1 mapSName="STAGE 7\nDANGEROUS SCIENCE"}
if mapSelX=6 and mapSelY=1 {mapSelY=0 global.StageGoing=rm_stagelab mapSXlerp=640-80 mapSYlerp=121 mapHighScore=global.LevelHiScore[18] if lockedMap[18]=1  mapSName="STAGE 7\nDANGEROUS SCIENCE"}
//if mapSelX=6 and mapSelY=-1 {mapSXlerp=640-128 mapSYlerp=87 if lockedMap[17]=1 mapSName="STAGE 0G"}
//if mapSelX=6 and mapSelY=0 {mapSXlerp=640-80 mapSYlerp=121 if lockedMap[18]=1 mapSName="STAGE 1G"}
//if mapSelX=6 and mapSelY=1 {mapSXlerp=640-24 mapSYlerp=166 if lockedMap[19]=1 mapSName="STAGE 2G"}
//H
if mapSelX=7 and mapSelY=-1 {mapSelY=0 global.StageGoing=rm_stagefinal mapSXlerp=640-40 mapSYlerp=121 mapHighScore=global.LevelHiScore[20] if lockedMap[20]=1 mapSName="STAGE 8\nZEPPELIN FINALE"}
if mapSelX=7 and mapSelY=0 {global.StageGoing=rm_stagefinal mapSXlerp=640-40 mapSYlerp=121 mapHighScore=global.LevelHiScore[20] if lockedMap[20]=1 mapSName="STAGE 8\nZEPPELIN FINALE"}
if mapSelX=7 and mapSelY=1 {mapSelY=0 global.StageGoing=rm_stagefinal mapSXlerp=640-40 mapSYlerp=121 mapHighScore=global.LevelHiScore[20] if lockedMap[20]=1 mapSName="STAGE 8\nZEPPELIN FINALE"}


x=mapSX
y=mapSY

//if key_left_pressed 
if mapAnim!=4 mapAnim+=0.1 else mapAnim=0
if mapAnim=0 or mapAnim=2 mapIndex=0
if mapAnim=1 mapIndex=1
if mapAnim=3 mapIndex=2

///80, 121
if global.P1Char=0 mapSpr=spr_viva_map
if global.P1Char=1 mapSpr=spr_hina_map
if global.P1Char=2 mapSpr=spr_bahati_map
if global.P1Char=3 mapSpr=spr_sofia_map
pal_swap_set(spr_playerpal,global.p1Pal,false);
draw_sprite(mapSpr,mapIndex,mapSX,mapSY)
pal_swap_reset()
///Check on Map Location

}

if room=rm_gallery
{

fpsY=-999

if gallerychoosing=0
{
	draw_sprite_ext(spr_galleryicon,0,galleryHover+16+16,16,1,1,0,c_grey,1)
draw_sprite_ext(spr_galleryicon,0,galleryHover+16+16+64,16,1,1,0,c_grey,1)
draw_sprite_ext(spr_galleryicon,0,galleryHover+16+16+64*2,16,1,1,0,c_grey,1)
draw_sprite_ext(spr_galleryicon,0,galleryHover+16+16+64*3,16,1,1,0,c_grey,1)
draw_sprite_ext(spr_galleryicon,0,galleryHover+16+16,16+96,1,1,0,c_grey,1)
draw_sprite_ext(spr_galleryicon,0,galleryHover+16+16+64,16+96,1,1,0,c_grey,1)
draw_sprite_ext(spr_galleryicon,0,galleryHover+16+16+64*2,16+96,1,1,0,c_grey,1)
draw_sprite_ext(spr_galleryicon,0,galleryHover+16+16+64*3,16+96,1,1,0,c_grey,1)

draw_sprite_ext(spr_galleryicon,0,16+16+64*galleryX,16+96*galleryY,1,1,0,c_white,1)	
}
if gallerychoosing=1
{
if gallerybuffer=0
{
if -key_left pictureX-=1
if key_right pictureX+=1
if key_up pictureY-=1
if key_down pictureY+=1
if key_charge if pictureZoom<5 pictureZoom+=0.001
if key_shield if pictureZoom>0.01 pictureZoom-=0.001
if key_jump room=rm_menu

if key_charge and key_shield pictureZoom=0.25/3

//if key_LB//
if key_super if showtext=1 showtext=0 else showtext=1
}
draw_set_color(c_white)
//draw_sprite_ext(spr_galleryimg1,galleryNO,160+pictureX,120+pictureY,1*pictureZoom,1*pictureZoom,0,c_white,1)
{		
if pictureNO=1 currentimagespr=spr_galleryimg1	
if pictureNO=2 currentimagespr=spr_galleryimg2
if pictureNO=3 currentimagespr=spr_galleryimg3	
if pictureNO=4 currentimagespr=spr_galleryimg4	


if key_start if filtermode=0 filtermode=1 else filtermode=0

gpu_set_texfilter(filtermode);

//draw_sprite_ext(spr_galleryimg1,galleryNO,pictureX,pictureY,1*pictureZoom,1*pictureZoom,0,c_white,1)

draw_primitive_begin_texture(pr_trianglestrip, sprite_get_texture(currentimagespr,0));
draw_vertex_texture(-(sprite_get_width(currentimagespr)/2)*pictureZoom+pictureX, -(sprite_get_height(currentimagespr)/2)*pictureZoom+pictureY, 0, 0);
draw_vertex_texture((sprite_get_width(currentimagespr)/2)*pictureZoom+pictureX, -(sprite_get_height(currentimagespr)/2)*pictureZoom+pictureY, 1, 0);
draw_vertex_texture(-(sprite_get_width(currentimagespr)/2)*pictureZoom+pictureX, (sprite_get_height(currentimagespr)/2)*pictureZoom+pictureY, 0, 1);
draw_vertex_texture((sprite_get_width(currentimagespr)/2)*pictureZoom+pictureX, (sprite_get_height(currentimagespr)/2)*pictureZoom+pictureY, 1, 1);
draw_primitive_end();
gpu_set_texfilter(false);

}
}
}
}
shader_reset()
draw_set_alpha(1)