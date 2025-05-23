//
shader_reset()
draw_set_alpha(1)
isPaused=0
{
//Draw Map
if room=rm_map
{
//controller_setup()

if betatest=1
{
if keyboard_check_pressed(vk_backspace)
if keyboard_check(vk_shift) {var stp=1; repeat(20){lockedMap[stp]=0; stp+=1;}}
else
{var stp=1; repeat(20){lockedMap[stp]=1; stp+=1;}}
}

if key_A or key_Y or key_X or keyboard_check_pressed(vk_enter) or key_start
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
{mapSelY=0 global.StageGoing=rm_stage1 mapSXlerp=80 mapSYlerp=121 mapHighScore=global.LevelHiScore[1] mapDif=global.LevelDif[1] if lockedMap[1]=1 mapSName="STAGE 1\nDOWNTOWN BEAT"
}



if (mapSelX=0 and mapSelY=-1)
or mapSelX=0 and mapSelY=0
or mapSelX=0 and mapSelY=1
draw_sprite_ext(bg_mapB,0,0,7,1,1,0,c_white,1-1*lockedMap[1])	
else
draw_sprite_ext(bg_mapB,0,0,7,1,1,0,c_white,1-0.8*lockedMap[1])

if mapSelX=0 and mapSelY=0
{global.StageGoing=rm_stage1 mapSXlerp=80 mapSYlerp=121 mapHighScore=global.LevelHiScore[1] mapDif=global.LevelDif[1] if lockedMap[1]=1 mapSName="STAGE 1\nDOWNTOWN BEAT"}

if mapSelX=0 and mapSelY=1
{mapSelY=0 global.StageGoing=rm_stage1 mapSXlerp=80 mapSYlerp=121 mapHighScore=global.LevelHiScore[1] mapDif=global.LevelDif[1] if lockedMap[1]=1  mapSName="STAGE 1\nDOWNTOWN BEAT"}
//B
if mapSelX=1 and mapSelY=-1 {global.StageGoing=rm_stage2b mapSXlerp=190 mapSYlerp=102 mapHighScore=global.LevelHiScore[2] mapDif=global.LevelDif[2] if lockedMap[2]=1 mapSName="STAGE 2-B\nAERIAL WALK"
draw_sprite_ext(bg_mapB,1,123,48,1,1,0,c_white,1-1*lockedMap[2])
	}else draw_sprite_ext(bg_mapB,1,123,48,1,1,0,c_white,1-0.8*lockedMap[2])

if mapSelX=1 and mapSelY=0 {global.StageGoing=rm_stage2 mapSXlerp=152 mapSYlerp=142 mapHighScore=global.LevelHiScore[3] mapDif=global.LevelDif[3] if lockedMap[3]=1 mapSName="STAGE 2\nRUSH OVER THE SEA"
draw_sprite_ext(bg_mapB,2,91,101,1,1,0,c_white,1-1*lockedMap[3])
	}else draw_sprite_ext(bg_mapB,2,91,101,1,1,0,c_white,1-0.8*lockedMap[3])
if mapSelX=1 and mapSelY=1 {global.StageGoing=rm_stage2c mapSXlerp=102 mapSYlerp=194 mapHighScore=global.LevelHiScore[4] mapDif=global.LevelDif[4] if lockedMap[4]=1 mapSName="STAGE 2-C\nTRAINING TRAVEL"
	draw_sprite_ext(bg_mapB,3,73,123,1,1,0,c_white,1-1*lockedMap[4])
	}else draw_sprite_ext(bg_mapB,3,73,123,1,1,0,c_white,1-0.8*lockedMap[4])
//C
if mapSelX=2 and mapSelY=-1 {global.StageGoing=rm_stage4 mapSXlerp=248 mapSYlerp=109 mapHighScore=global.LevelHiScore[5] mapDif=global.LevelDif[5] if lockedMap[5]=1 mapSName="STAGE 3-B\nGRITTY GRAVES"
	draw_sprite_ext(bg_mapB,4,201,1,1,1,0,c_white,1-1*lockedMap[5])
	}else draw_sprite_ext(bg_mapB,4,201,1,1,1,0,c_white,1-0.8*lockedMap[5])
	
if mapSelX=2 and mapSelY=0 {global.StageGoing=rm_stage3 mapSXlerp=228 mapSYlerp=154 mapHighScore=global.LevelHiScore[6] mapDif=global.LevelDif[6] if lockedMap[6]=1 mapSName="STAGE 3\nMASHUP MUSEUM"
	draw_sprite_ext(bg_mapB,5,195,117,1,1,0,c_white,1-1*lockedMap[6])
	}else draw_sprite_ext(bg_mapB,5,195,117,1,1,0,c_white,1-0.8*lockedMap[6])
if mapSelX=2 and mapSelY=1 {global.StageGoing=rm_stage5 mapSXlerp=204 mapSYlerp=212 mapHighScore=global.LevelHiScore[7] mapDif=global.LevelDif[7] if lockedMap[7]=1 mapSName="STAGE 3-C\nLUCKY DOJO CASINO"
	draw_sprite_ext(bg_mapB,6,170,162,1,1,0,c_white,1-1*lockedMap[7])
	}else draw_sprite_ext(bg_mapB,6,170,162,1,1,0,c_white,1-0.8*lockedMap[7])
//D
if mapSelX=3 and mapSelY=-1 {global.StageGoing=rm_stageswamp mapSXlerp=320 mapSYlerp=111 mapHighScore=global.LevelHiScore[8] mapDif=global.LevelDif[8] if lockedMap[8]=1 mapSName="STAGE 4-B\nDEEP DEAD SWAMPS"
	draw_sprite_ext(bg_mapB,7,280,17,1,1,0,c_white,1-1*lockedMap[8])
	}else draw_sprite_ext(bg_mapB,7,280,17,1,1,0,c_white,1-0.8*lockedMap[8])
if mapSelX=3 and mapSelY=0 {global.StageGoing=rm_stagecarnival mapSXlerp=320 mapSYlerp=157 mapHighScore=global.LevelHiScore[9] mapDif=global.LevelDif[9] if lockedMap[9]=1 mapSName="STAGE 4\nCLOWNY HONKY CARNIVAL"
	draw_sprite_ext(bg_mapB,8,273,117,1,1,0,c_white,1-1*lockedMap[9])
	}else draw_sprite_ext(bg_mapB,8,273,117,1,1,0,c_white,1-0.8*lockedMap[9])
if mapSelX=3 and mapSelY=1 {global.StageGoing=rm_stagebeach mapSXlerp=320 mapSYlerp=215 mapHighScore=global.LevelHiScore[10] mapDif=global.LevelDif[10] if lockedMap[10]=1 mapSName="STAGE 4-C\nDOWNSIDE BEACH"
	draw_sprite_ext(bg_mapB,9,275,173,1,1,0,c_white,1-1*lockedMap[10])
	}else draw_sprite_ext(bg_mapB,9,275,173,1,1,0,c_white,1-0.8*lockedMap[10])
//E
if mapSelX=4 and mapSelY=-1 {global.StageGoing=rm_stageufo mapSXlerp=640-248 mapSYlerp=109 mapHighScore=global.LevelHiScore[11] mapDif=global.LevelDif[11] if lockedMap[11]=1 mapSName="STAGE 5-B\nUFO BEYOND THE STARS"
	draw_sprite_ext(bg_mapB,10,363,36,1,1,0,c_white,1-1*lockedMap[11])
	}else draw_sprite_ext(bg_mapB,10,363,36,1,1,0,c_white,1-0.8*lockedMap[11])
if mapSelX=4 and mapSelY=0 {global.StageGoing=rm_stagemermaid mapSXlerp=640-228 mapSYlerp=154 mapHighScore=global.LevelHiScore[12] mapDif=global.LevelDif[12] if lockedMap[12]=1 mapSName="STAGE 5\nUNDER THE SEA JAM"
	draw_sprite_ext(bg_mapB,11,359,107,1,1,0,c_white,1-1*lockedMap[12])
	}else draw_sprite_ext(bg_mapB,11,359,107,1,1,0,c_white,1-0.8*lockedMap[12])
if mapSelX=4 and mapSelY=1 {global.StageGoing=rm_stagedesert mapSXlerp=640-204 mapSYlerp=212  mapHighScore=global.LevelHiScore[13] mapDif=global.LevelDif[13] if lockedMap[13]=1 mapSName="STAGE 5-C\nHEATING HOT DESERT"
	draw_sprite_ext(bg_mapB,12,389,166,1,1,0,c_white,1-1*lockedMap[13])
	}else draw_sprite_ext(bg_mapB,12,389,166,1,1,0,c_white,1-0.8*lockedMap[13])
//F
if mapSelX=5 and mapSelY=-1 {global.StageGoing=rm_stagesnow mapSXlerp=640-190 mapSYlerp=102 mapHighScore=global.LevelHiScore[14] mapDif=global.LevelDif[14] if lockedMap[14]=1 mapSName="STAGE 6-B\nGREAT CLIMBING COLD"
	draw_sprite_ext(bg_mapB,13,417,21,1,1,0,c_white,1-1*lockedMap[14])
	}else draw_sprite_ext(bg_mapB,13,417,21,1,1,0,c_white,1-0.8*lockedMap[14])
if mapSelX=5 and mapSelY=0 {global.StageGoing=rm_stagecave mapSXlerp=640-152 mapSYlerp=142  mapHighScore=global.LevelHiScore[15] mapDif=global.LevelDif[15] if lockedMap[15]=1 mapSName="STAGE 6\nFANTASTIC FANTASY CAVERNS"
	draw_sprite_ext(bg_mapB,14,455,95,1,1,0,c_white,1-1*lockedMap[15])
	}else draw_sprite_ext(bg_mapB,14,455,95,1,1,0,c_white,1-0.8*lockedMap[15])
if mapSelX=5 and mapSelY=1 {global.StageGoing=rm_stageclouds mapSXlerp=640-102 mapSYlerp=194 mapHighScore=global.LevelHiScore[16] mapDif=global.LevelDif[16] if lockedMap[16]=1 mapSName="STAGE 6-C\nAHEAD IN THE CLOUDS"
	draw_sprite_ext(bg_mapB,15,486,141,1,1,0,c_white,1-1*lockedMap[16])
	}else draw_sprite_ext(bg_mapB,15,486,141,1,1,0,c_white,1-0.8*lockedMap[16])
//G
if mapSelX=6 and mapSelY=-1 {mapSelY=0 global.StageGoing=rm_stagelab mapSXlerp=640-80 mapSYlerp=121  mapHighScore=global.LevelHiScore[17] mapDif=global.LevelDif[17] if lockedMap[17]=1 mapSName="STAGE 7\nDANGEROUS SCIENCE"}
if mapSelX=6 and mapSelY=0 {mapSelY=0 global.StageGoing=rm_stagelab mapSXlerp=640-80 mapSYlerp=121 mapHighScore=global.LevelHiScore[17] mapDif=global.LevelDif[17] if lockedMap[17]=1 mapSName="STAGE 7\nDANGEROUS SCIENCE"}
if mapSelX=6 and mapSelY=1 {mapSelY=0 global.StageGoing=rm_stagelab mapSXlerp=640-80 mapSYlerp=121 mapHighScore=global.LevelHiScore[17] mapDif=global.LevelDif[17] if lockedMap[17]=1  mapSName="STAGE 7\nDANGEROUS SCIENCE"}

if mapSelX=6
draw_sprite_ext(bg_mapB,16,516,48,1,1,0,c_white,1-1*lockedMap[18])
else draw_sprite_ext(bg_mapB,16,516,48,1,1,0,c_white,1-0.8*lockedMap[18])
//if mapSelX=6 and mapSelY=-1 {mapSXlerp=640-128 mapSYlerp=87 if lockedMap[17]=1 mapSName="STAGE 0G"}
//if mapSelX=6 and mapSelY=0 {mapSXlerp=640-80 mapSYlerp=121 if lockedMap[18]=1 mapSName="STAGE 1G"}
//if mapSelX=6 and mapSelY=1 {mapSXlerp=640-24 mapSYlerp=166 if lockedMap[19]=1 mapSName="STAGE 2G"}
//H
if mapSelX=7 and mapSelY=-1 {mapSelY=0 global.StageGoing=rm_stagefinal mapSXlerp=640-40 mapSYlerp=121 mapHighScore=global.LevelHiScore[18] mapDif=global.LevelDif[18] if lockedMap[18]=1 mapSName="STAGE 8\nZEPPELIN FINALE"}
if mapSelX=7 and mapSelY=0 {global.StageGoing=rm_stagefinal mapSXlerp=640-40 mapSYlerp=121 mapHighScore=global.LevelHiScore[18] mapDif=global.LevelDif[18] if lockedMap[18]=1 mapSName="STAGE 8\nZEPPELIN FINALE"}
if mapSelX=7 and mapSelY=1 {mapSelY=0 global.StageGoing=rm_stagefinal mapSXlerp=640-40 mapSYlerp=121 mapHighScore=global.LevelHiScore[18] mapDif=global.LevelDif[18] if lockedMap[18]=1 mapSName="STAGE 8\nZEPPELIN FINALE"}

if mapSelX=7
draw_sprite_ext(bg_mapB,17,567,44,1,1,0,c_white,1-1*lockedMap[18])
else
draw_sprite_ext(bg_mapB,17,567,44,1,1,0,c_white,1-0.8*lockedMap[18])


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
pal_swap_set(global.p1Pals,global.p1Pal,false);
draw_sprite(mapSpr,mapIndex,mapSX,mapSY)
pal_swap_reset()
///Check on Map Location

}

if room=rm_gallery
{

fpsY=-999

if gallerychoosing=0
{
draw_sprite_ext(spr_galleryicon,1*global.Gallery[1],galleryHover+16+16,16,1,1,0,c_grey,1)
draw_sprite_ext(spr_galleryicon,2*global.Gallery[2],galleryHover+16+16+64,16,1,1,0,c_grey,1)
draw_sprite_ext(spr_galleryicon,3*global.Gallery[3],galleryHover+16+16+64*2,16,1,1,0,c_grey,1)
draw_sprite_ext(spr_galleryicon,4*global.Gallery[4],galleryHover+16+16+64*3,16,1,1,0,c_grey,1)
draw_sprite_ext(spr_galleryicon,5*global.Gallery[5],galleryHover+16+16,16+48,1,1,0,c_grey,1)
draw_sprite_ext(spr_galleryicon,6*global.Gallery[6],galleryHover+16+16+64,16+48,1,1,0,c_grey,1)
draw_sprite_ext(spr_galleryicon,7*global.Gallery[7],galleryHover+16+16+64*2,16+48,1,1,0,c_grey,1)
draw_sprite_ext(spr_galleryicon,8*global.Gallery[8],galleryHover+16+16+64*3,16+48,1,1,0,c_grey,1)
draw_sprite_ext(spr_galleryicon,9*global.Gallery[9],galleryHover+16+16,16+96,1,1,0,c_grey,1)
draw_sprite_ext(spr_galleryicon,10*global.Gallery[10],galleryHover+16+16+64,16+96,1,1,0,c_grey,1)
draw_sprite_ext(spr_galleryicon,11*global.Gallery[11],galleryHover+16+16+64*2,16+96,1,1,0,c_grey,1)
draw_sprite_ext(spr_galleryicon,12*global.Gallery[12],galleryHover+16+16+64*3,16+96,1,1,0,c_grey,1)
draw_sprite_ext(spr_galleryicon,13*global.Gallery[13],galleryHover+16+16,16+96+48,1,1,0,c_grey,1)
draw_sprite_ext(spr_galleryicon,14*global.Gallery[14],galleryHover+16+16+64,16+96+48,1,1,0,c_grey,1)
draw_sprite_ext(spr_galleryicon,15*global.Gallery[15],galleryHover+16+16+64*2,16+96+48,1,1,0,c_grey,1)
draw_sprite_ext(spr_galleryicon,16*global.Gallery[16],galleryHover+16+16+64*3,16+96+48,1,1,0,c_grey,1)

draw_sprite_ext(spr_galleryicon,galleryNO*global.Gallery[galleryNO],16+16+64*galleryX,16+48*galleryY,1,1,0,c_white,1)	
}
if gallerychoosing=1
{
if gallerybuffer=0
{
if -key_left pictureX-=1
if key_right pictureX+=1
if key_up pictureY-=1
if -key_down pictureY+=1
if key_Ah if pictureZoom<5 pictureZoom+=0.001
if key_Xh if pictureZoom>0.01 pictureZoom-=0.001
//if key_B {gallerychoosing=0 gallerybuffer=2}//room_goto(rm_menu)

if key_A and key_X pictureZoom=0.25/3

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
if pictureNO=5 currentimagespr=spr_galleryimg5	
if pictureNO=6 currentimagespr=spr_galleryimg6
if pictureNO=7 currentimagespr=spr_galleryimg7	
if pictureNO=8 currentimagespr=spr_galleryimg8	
if pictureNO=9 currentimagespr=spr_galleryimg9	
if pictureNO=10 currentimagespr=spr_galleryimg10
if pictureNO=11 currentimagespr=spr_galleryimg11	
if pictureNO=12 currentimagespr=spr_galleryimg12	
if pictureNO=13 currentimagespr=spr_galleryimg13	
if pictureNO=14 currentimagespr=spr_galleryimg14
if pictureNO=15 currentimagespr=spr_galleryimg15	
if pictureNO=16 currentimagespr=spr_galleryimg16	
if pictureNO=17 currentimagespr=spr_galleryimg17	
if pictureNO=18 currentimagespr=spr_galleryimg18
if pictureNO=19 currentimagespr=spr_galleryimg19	
if pictureNO=20 currentimagespr=spr_galleryimg20	
if pictureNO=21 currentimagespr=spr_galleryimg21	
if pictureNO=22 currentimagespr=spr_galleryimg22
if pictureNO=23 currentimagespr=spr_galleryimg23	
if pictureNO=24 currentimagespr=spr_galleryimg24	
if pictureNO=25 currentimagespr=spr_galleryimg25	
if pictureNO=26 currentimagespr=spr_galleryimg26
if pictureNO=27 currentimagespr=spr_galleryimg27	
if pictureNO=28 currentimagespr=spr_galleryimg28
if pictureNO=29 currentimagespr=spr_galleryimg29	
if pictureNO=30 currentimagespr=spr_galleryimg30

if key_start if filtermode=0 filtermode=1 else filtermode=0

gpu_set_texfilter(filtermode);

//draw_sprite_ext(spr_galleryimg1,galleryNO,pictureX,pictureY,1*pictureZoom,1*pictureZoom,0,c_white,1)

var imgexpand=0//((sprite_get_width(currentimagespr)/1280)*300)/48;

imgexpand=6

var imgexpandX=sprite_get_width(currentimagespr);
var imgexpandY=sprite_get_height(currentimagespr);
var imgexpandX2=sprite_get_width(currentimagespr);
var imgexpandY2=sprite_get_height(currentimagespr);

if imgexpandX>imgexpandY
{
imgexpandX=clamp(imgexpandX,0,320)
imgexpandY=(imgexpandY2/imgexpandX2)*imgexpandX
}
else
{
imgexpandY=clamp(imgexpandY,0,320)
imgexpandX=(imgexpandX2/imgexpandY2)*imgexpandY
}

draw_primitive_begin_texture(pr_trianglestrip, sprite_get_texture(currentimagespr,0));

draw_vertex_texture((-(imgexpandX/2)*pictureZoom)*imgexpand+pictureX, (-(imgexpandY/2)*pictureZoom)*imgexpand+pictureY, 0, 0);
draw_vertex_texture(((imgexpandX/2)*pictureZoom)*imgexpand+pictureX, (-(imgexpandY/2)*pictureZoom)*imgexpand+pictureY, 1, 0);
draw_vertex_texture((-(imgexpandX/2)*pictureZoom)*imgexpand+pictureX, ((imgexpandY/2)*pictureZoom)*imgexpand+pictureY, 0, 1);
draw_vertex_texture(((imgexpandX/2)*pictureZoom)*imgexpand+pictureX, ((imgexpandY/2)*pictureZoom)*imgexpand+pictureY, 1, 1);


//draw_vertex_texture((-(sprite_get_width(currentimagespr)/2)*pictureZoom)*imgexpand+pictureX, (-(sprite_get_height(currentimagespr)/2)*pictureZoom)*imgexpand+pictureY, 0, 0);
//draw_vertex_texture(((sprite_get_width(currentimagespr)/2)*pictureZoom)*imgexpand+pictureX, (-(sprite_get_height(currentimagespr)/2)*pictureZoom)*imgexpand+pictureY, 1, 0);
//draw_vertex_texture((-(sprite_get_width(currentimagespr)/2)*pictureZoom)*imgexpand+pictureX, ((sprite_get_height(currentimagespr)/2)*pictureZoom)*imgexpand+pictureY, 0, 1);
//draw_vertex_texture(((sprite_get_width(currentimagespr)/2)*pictureZoom)*imgexpand+pictureX, ((sprite_get_height(currentimagespr)/2)*pictureZoom)*imgexpand+pictureY, 1, 1);


//draw_vertex_texture(-(sprite_get_width(currentimagespr)/2)*pictureZoom+pictureX, -(sprite_get_height(currentimagespr)/2)*pictureZoom+pictureY, 0, 0);
//draw_vertex_texture((sprite_get_width(currentimagespr)/2)*pictureZoom+pictureX, -(sprite_get_height(currentimagespr)/2)*pictureZoom+pictureY, 1, 0);
//draw_vertex_texture(-(sprite_get_width(currentimagespr)/2)*pictureZoom+pictureX, (sprite_get_height(currentimagespr)/2)*pictureZoom+pictureY, 0, 1);
//draw_vertex_texture((sprite_get_width(currentimagespr)/2)*pictureZoom+pictureX, (sprite_get_height(currentimagespr)/2)*pictureZoom+pictureY, 1, 1);
draw_primitive_end();
gpu_set_texfilter(false);

}
}
}
}
shader_reset()
draw_set_alpha(1)