/// @description Fakeout

if oControl.allPlayersMove
{
oControl.stageclearfakeout=1
oPlayer.canControl=0
oPlayer.areaEntry=1

with oDastardly {canmove=0 AnimFrame=0 anim=101 specialanim=0}



with oPlayer
{key_right=0 doubledash=0 dashing=0 specialtimes[0]=0
	
specialanimscript=function()
{
if instance_exists(oDastardly)
{
if oDastardly.anim=101
{
if oDastardly.specialanim=1
if ground
if specialtimes[0]=0 {specialtimes[0]=1 zSpeed=-4 ground=0 event_user(11)}
	
if oDastardly.x>x image_xscale=1 else image_xscale=-1
if oDastardly.specialanim=1 or oDastardly.specialanim=2
{
	
anim=9999 
if ground
{image_index=0 switch(character)
{
case 0: sprite_index=spr_viva_point break;
case 1: sprite_index=spr_hina_point break;
case 2: sprite_index=spr_bahati_point break;
case 3: sprite_index=spr_sofia_point break;
}}
else
{image_index=1 
switch(character)
{
case 0: sprite_index=spr_viva_wildtake5 break;
case 1: sprite_index=spr_hina_wildtake5 break;
case 2: sprite_index=spr_bahati_wildtake5 break;
case 3: sprite_index=spr_sofia_wildtake5 break;
}
}
}
if oDastardly.specialanim=3
{anim=9999 image_index=0
switch(character)
{
case 0: sprite_index=spr_viva_wildtake break;
case 1: sprite_index=spr_hina_wildtake break;
case 2: sprite_index=spr_bahati_wildtake break;
case 3: sprite_index=spr_sofia_wildtake break;
}

}
}
}
else
{
specialanimscript=-1;
}

}
}
with oControl event_user(9)
}
else
{
timeline_position-=1
}

