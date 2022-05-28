if oPlayer.x>-100
timeline_position-=1
else
{specialSet8=0
oEnemySpawner.canFollow=0
oControl.camMove=0
oEnemySpawner.roomHSpd=8
oEnemySpawner.roomMove=1
oPlayer.hspeed=8
oPlayer.x=-100
oPlayer.y=200

var bg1	= layer_get_id("StreetBG");
layer_hspeed(bg1,0)
var bg2	= layer_get_id("GroundImg");
layer_hspeed(bg2,0)
var bg3	= layer_get_id("Compatibility_Background_0_bg_sky");
layer_hspeed(bg3,0)


}
