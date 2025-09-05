if oPlayer.x>-100
{
timeline_position-=1

}
else
{
with truck {x-=100
	
hspeed=8 newscript=function() {
	if specialcheck[0]=0
	if x>=300 {specialcheck[0]=1 spdZ=-16 PlaySound(snd_break2) sprite_index=spr_truck2}
	
	z+=spdZ;
	
	}
	
	}

specialSet8=0
oEnemySpawner.canFollow=0
oControl.camMove=0
oEnemySpawner.roomHSpd=8
oEnemySpawner.roomMove=1

oPlayer.hspeed=8
oPlayer.x=-100
oPlayer.y=200

if instance_number(oPlayer)!=1
with oControl
{oPlayer.y-=32
	var checknum=1;
if p2.object_index=oPlayer {p2.y+=24;}
if p3.object_index=oPlayer {p3.y+=48;}
if p4.object_index=oPlayer {p4.y+=72;}
}

var bg1	= layer_get_id("StreetBG");
layer_hspeed(bg1,0)
var bg2	= layer_get_id("GroundImg");
layer_hspeed(bg2,0)
var bg3	= layer_get_id("Compatibility_Background_0_bg_sky");
layer_hspeed(bg3,0)


}
