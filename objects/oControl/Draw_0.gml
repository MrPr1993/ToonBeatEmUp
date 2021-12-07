//
isPaused=0
{
//Draw Map
if room=rm_map
{
controller_setup()

//mapSelX=0
//mapSelY=0
//mapSX=80
//mapSY=121

if -key_left_pressed
{if mapSelX!=0 {mapSelX-=1 PlaySound(snd_select)} else {}}
if key_right_pressed
{if mapSelX!=6 {mapSelX+=1 PlaySound(snd_select)} else {}}

if key_up_pressed
{if mapSelY!=-1 {mapSelY-=1 PlaySound(snd_select)} else {}}
if -key_down_pressed
{if mapSelY!=1 {mapSelY+=1 PlaySound(snd_select)} else {}}

mapSX=lerp(mapSX,mapSXlerp,0.25)
mapSY=lerp(mapSY,mapSYlerp,0.25)

///Check Map Locations
//A
if mapSelX=0 and mapSelY=-1 {mapSXlerp=128 mapSYlerp=87 mapSName="LEVEL 0A"}
if mapSelX=0 and mapSelY=0 {mapSXlerp=80 mapSYlerp=121 mapSName="LEVEL 1A"}
if mapSelX=0 and mapSelY=1 {mapSXlerp=24 mapSYlerp=166 mapSName="LEVEL 2A"}
//B
if mapSelX=1 and mapSelY=-1 {mapSXlerp=190 mapSYlerp=102 mapSName="LEVEL 0B"}
if mapSelX=1 and mapSelY=0 {mapSXlerp=152 mapSYlerp=142 mapSName="LEVEL 1B"}
if mapSelX=1 and mapSelY=1 {mapSXlerp=102 mapSYlerp=194 mapSName="LEVEL 2B"}
//C
if mapSelX=2 and mapSelY=-1 {mapSXlerp=248 mapSYlerp=109 mapSName="LEVEL 0C"}
if mapSelX=2 and mapSelY=0 {mapSXlerp=228 mapSYlerp=154 mapSName="LEVEL 1C"}
if mapSelX=2 and mapSelY=1 {mapSXlerp=204 mapSYlerp=212 mapSName="LEVEL 2C"}
//D
if mapSelX=3 and mapSelY=-1 {mapSXlerp=320 mapSYlerp=111 mapSName="LEVEL 0D"}
if mapSelX=3 and mapSelY=0 {mapSXlerp=320 mapSYlerp=157 mapSName="LEVEL 1D"}
if mapSelX=3 and mapSelY=1 {mapSXlerp=320 mapSYlerp=215 mapSName="LEVEL 2D"}
//E
if mapSelX=4 and mapSelY=-1 {mapSXlerp=640-248 mapSYlerp=109 mapSName="LEVEL 0E"}
if mapSelX=4 and mapSelY=0 {mapSXlerp=640-228 mapSYlerp=154 mapSName="LEVEL 1E"}
if mapSelX=4 and mapSelY=1 {mapSXlerp=640-204 mapSYlerp=212 mapSName="LEVEL 2E"}
//F
if mapSelX=5 and mapSelY=-1 {mapSXlerp=640-190 mapSYlerp=102 mapSName="LEVEL 0F"}
if mapSelX=5 and mapSelY=0 {mapSXlerp=640-152 mapSYlerp=142 mapSName="LEVEL 1F"}
if mapSelX=5 and mapSelY=1 {mapSXlerp=640-102 mapSYlerp=194 mapSName="LEVEL 2F"}
//G
if mapSelX=6 and mapSelY=-1 {mapSXlerp=640-128 mapSYlerp=87 mapSName="LEVEL 0G"}
if mapSelX=6 and mapSelY=0 {mapSXlerp=640-80 mapSYlerp=121 mapSName="LEVEL 1G"}
if mapSelX=6 and mapSelY=1 {mapSXlerp=640-24 mapSYlerp=166 mapSName="LEVEL 2G"}

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