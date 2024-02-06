/// @description Spot for Boss Teleportation

//if __view_get( e__VW.XView, 0 )>=6256-2
//{

//boss=instance_create(__view_get( e__VW.XView, 0)+160-64,228,oPrince)
//musicplaystart(msc_boss4)
//oControl.bossID=oPrince


//}
//else
//timeline_position-=1

/// @description Go To Boss


/// @description Hit the Quicksand
if oPlayer.ground and oPlayer.canmove
{timer_set(0)

oControl.quakeFXTime=10
	
with oPlayer {canControl=0 canmove=0 key_left=0 key_right=0 key_up=0 key_down=0 animFrame=0 anim=999999 image_index=0 sprite_index=qSandSpr}
with oShadowFX visible^=1
quicksnd=instance_create_depth(__view_get( e__VW.XView, 0 ),0,-1,oWaterFX) with quicksnd
{z=0 image_xscale=88888 image_yscale=77777}
quicksnd2=instance_create_depth(__view_get( e__VW.XView, 0 ),0,-1,oTrainFXSpot) with quicksnd2
{z=0 image_xscale=88888 image_yscale=77777}

sandstorm=instance_create_depth(0,0,-1,oCameoChar)


with sandstorm {newscript=function()
{specialcheck[8]+=0.5

with oPlayer
{
weaponanim(weaponspr,weaponIndex,99999,99999,0,c_white)
areaEntry=1
}

if specialcheck[8]=52
{with oPlayer
	{sprite_index=mask_none
	
	dust_make(x,y,0,1,0,0)
dust_make(x,y,0,-1,0,0)
dust_make(x,y,0,0,-0.5,0)
dust_make(x,y,0,0,0.5,0)
dust_make(x,y,0,1,-0.5,0)
dust_make(x,y,0,1,0.5,0)
dust_make(x,y,0,-1,-0.5,0)
dust_make(x,y,0,-1,0.5,0)
	}

}

}
}	

}
else
timeline_position-=1;






if x=-9999999999999
{
if oPlayer.x>__view_get( e__VW.XView, 0 )+320-24
{
timer_set(0)	


bos=instance_create_depth(9248,144,-1,oFlashFX)
bos.sprite_index=spr_witch_stand bos.image_speed=0 bos.alarm[0]=-1;

with oPlayer
{canControl=0 areaEntry=1
key_up=0 key_down=0 key_left=0
key_right=1 doubledash=0 dashing=0
}
}
else
timeline_position-=1
}