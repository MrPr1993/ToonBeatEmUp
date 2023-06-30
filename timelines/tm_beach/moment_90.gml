/// @description Octopus Fight

if __view_get( e__VW.XView, 0 )>=4560-2-320-320
{
if specialSet8=90
{specialSet8=0 oControl.MusicFade=0 oControl.MusicFadeAdd=1
	
with cast 
{
dust_make(x-16,y+1,z,-2,0,0)
dust_make(x,y+1,z,0,0,0)
dust_make(x+16,y+1,z,2,0,0)

dust_make(x-16,y+1,z-32,-2,0,-0.5)
dust_make(x,y+1,z-32,0,0,-0.5)
dust_make(x+16,y+1,z-32,2,0,-0.5)

dust_make(x-16,y+1,z-64,-2,0,-1)
dust_make(x,y+1,z-64,0,0,-1)
dust_make(x+16,y+1,z-64,2,0,-1)

instance_destroy()
}
musicplaystart(msc_boss)
en1=instance_create(4082,178,oOctopus)
with en1
{immune=1 anim=66 canmove=0}

with oPlayer {canControl=1}

oControl.bossID=oOctopus
}
else
{
if specialSet8=0
{
	with oEnemySpawner specialscript=function()
	{{if MaxY>240 MaxY-=1
		else {MaxY=240 specialscript=-1;}
	}}
}

if specialSet8=30
with cast
{PlaySound(snd_steal) shaketime=999
}

with oPlayer
{
canControl=0
automoveX=4082-64 automoveY=178+64 automove=1
}

oControl.MusicFade=1 oControl.MusicFadeAdd=1
specialSet8+=1
timeline_position-=1
}

}
else
{
timeline_position-=1
}

