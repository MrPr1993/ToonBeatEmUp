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
if oControl.allPlayersMove
{timer_set(0)

PlaySound(snd_shrink)
	
with oPlayer {canControl=0 canBounce=0 canmove=0 key_left=0 key_right=0 key_up=0 key_down=0 animFrame=0 anim=0}
//with oShadowFX visible^=1

sandstorm=instance_create_depth(0,0,-1,oCameoChar)
with oControl MusicFade=1

with sandstorm {z=-240 ground=0 specialcheck[6]=0
	specialcheck[7]=0
p1=instance_create_depth(oControl.p1.x,oControl.p1.y+1,-1,oCameoChar) with p1 {sprite_index=spr_mermaidcage z=-240 anim=9999}
p2=instance_create_depth(oControl.p2.x,oControl.p2.y+1,-1,oCameoChar) with p2 {sprite_index=spr_mermaidcage z=-240 anim=9999}
p3=instance_create_depth(oControl.p3.x,oControl.p3.y+1,-1,oCameoChar) with p3 {sprite_index=spr_mermaidcage z=-240 anim=9999}
p4=instance_create_depth(oControl.p4.x,oControl.p4.y+1,-1,oCameoChar) with p4 {sprite_index=spr_mermaidcage z=-240 anim=9999}

	
	newscript=function()
{specialcheck[8]+=0.5
p1.z=z p2.z=z p3.z=z p4.z=z

specialcheck[7]+=0.45

if ground=0
{
z+=specialcheck[7]

if z>0 {z=0 ground=1 specialcheck[6]=1
	oControl.quakeFXTime=10 PlaySound(snd_hitgroundmetal)
	}
}

with oPlayer
{
weaponanim(weaponspr,weaponIndex,99999,99999,0,c_white)
areaEntry=1
}

if specialcheck[6]=1
{specialcheck[6]=2
	with oPlayer
	{
	event_user(11)
	anim=99999 sprite_index=ThrownSpr image_index=24
	
	dust_make(x,y,0,1,0,0)
dust_make(x,y,0,-1,0,0)
dust_make(x,y,0,0,-0.5,0)
dust_make(x,y,0,0,0.5,0)
dust_make(x,y,0,1,-0.5,0)
dust_make(x,y,0,1,0.5,0)
dust_make(x,y,0,-1,-0.5,0)
dust_make(x,y,0,-1,0.5,0)

fakeself=instance_create_depth(x,y,-1,oFlashFX) with fakeself
{haspal=1 image_speed=0 alarm[0]=400 image_index=24} fakeself.sprite_index=sprite_index
fakeself.my_pal_sprite=my_pal_sprite fakeself.current_pal=current_pal

x=6432 y=200
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