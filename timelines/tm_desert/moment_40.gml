if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
and !instance_exists(en6)
and !instance_exists(en7)
and !instance_exists(en8)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}
spawner_followset("WaveSet1",0,2228+320,1)

sandstorm=instance_create_depth(__view_get( e__VW.XView, 0 ),0,-1,oCameoChar)
with sandstorm { isDepth=0 depth=-300
image_alpha=0 sprite_index=spr_sandstormtile
newscript=function()
{x-=4
image_alpha=lerp(image_alpha,0.4,0.005)
}

specialdraw=function()
{
draw_sprite_tiled_ext(sprite_index,0,x,y,1,1,image_blend,image_alpha)
}

}


}
else
timeline_position-=1;