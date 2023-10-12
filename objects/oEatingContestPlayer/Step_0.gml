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
{
if oEatingContestGame.ready=1
meter+=meterSpd
if meterSpd=4
{if meter>76 meterSpd=-4}
else {if meter<4 meterSpd=4}

frame_set(0,0,0.1)
frame_set(1,1,0.1) if animFrame>2-0.1 animFrame=0

if key_attack
{animFrame=0 anim=10
	if meter=clamp(meter,2+16,78-16) win=1 else win=0
	

	
	PlaySound(voice1)
	}
}

///SWING
if anim=10
{
frame_set(0,2,0.25)
frame_set(1,3,0.05)
frame_set(2,4,0.25) if animFrame=3
{if win=0
	{PlaySound(snd_steal) 	PlaySound(voice2) breakresult=0
		
		shaketime=10 altresult2Text="NO BONUS" altresult2=0}
	else
	{ //snd_viva13
 oEatingContestGame.resulttext1="BONUS"

if meter=clamp(meter,2+32,78-32) {PlaySound(snd_explosion) brickbreak=3  oControl.quakeFXTime=10
			altresult2Text="PERFECT" altresult2=10000
			dust_make(x+40,240+8,0,0,0,0)
			dust_make(x+40,240+8-16,0,0,0,0)
			dust_make(x+40,240+8-32,0,0,0,0)
			dust_make(x+40,240+8,-48,0,0,0)
			dust_make(x+40,240+8,-64,0,0,0)
			with oFlashFX isDepth=0 oFlashFX.depth=depth-1
			}
	else
if meter=clamp(meter,2+24,78-24) {PlaySound(snd_hit) brickbreak=2 	oControl.quakeFXTime=5
			altresult2Text="GOOD" altresult2=5000
			dust_make(x+40,240+8-32,0,0,0,0)
			dust_make(x+40,240+8,-48,0,0,0)
			dust_make(x+40,240+8,-64,0,0,0)
			with oFlashFX isDepth=0 oFlashFX.depth=depth-1
			}	
else
{PlaySound(snd_steal) brickbreak=1 		 oControl.quakeFXTime=2
			dust_make(x+40,240+8,-64,0,0,0)
			with oFlashFX isDepth=0 oFlashFX.depth=depth-1
			altresult2Text="AVERAGE" altresult2=2500
			}
			
	
	
		
		}
}
if win=0
frame_set(3,6,0.01) else frame_set(3,5,0.01) 
if animFrame>4 
{
	if controlNO=1	oEatingContestGame.p1Over=1
		if controlNO=2	oEatingContestGame.p2Over=1
			if controlNO=3	oEatingContestGame.p3Over=1
				if controlNO=4	oEatingContestGame.p4Over=1
}
frame_set(4,7,0.25)
if win=0 frame_set(5,9,0) else frame_set(5,8,0)
}