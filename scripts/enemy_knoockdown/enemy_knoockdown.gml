// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_knoockdown(){
if instance_exists(oEnemy1)
{
with oEnemy1 if hurt=0 and act=1
{event_user(11)
canmove=0 hitBack=0
hurt=1
ground=0
zSpeed=-4
sentflying=-2
image_index=3 sprite_index=ThrownSpr

AnimFrame=3 anim=5
AnimFrame=0 anim=595000
}}
}