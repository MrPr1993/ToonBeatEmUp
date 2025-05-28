if !instance_exists(oMineCart)
{
en5=instance_create(1880,172,oAreaSpawner) with en5
{
spawnX=0
enemytype0=oGoblin
enemytype1=oGoblin
enemytype2=oShroom

MaxSpawnFrame=0 visible=1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
turn0=-1 enemyMax=2 pal0=1 name0="GOHNNY"
}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )-32, 224-32,oShroom)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )-32, 224,oGoblin)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )-32, 224+32,oGoblin)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=1}}
////

}
else
timeline_position-=1;