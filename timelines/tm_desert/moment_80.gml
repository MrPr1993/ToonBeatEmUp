/// @description Hit the Quicksand
if !instance_exists(en1)
and !instance_exists(en2)
and !instance_exists(en3)
{
with oPlayer {canControl=0 key_left=0 key_right=0 key_up=0 key_down=0}
with oShadowFX wetTerrain=0
quicksnd=instance_create_depth(__view_get( e__VW.XView, 0 ),0,-1,oWaterFX) with quicksnd
{z=0 image_xscale=88888 image_yscale=77777}
quicksnd2=instance_create_depth(__view_get( e__VW.XView, 0 ),0,-1,oTrainFXSpot) with quicksnd2
{z=0 image_xscale=88888 image_yscale=77777}

with sandstorm {newscript=function()
{x-=4 y-=4
image_alpha=lerp(image_alpha,0.75,0.005)
oTrainFXSpot.Train1Y+=0.1;
oWaterFX.z-=0.1;

}
}	

}
else
timeline_position-=1;