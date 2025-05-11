/// @description Go To Boss


/// @description Hit the Quicksand
if oControl.allPlayersMove 
{timer_set(0)

oControl.quakeFXTime=10
	PlaySound(snd_woodbreakm)
with oPlayer {canControl=0 canmove=0 key_left=0 key_right=0 key_up=0 key_down=0 AnimFrame=0 anim=999999 image_index=0 sprite_index=qSandSpr}
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

if specialcheck[8]=26
{
audio_stop_all()	

PlaySound(snd_break)

with oPlayer
	{sentflying=0 canBounce=0
	fallholespr=instance_create_depth(x,y,-1,oFlashFX) with fallholespr
	{isDepth=0 depth=7777 alarm[0]=9999 image_speed=0 sprite_index=spr_swamphole}
	
	
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

if specialcheck[8]>=26
{

with oPlayer
{
shadowSpr=mask_none
if character=0 sprite_index=spr_viva_fallhole
if character=1 sprite_index=spr_hina_fallhole
if character=2 sprite_index=spr_bahati_fallhole
if character=3 sprite_index=spr_sofia_fallhole
frame_set(0,0,0.25)
frame_set(1,1,0.25)
frame_set(2,2,0.25)
frame_set(3,3,0.25) if AnimFrame>3.9 sprite_index=mask_none
frame_set(4,4,0.25)
}

}


}
}	

}
else
timeline_position-=1;






