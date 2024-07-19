if oControl.allPlayersEdge and oControl.allPlayersMove
{
timer_set(0)	
//11528

bos=instance_create_depth(11528,160,-1,oFlashFX)
bos.sprite_index=spr_dastardly_seat bos.image_speed=0 bos.alarm[0]=-1;



treasureboss=instance_create_depth(0,0,-1,oCameoChar) with treasureboss
{anim=9999
specialdraw=function()
{
if specialcheck[0]=0
{

}
if specialcheck[0]=1
{
isDepth=0 depth=16777210

specialcheck[9]=lerp(specialcheck[9],0,0.02)

specialcheck[1]+=choose(-0.01,0.01)*sin(current_time) specialcheck[1]=clamp(specialcheck[1],-22,22)
specialcheck[2]+=choose(-0.01,0.01)*sin(current_time) specialcheck[2]=clamp(specialcheck[2],-22,22)
specialcheck[3]+=choose(-0.01,0.01)*sin(current_time) specialcheck[3]=clamp(specialcheck[3],-22,22)
specialcheck[4]+=choose(-0.01,0.01)*sin(current_time) specialcheck[4]=clamp(specialcheck[4],-22,22)

}
draw_sprite_ext(spr_treasure,0,11400,160-54+specialcheck[1]+specialcheck[9],1,1,specialcheck[1],c_white,1)
draw_sprite_ext(spr_treasure,1,11448,160-54+specialcheck[2]+specialcheck[9],1,1,specialcheck[2],c_white,1)

draw_sprite_ext(spr_treasure,2,11608,160-54+specialcheck[3]+specialcheck[9],1,1,specialcheck[3],c_white,1)
draw_sprite_ext(spr_treasure,3,11656,160-54+specialcheck[4]+specialcheck[9],1,1,specialcheck[4],c_white,1)
}

}


with oPlayer
{canControl=0 areaEntry=1
key_up=0 key_down=0 key_left=0
key_right=1 doubledash=0 dashing=0
}
}
else
timeline_position-=1
