if sandstorm.specialcheck[6]!=80
{
sandstorm.specialcheck[6]+=1;
if sandstorm.specialcheck[6]=30
{with blackfx {fadeSpd-=0.025 isfading=1} 
with sandstorm
{oControl.quakeFXTime=10 PlaySound(snd_hitgroundmetal)
with p1 { newscript=function() {z-=4 if z<-320 instance_destroy()}}
with p2 { newscript=function() {z-=4 if z<-320 instance_destroy()}}
with p3 { newscript=function() {z-=4 if z<-320 instance_destroy()}}
with p4 { newscript=function() {z-=4 if z<-320 instance_destroy()}}
}
}
with oPrince AnimFrame=0

timeline_position-=1;
}
else
{
with oPrince AnimFrame=1
with oControl
{
MusicFade=0 MusicFadeAdd=1
musicplaystart(msc_boss3)
}

with oPlayer
{image_index=0
if character=0 sprite_index=spr_viva_point
if character=1 sprite_index=spr_hina_point
if character=2 sprite_index=spr_bahati_point
if character=3 sprite_index=spr_sofia_point

}

with sandstorm
{AnimFrame=0 anim=9999 image_index=0
newscript=function() {
	frame_set(0,0,0.05) if AnimFrame=1
with oPlayer
{image_index=0
if character=0 sprite_index=spr_viva_wildtake
if character=1 sprite_index=spr_hina_wildtake
if character=2 sprite_index=spr_bahati_wildtake
if character=3 sprite_index=spr_sofia_wildtake
}
	frame_set(1,0,0.01)	 if AnimFrame=2
with oPlayer
{image_index=0
if character=0 sprite_index=spr_viva_princereact
if character=1 sprite_index=spr_hina_princereact
if character=2 sprite_index=spr_bahati_princereact
if character=3 sprite_index=spr_sofia_princereact
}
	
	frame_set(2,0,0.25)//  if AnimFrame=3 {PlaySound(DeathCry)}
	frame_set(3,1,0.25)
	frame_set(4,2,0.25) 
	frame_set(5,3,0.25) 
	frame_set(6,2,0.25) if AnimFrame=7 {AnimFrame=3 image_index=1 }

oPlayer.image_index=image_index
	

}
}

}