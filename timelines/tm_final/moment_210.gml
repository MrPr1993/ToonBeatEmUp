if oControl.allPlayersEdge and oControl.allPlayersMove
{
timer_set(0)	
//11528

bos=instance_create_depth(11528,160,-1,oFlashFX)
bos.sprite_index=spr_dastardly_seat bos.image_speed=0 bos.alarm[0]=-1;



treasureboss=instance_create_depth(0,0,-1,oCameoChar) with treasureboss
{anim=9999 sprite_index=spr_hina_flames image_speed=0.5 specialcheck[7]=1
specialdraw=function()
{
if specialcheck[0]=0
{
if specialcheck[7]=0
{
specialcheck[1]=lerp(specialcheck[1],-45,0.1)
specialcheck[2]=lerp(specialcheck[2],-50,0.1)
specialcheck[3]=lerp(specialcheck[3],-50,0.1)
specialcheck[4]=lerp(specialcheck[4],-45,0.1)
}
}
if specialcheck[0]=1
{var zadd=0; specialcheck[7]=1
	draw_sprite_tiled(bg_sky6b,0,0,0)
draw_sprite_tiled(bg_sky6c,0,0,specialcheck[5])
	specialcheck[5]-=16
	if instance_exists(oTrainFXSpot) zadd=oTrainFXSpot.Train1Y
for (var ia=0; ia<8; ia++)
{
draw_sprite(spr_hina_flames,image_index,oControl.camX-8+64*ia,160+zadd)
}

draw_sprite_ext(spr_whitecol,0,oControl.camX-8+64,-16+zadd,100,1,0,c_black,1)

isDepth=0 depth=16777210

specialcheck[9]=lerp(specialcheck[9],0,0.02)



specialcheck[1]+=choose(-0.5,0.5)*sin(current_time) specialcheck[1]=clamp(specialcheck[1],-22,22)
specialcheck[2]+=choose(-0.5,0.5)*sin(current_time) specialcheck[2]=clamp(specialcheck[2],-22,22)
specialcheck[3]+=choose(-0.5,0.5)*sin(current_time) specialcheck[3]=clamp(specialcheck[3],-22,22)
specialcheck[4]+=choose(-0.5,0.5)*sin(current_time) specialcheck[4]=clamp(specialcheck[4],-22,22)

}

if instance_exists(oDastardly)
{
if oDastardly.anim=100 and oDastardly.sprite_index=spr_dastardly_attack4
{
specialcheck[7]=0 sprite_index=spr_treasureb image_speed=0.25

specialcheck[8]+=0.25 if specialcheck[8]=1
{specialcheck[8]=0
var repflash=0; var repX=0; var repY=0;
repeat(4)
{
switch(repflash)
{
case 0: repX=11400 repY=(specialcheck[1]*2) break;
case 1: repX=11448 repY=(specialcheck[2]*2) break;
case 2: repX=11608 repY=(specialcheck[3]*2) break;
case 3: repX=11656 repY=(specialcheck[4]*2) break;
}
flsh=instance_create_depth(repX,160+repY,-1,oFlashFXgo)
flsh.sprite_index=spr_treasurec flsh.z=-54 flsh.image_speed=0.25
flsh.targetX=oDastardly.x flsh.targetY=oDastardly.y+1 flsh.targetZ=oDastardly.z-60
flsh.animEnd=0 flsh.alarm[0]=60
repflash+=1
}

}

}
}
///Shock effects for Dastardly
if specialcheck[7]=0
{
draw_sprite_ext(spr_treasureb,image_index,11400,160-54+(specialcheck[1]*2)+specialcheck[9],1,1,specialcheck[1]*specialcheck[7],c_white,1)
draw_sprite_ext(spr_treasureb,image_index,11448,160-54+(specialcheck[2]*2)+specialcheck[9],1,1,specialcheck[2]*specialcheck[7],c_white,1)

draw_sprite_ext(spr_treasureb,image_index,11608,160-54+(specialcheck[3]*2)+specialcheck[9],1,1,specialcheck[3]*specialcheck[7],c_white,1)
draw_sprite_ext(spr_treasureb,image_index,11656,160-54+(specialcheck[4]*2)+specialcheck[9],1,1,specialcheck[4]*specialcheck[7],c_white,1)


}

///Treasures
draw_sprite_ext(spr_treasure,0,11400,160-54+(specialcheck[1]*2)+specialcheck[9],1,1,specialcheck[1]*specialcheck[7],c_white,1)
draw_sprite_ext(spr_treasure,1,11448,160-54+(specialcheck[2]*2)+specialcheck[9],1,1,specialcheck[2]*specialcheck[7],c_white,1)

draw_sprite_ext(spr_treasure,2,11608,160-54+(specialcheck[3]*2)+specialcheck[9],1,1,specialcheck[3]*specialcheck[7],c_white,1)
draw_sprite_ext(spr_treasure,3,11656,160-54+(specialcheck[4]*2)+specialcheck[9],1,1,specialcheck[4]*specialcheck[7],c_white,1)
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
