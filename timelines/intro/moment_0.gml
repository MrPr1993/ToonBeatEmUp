//layer_hspeed("BGcity",-0.5)

//scene2=instance_create_depth(0,0,-1,oFlashFX);
//with scene2 {alarm[0]=-1 isDepth=0 animEnd=0 image_speed=0 sprite_index=spr_cutscene1a} newsShow=0
instance_create_depth(0,0,-1,oTextBox)

oControl.circlerepos=120;

newsBox=0
newsText=0

scene1=instance_create_depth(0,0,0,oFlashFX);
with scene1 {alarm[0]=-1 isDepth=0 animEnd=0 image_speed=0 sprite_index=spr_introfilm}

PlaySound(snd_film1)

arr=instance_create_depth(160,120,-1,oAlphaFadeFX) 
with arr
{
sprite_index=spr_introarrow
image_speed=0 image_alpha=1
monochrome=0 image_angle=90
SpinMode=1
SpinSpd=-4.5
}

//timeline_position=2500 arr.x=99999 mono=arr

