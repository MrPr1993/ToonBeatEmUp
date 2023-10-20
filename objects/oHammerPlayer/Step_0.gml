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
if oHammerGame.ready=1
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
{
PlaySound(snd_steal) 	PlaySound(voice2) breakresult=0
shaketime=10 altresult2Text="SCORE" altresult2=0	
	
strGo=1
	
strtotal=round(random(maxpoints))
slotY=0 slotSpd=32
	
}
if win=0
frame_set(3,6,0.01) else frame_set(3,5,0.01) 
if animFrame>3
{
if strGo=1
{
slotYdraw=lerp(slotYdraw,(slotY/maxpoints)*toweramount*32,1)

oHammerGame.screenY=lerp(oHammerGame.screenY,(slotY/maxpoints)*toweramount*32,1)
y=lerp(y,ystart+(slotY/maxpoints)*toweramount*32,1)
	
slotSpd+=1 slotSpd=clamp(slotSpd,-32,32) slotY+=slotSpd
if slotY>strtotal {strGo=0 altresult2=slotY slotSpd=1 lerp(slotYdraw,(slotY/maxpoints)*toweramount*32,1)}



}
else
{
slotSpd-=0.1 slotY+=slotSpd slotY=clamp(slotY,0,99999) slotYdraw=slotY

	if controlNO=1	oHammerGame.p1Over=1
		if controlNO=2	oHammerGame.p2Over=1
			if controlNO=3	oHammerGame.p3Over=1
				if controlNO=4	oHammerGame.p4Over=1
}
}
frame_set(4,7,0.25)
if win=0 frame_set(5,9,0) else frame_set(5,8,0)
}