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

if anim=0 or anim=1
{windx=x
if key_attack {if oSingGame.songdir=0 {audio_stop_sound(voice2) PlaySound(voice1) singhp+=3 miss=0} else {audio_stop_sound(voice2) PlaySound(voice1) singhp-=6 miss=1} extraframe=0 AnimFrame=0 anim=1}
if key_jump {if oSingGame.songdir=0 {audio_stop_sound(voice1) PlaySound(voice2) singhp-=6 miss=1} else {audio_stop_sound(voice1) PlaySound(voice2) singhp+=3 miss=0} extraframe=0 AnimFrame=0 anim=1}

singhp=clamp(singhp,0,100)

if singhp=100
{AnimFrame=0 anim=10 extraframe=0
	with oSingPlayer {win=0 AnimFrame=0 anim=10}
	win=1	
	audio_stop_sound(voice1) audio_stop_sound(voice2)
	PlaySound(voice3)
	}
}


///
if anim=0
{
if oSingGame.ready=1
meter+=meterSpd
if meterSpd=4
{if meter>76 meterSpd=-4}
else {if meter<4 meterSpd=4}

frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,0,0.1)
frame_set(3,2,0.1)

if AnimFrame>4-0.1 AnimFrame=0


}

///Sing
if anim=1
{
extraframe+=0.25 if extraframe=2-0.25 extraframe=0

frame_set(0,3+frameadd+extraframe,0.05)
if AnimFrame>0.9 {AnimFrame=0 anim=0}
}

///SWING
if anim=10
{
extraframe+=0.25 if extraframe=2-0.25 extraframe=0

if win=0
{
frame_set(0,4,0.25)
frame_set(1,7,0.01)
frame_set(2,7,0.1)
}
else
{
frame_set(0,3,0.25)
frame_set(1,9,0.01)
frame_set(2,9+extraframe,0.1)
if AnimFrame=clamp(AnimFrame,2.5,3) oControl.quakeFXTime=10
}

if AnimFrame=3
{if win=0
	{breakresult=0 windx=x
		
		shaketime=10 altresult2Text="NO BONUS" altresult2=0}
	else
	{ //snd_viva13
 oSingGame.resulttext1="BONUS"

{PlaySound(snd_break) 
			altresult2Text="PERFECT" altresult2=10000
windowon=0
		//	with oFlashFX isDepth=0 oFlashFX.depth=depth-1
			oSingPlayer.hitsource=x
			with oSingPlayer if win=0
			{
			if x>hitsource hspeed=8 else hspeed=-8 vspeed=2
			}
			
			}
		
		}
}
if win=0
frame_set(3,8,0.01) else frame_set(3,5,0.01) 
if AnimFrame>4 
{
	if controlNO=1	oSingGame.p1Over=1
		if controlNO=2	oSingGame.p2Over=1
			if controlNO=3	oSingGame.p3Over=1
				if controlNO=4	oSingGame.p4Over=1
}
frame_set(4,6,0.25)
if win=0 frame_set(5,8,0) else frame_set(5,11,0)
}