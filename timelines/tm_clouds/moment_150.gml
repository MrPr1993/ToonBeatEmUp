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


	
with oPlayer {areaEntry=1 canControl=0 canmove=0 key_left=0 key_right=0 key_up=0 key_down=0 animFrame=0 anim=999999 image_index=0}


sandstorm=instance_create_depth(0,0,-1,oCameoChar)


with sandstorm {newscript=function()
{specialcheck[8]+=0.5
oControl.quakeFXTime=10
with oPlayer
{
weaponanim(weaponspr,weaponIndex,99999,99999,0,c_white)
if character=0 sprite_index=spr_viva_lookaround
if character=1 sprite_index=spr_hina_lookaround
if character=2 sprite_index=spr_bahati_lookaround
if character=3 sprite_index=spr_sofia_lookaround
}

if specialcheck[8]=52
{with oPlayer
	{	
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

if specialcheck[8]>52 {oPlayer.z-=32 with oPlayer sprite_index=BDanceSpr}


}
}	

}
else
timeline_position-=1;

