if boss.AnimFrame>4
with oControl 
{MusicFade=0 MusicFadeAdd=1
musicplaystart(msc_boss4)

with oPlayer
{
canmove=0 anim=99999 image_index=0 AnimFrame=0

specialanimscript=function()
{
if character=0 sprite_index=spr_viva_eyetake
if character=1 sprite_index=spr_hina_eyetake
if character=2 sprite_index=spr_bahati_eyetake
if character=3 sprite_index=spr_sofia_eyetake

frame_set(0,0,0.25)
frame_set(1,1,0.25)
frame_set(2,2,0.25) if AnimFrame>=3 {AnimFrame=1 image_index=1}
}


}

}
else {timeline_position-=1; specialSet8+=1;}
