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
if oBrickBreakGame.ready=1
meter+=meterSpd
if meterSpd=4
{if meter>76 meterSpd=-4}
else {if meter<4 meterSpd=4}

frame_set(0,0,0.1)
frame_set(1,1,0.1) if AnimFrame>2-0.1 AnimFrame=0

if key_attack
{AnimFrame=0 anim=10
	if meter=clamp(meter,2+16,78-16) win=1 else win=0
	

	
	PlaySound(voice1)
	}
}

///SWING
if anim=10
{
var _t1="NO BONUS"
var _t2="BONUS"
var _t3="PERFECT"
var _t4="GOOD"
var _t5="AVERAGE"

switch(global.Language)
{
case 1:
var _t1="NO BONUS"
var _t2="BONUS"
var _t3="PERFECTO"
var _t4="BIEN"
var _t5="MEDIOCRE"
break;
case 2:
var _t1="SEM BÔNUS"
var _t2="BÔNUS"
var _t3="PERFEITO"
var _t4="BOM"
var _t5="MEDIOCRE"
break;
}

frame_set(0,2,0.25)
frame_set(1,3,0.05)
frame_set(2,4,0.25) if AnimFrame=3
{if win=0
	{PlaySound(snd_steal) 	PlaySound(voice2) breakresult=0
		
		shaketime=10 altresult2Text=_t1 altresult2=0}
	else
	{ //snd_viva13
 oBrickBreakGame.resulttext1=_t2

if meter=clamp(meter,2+32,78-32) {PlaySound(snd_explosion) brickbreak=3  oControl.quakeFXTime=10
	 with oControl minigameIDwin=1;
			altresult2Text=_t3 altresult2=10000
			dust_make(x+40,240+8,0,0,0,0)
			dust_make(x+40,240+8-16,0,0,0,0)
			dust_make(x+40,240+8-32,0,0,0,0)
			dust_make(x+40,240+8,-48,0,0,0)
			dust_make(x+40,240+8,-64,0,0,0)
			with oFlashFX isDepth=0 oFlashFX.depth=depth-1
			}
	else
if meter=clamp(meter,2+24,78-24) {PlaySound(snd_hit) brickbreak=2 	oControl.quakeFXTime=5
			altresult2Text=_t4 altresult2=5000
			dust_make(x+40,240+8-32,0,0,0,0)
			dust_make(x+40,240+8,-48,0,0,0)
			dust_make(x+40,240+8,-64,0,0,0)
			with oFlashFX isDepth=0 oFlashFX.depth=depth-1
			}	
else
{PlaySound(snd_steal) brickbreak=1 		 oControl.quakeFXTime=2
			dust_make(x+40,240+8,-64,0,0,0)
			with oFlashFX isDepth=0 oFlashFX.depth=depth-1
			altresult2Text=_t5 altresult2=2500
			}
			
	
	
		
		}
}
if win=0
frame_set(3,6,0.01) else frame_set(3,5,0.01) 
if AnimFrame>4 
{
	if controlNO=1	oBrickBreakGame.p1Over=1
		if controlNO=2	oBrickBreakGame.p2Over=1
			if controlNO=3	oBrickBreakGame.p3Over=1
				if controlNO=4	oBrickBreakGame.p4Over=1
}
frame_set(4,7,0.25)
if win=0 frame_set(5,9,0) else frame_set(5,8,0)
}

if playerNO=1 oControl.altresult2a=altresult2
if playerNO=2 oControl.altresult2b=altresult2
if playerNO=3 oControl.altresult2c=altresult2
if playerNO=4 oControl.altresult2d=altresult2