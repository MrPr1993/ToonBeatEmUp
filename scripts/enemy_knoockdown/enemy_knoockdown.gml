// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_knoockdown(){
if instance_exists(oEnemy1)
{
with oEnemy1 if hurt=0 and act=1
{event_user(11)
canmove=0 hitBack=0 recovery=0 recoveryThrow=0
hurt=1
ground=0
zSpeed=-4
sentflying=-2


if anim!=2500
{
image_index=3 sprite_index=ThrownSpr if hasscaredSpr sprite_index=scaredSpr
if x>oPlayer.x image_xscale=-1 else image_xscale=1
AnimFrame=3 anim=5
image_index=0 AnimFrame=0 anim=595000 sentflying=0
} else {HitType=1 burglarbike_hit()}
}}
}