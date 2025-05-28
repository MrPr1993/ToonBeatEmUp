if __view_get( e__VW.XView, 0 )>=4234
{
en5=instance_create_depth(__view_get( e__VW.XView, 0 )-64,218,-1,oFatBurglar) with en5
{canAttack=5 alarm[1]=30}


////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 170,oFatBurglar)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=-1 enemy_switch("MR.WIDE",0)}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )-32, 170+32,oFatBurglar)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=1 enemy_switch("MR.WIDE",0)}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 170+64,oFatBurglar)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=-1 enemy_switch("MR.WIDE",0)}}
////

}
else
timeline_position-=1
