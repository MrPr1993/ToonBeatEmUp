/// @description Hit the Quicksand
if oControl.allPlayersMove
{timer_set(0)
	
oControl.quakeFXTime=10

PlaySound(snd_quicksand)

with oPlayer event_user(11)
	
qsand1=instance_create_depth(__view_get( e__VW.XView, 0 )+0,176,-1,oFlashFX) with qsand1
{sprite_index=spr_quicksand image_speed=0.5 alarm[0]=999999 animEnd=0}
qsand2=instance_create_depth(__view_get( e__VW.XView, 0 )+0,176,-1,oFlashFX) with qsand2
{sprite_index=spr_quicksand image_speed=0.5 alarm[0]=999999 animEnd=0 x+=320 image_xscale=-1}

	
with oPlayer {canControl=0 canmove=0 key_left=0 key_right=0 key_up=0 key_down=0 animFrame=0 anim=999999 image_index=0 sprite_index=qSandSpr}
with oShadowFX visible^=1
quicksnd=instance_create_depth(__view_get( e__VW.XView, 0 ),0,-1,oWaterFX) with quicksnd
{z=0 image_xscale=88888 image_yscale=77777}
quicksnd2=instance_create_depth(__view_get( e__VW.XView, 0 ),0,-1,oTrainFXSpot) with quicksnd2
{z=0 image_xscale=88888 image_yscale=77777}

with sandstorm {newscript=function()
{x-=6 oPlayer.y+=0.1
image_alpha=lerp(image_alpha,0.6,0.005)
oTrainFXSpot.Train1Y+=0.5;
oWaterFX.z-=0.5;


with oPlayer
{if areaEntry=0 {PlaySound(DeathCry)}
weaponanim(weaponspr,weaponIndex,99999,99999,0,c_white)
areaEntry=1 
if oTrainFXSpot.Train1Y<45
dust_make(x+choose(-random(16),random(16)),y+1,z-oTrainFXSpot.Train1Y,0,0,0)
}

if oTrainFXSpot.Train1Y>104/4
{specialcheck[8]+=0.5 if specialcheck[8]>2-0.5 specialcheck[8]=0 oPlayer.image_index=specialcheck[8]+3}
else 
{specialcheck[8]+=0.25  if specialcheck[8]>3-0.25 specialcheck[8]=0 oPlayer.image_index=specialcheck[8]}


}
}	

}
else
timeline_position-=1;