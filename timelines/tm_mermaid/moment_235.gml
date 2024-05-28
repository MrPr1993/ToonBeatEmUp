///@description Plane Area
specialSet8+=1


if specialSet8<30
timeline_position-=1
else
{specialSet8=0
with oControl
{
stageEndFX=0
stageIntro=1
oEnemySpawner.roomHSpd=0
oEnemySpawner.roomMove=0
oEnemySpawner.MaxX=6592
oEnemySpawner.YView=0
camMove=1
//MusicFade=0 MusicFadeAdd=1
//musicplaystart(msc_boss3)
//alarm[0]=180
}
with oEnemySpawner cammoveUP=1
boss=instance_create_depth(6430,154,-1,oPrince)
with boss {canmove=0 anim=100}

//PlaySound(snd_fall)


with oPlayer
{hspeed=0
	
	 image_xscale=1
canBounce=0
areaEntry=0 z=-400 
//canControl=1
canmove=0
	ground=0
	zSpeed=0
	sentflying=0
	AnimFrame=0
	anim=9999
	thrownDMG=0
z=0

}

blackfx=instance_create_depth(oControl.camX-4,-4,-1,oAlphaFadeFX) with blackfx
{image_alpha=0.75 depth=-1000 sprite_index=spr_whitecol image_blend=c_black
	image_xscale=500 image_yscale=500 fadeSpd=0

}


with sandstorm
{
newscript=function() {}
specialcheck[6]=0
	specialcheck[7]=0
	
with p1 {x=oControl.p1.x y=oControl.p1.y+1 sprite_index=spr_mermaidcage z=0 anim=9999}
with p2 {x=oControl.p2.x y=oControl.p2.y+1 sprite_index=spr_mermaidcage z=0 anim=9999}
with p3 {x=oControl.p3.x y=oControl.p3.y+1 sprite_index=spr_mermaidcage z=0 anim=9999}
with p4 {x=oControl.p4.x y=oControl.p4.y+1 sprite_index=spr_mermaidcage z=0 anim=9999}
	
}


spawner_followset("WaveSet1",0,6592,1)
}
