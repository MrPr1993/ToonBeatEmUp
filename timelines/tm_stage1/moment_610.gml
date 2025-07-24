if !instance_exists(en1) and noextraenemies//8
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
{
with oControl {//camMove=0 camMax=room_width
goActive=1; ambushtime=0; alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320
spawner_followset("WaveSet1",0,2847+320,1)
//__view_set( e__VW.XView, 0, 2848 )
limo1=instance_create_depth(80+2848+200,200,0,oFlashFX) limo1.sprite_index=spr_truck  limo1.isdepth=0
limo1.image_speed=0 limo1.image_index=0 limo1.alarm[0]=0 limo1.name="Limo" limo1.image_speed=0
with limo1 {FlashShadow=1 shadow=spr_carshadow}
}
 
//with oEnemySpawner if selfID="WaveSet1"
//{wave=0 image_xscale=69}//image_xscale=51.25} 
}
else
timeline_position-=1

