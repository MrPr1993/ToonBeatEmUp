/// @description Insert description here
// You can write your code in this editor

oControl.minigameroom=1
 with oControl minigameID=5;

bulltime+=1 if bulltime=60 {oControl.quakeFXTime=120 PlaySound(snd_bull)}

if (p1Over=1 and p2Over=1 and p3Over=1 and p4Over=1)
if stageClear=0
{

stageClear=1
gameplaying=0 
with oControl 
{alarm[6]=80
resulttext1=""
altresult1=0
resulttext2="BONUS"
AltScore2=1
resulttext3=""
altresult3=0
stageCspr=spr_bonusresults
altresult2a=p1.altresult2
altresult2b=p2.altresult2
altresult2c=p3.altresult2
altresult2d=p4.altresult2
time=0
AltScore3=-2
}

}

if stageClear=1
bullx+=8

if gameplaying=1 
{
layer_x("BGfloor",-rundist)
rundist+=8

obstacleX-=8 if obstacleX<32 {obstacleX=640+choose(0,120,240)
	
PlaySound(snd_break2)
	
dor1=instance_create_depth(32,201,0,oBarrel) with dor1  //87
{sprite_index=spr_bullfence image_index=1 z=-2
image_xscale=1 solid=false hit=1 ground=0 zSpeed=-8 hspeed=2 mask_index=mask_none
sentflying=2 image_index=0 alarm[0]=2 shadow=mask_none}	
	
	}

with oBullPlayer {if x=clamp(x,oBullGame.obstacleX-8,oBullGame.obstacleX+8)
	if ground {AnimFrame=0 anim=1}	
	}

if rundist>runmax {with oBullPlayer if anim!=10
{win=1
	} gameplaying=0 stageClear=1

with oControl 
{alarm[6]=160
resulttext1=""
altresult1=0
resulttext2="BONUS"
AltScore2=1
resulttext3=""
altresult3=0
stageCspr=spr_bonusresults
altresult2a=p1.altresult2
altresult2b=p2.altresult2
altresult2c=p3.altresult2
altresult2d=p4.altresult2
time=0
AltScore3=-2
}

}

}

oControl.stagePause=1