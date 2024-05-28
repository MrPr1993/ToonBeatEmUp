///@description Boat Scene

if oPlayer.x>__view_get( e__VW.XView, 0 )+320+24
{
with oCameoChar if sprite_index=spr_bcameo5
{anim=66
newscript=function()
{
frame_set(0,3,framespd)
frame_set(1,4,framespd)
frame_set(2,5,framespd)
frame_set(3,6,framespd)
frame_set(4,5,framespd) if AnimFrame>5-framespd AnimFrame=1
}

}

oPlayer.canControl=0
oPlayer.areaEntry=1
//oPlayer.x=__view_get( e__VW.XView, 0 )+320+32
//with oPlayer {key_right=0 doubledash=0 dashing=0}

with oPlayer
{canControl=0 areaEntry=1
key_up=0 key_down=0 key_left=0
key_right=1 doubledash=0 dashing=0
y=160+16+16
myboat=instance_create_depth(2927,y,-1,oFlashFX) with myboat
{sprite_index=spr_boat image_speed=0 alarm[0]=-1
}
}

oEnemySpawner.roomHSpd=4
oEnemySpawner.roomMove=1
spawner_followset("WaveSet1",__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.XView, 0 )+320,0)


}
else
timeline_position-=1
