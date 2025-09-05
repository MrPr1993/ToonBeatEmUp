/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
controller_setup()

if shaketime!=0
{shaketime-=1
if shakefrom=-1
{if shake!=-1 shake-=1 else shake=1}
else
{if shake!=1 shake+=1 else shake=-1}
}
else shake=0

///
if anim=0
{image_xscale=1 sprite_index=runSpr
	if oBullGame.ready=1
	x-=1
if oBullGame.ready=1
{
meter+=1 runpos+=8
}


frame_set(0,0,0.25)
frame_set(1,1,0.25)
frame_set(2,0,0.25)
frame_set(3,3,0.25)

if AnimFrame>4-0.1 AnimFrame=0

z+=spdZ if ground=0 {spdZ+=0.45 if z>0 {ground=1 spdZ=0 z=0}} else {z=0}

if key_jump {PlaySoundNoStack(snd_jump)
if ground {ground=0 spdZ=-8}
}

if key_attack
{x+=12 x=clamp(x,0,320-32)
	PlaySoundNoStack(snd_steal)
	//if meter=clamp(meter,2+16,78-16) win=1 else win=0
	//PlaySound(voice1)
}



if x<64 {AnimFrame=0 anim=10 win=0 z=0 ground=1 PlaySound(snd_hit)}

}


///hurt
if anim=1
{
if AnimFrame=0 {PlaySound(snd_hit) PlaySound(voice2)}
	
image_index=0 z+=spdZ if ground=0 {spdZ+=0.45 if z>0 {ground=1 spdZ=0 z=0}} else {z=0}
sprite_index=ThrownSpr
AnimFrame+=0.1 shaketime=2
if AnimFrame>3 {AnimFrame=0 anim=0}
x-=1
if x<64 {AnimFrame=0 anim=10 win=0 z=0 ground=1}
}

if win=1 if anim!=10 {AnimFrame=0 anim=10}

////Intro
if anim=5
{
if AnimFrame=0 sprite_index=standSpr
frame_set(0,0,0.02) if AnimFrame=1 {sprite_index=wildtakeSpr image_xscale=-1}
frame_set(1,0,0.1)
}


///Win/Lose
if anim=10
{
	if oBullGame.stageClear=0
	x-=8
if win=0 sprite_index=flatSpr
	
breakresult=0
		
		altresult2Text="DISTANCE" altresult2=oBullGame.rundist

if win=1 {altresult2Text="PERFECT" altresult2=10000  with oControl minigameIDwin=1;
if AnimFrame=0 {ground=0 spdZ=-8 AnimFrame=1}	
if ground=0 sprite_index=jumpSpr
if spdZ>=0 {sprite_index=hangSpr spdZ=0}

z+=spdZ if ground=0 {spdZ+=0.45 if z>0 {ground=1 spdZ=0 z=0}} else {z=0}

	
}
	
	if controlNO=1	oBullGame.p1Over=1
		if controlNO=2	oBullGame.p2Over=1
			if controlNO=3	oBullGame.p3Over=1
				if controlNO=4	oBullGame.p4Over=1
}