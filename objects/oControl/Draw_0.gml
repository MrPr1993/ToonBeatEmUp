//
isPaused=0
{
//Draw Map
if room=rm_map
{
controller_setup()

if key_attack or key_jump or key_super or key_shield or keyboard_check_pressed(vk_enter)
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
//mapSelX=0
//mapSelY=0
//mapSX=80
//mapSY=121
if mapSelected=0 and quickMapLerp=0
{
if -key_left_pressed
{if mapSelX!=0 {mapSelX-=1 PlaySound(snd_select)} else {}}
if key_right_pressed
{if mapSelX!=6 {mapSelX+=1 PlaySound(snd_select)} else {}}

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

lockedMap[1]=1
lockedMap[2]=1
lockedMap[3]=1
lockedMap[4]=1
lockedMap[5]=1
lockedMap[6]=1
lockedMap[7]=1

if mapSelX=0 and mapSelY=-1
{mapSelY=0 global.StageGoing=rm_stage1 mapSXlerp=80 mapSYlerp=121 if lockedMap[1]=1 mapSName="STAGE 1\nDOWNTOWN BEAT"}

if mapSelX=0 and mapSelY=0
{global.StageGoing=rm_stage1 mapSXlerp=80 mapSYlerp=121 if lockedMap[1]=1 mapSName="STAGE 1\nDOWNTOWN BEAT"}

if mapSelX=0 and mapSelY=1
{mapSelY=0 global.StageGoing=rm_stage1 mapSXlerp=80 mapSYlerp=121 if lockedMap[1]=1 mapSName="STAGE 1\nDOWNTOWN BEAT"}
//B
if mapSelX=1 and mapSelY=-1 {global.StageGoing=rm_stage2b mapSXlerp=190 mapSYlerp=102 if lockedMap[2]=1 mapSName="STAGE 2-B\nAERIAL WALK"}
if mapSelX=1 and mapSelY=0 {global.StageGoing=rm_stage2 mapSXlerp=152 mapSYlerp=142 if lockedMap[3]=1 mapSName="STAGE 2\nRUSH OVER THE SEA"}
if mapSelX=1 and mapSelY=1 {global.StageGoing=rm_stage2c mapSXlerp=102 mapSYlerp=194 if lockedMap[4]=1 mapSName="STAGE 2-C\nTRAINING TRAVEL"}
//C
if mapSelX=2 and mapSelY=-1 {global.StageGoing=rm_stage4 mapSXlerp=248 mapSYlerp=109 if lockedMap[5]=1 mapSName="STAGE 3-B\nGRITTY GRAVES"}
if mapSelX=2 and mapSelY=0 {global.StageGoing=rm_stage3 mapSXlerp=228 mapSYlerp=154 if lockedMap[6]=1  mapSName="STAGE 3\nMASHUP MUSEUM"}
if mapSelX=2 and mapSelY=1 {global.StageGoing=rm_stage5 mapSXlerp=204 mapSYlerp=212 if lockedMap[7]=1 mapSName="STAGE 3-C\nLUCKY DOJO CASINO"}
//D
if mapSelX=3 and mapSelY=-1 {mapSXlerp=320 mapSYlerp=111 if lockedMap[8]=1 mapSName="STAGE 0D"}
if mapSelX=3 and mapSelY=0 {mapSXlerp=320 mapSYlerp=157 if lockedMap[9]=1 mapSName="STAGE 1D"}
if mapSelX=3 and mapSelY=1 {mapSXlerp=320 mapSYlerp=215 if lockedMap[10]=1 mapSName="STAGE 2D"}
//E
if mapSelX=4 and mapSelY=-1 {mapSXlerp=640-248 mapSYlerp=109 if lockedMap[11]=1 mapSName="STAGE 0E"}
if mapSelX=4 and mapSelY=0 {mapSXlerp=640-228 mapSYlerp=154 if lockedMap[12]=1 mapSName="STAGE 1E"}
if mapSelX=4 and mapSelY=1 {mapSXlerp=640-204 mapSYlerp=212 if lockedMap[13]=1 mapSName="STAGE 2E"}
//F
if mapSelX=5 and mapSelY=-1 {mapSXlerp=640-190 mapSYlerp=102 if lockedMap[14]=1  mapSName="STAGE 0F"}
if mapSelX=5 and mapSelY=0 {mapSXlerp=640-152 mapSYlerp=142 if lockedMap[15]=1  mapSName="STAGE 1F"}
if mapSelX=5 and mapSelY=1 {mapSXlerp=640-102 mapSYlerp=194 if lockedMap[16]=1  mapSName="STAGE 2F"}
//G
if mapSelX=6 and mapSelY=-1 {mapSXlerp=640-128 mapSYlerp=87 if lockedMap[17]=1 mapSName="STAGE 0G"}
if mapSelX=6 and mapSelY=0 {mapSXlerp=640-80 mapSYlerp=121 if lockedMap[18]=1 mapSName="STAGE 1G"}
if mapSelX=6 and mapSelY=1 {mapSXlerp=640-24 mapSYlerp=166 if lockedMap[19]=1 mapSName="STAGE 2G"}

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

draw_sprite(mapSpr,mapIndex,mapSX,mapSY)
///Check on Map Location

}
}