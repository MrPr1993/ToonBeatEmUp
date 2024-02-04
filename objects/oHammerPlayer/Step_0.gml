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
{if meter>128 {meter=128 meterSpd=-4}}
else {if meter<0 {meter=0 meterSpd=4}}

if character=0 	{weaponanim(weaponspr,weaponIndex,-12,-75,180*image_xscale,weaponcolor)}
if character=1 	{weaponanim(weaponspr,weaponIndex,-12,-75,180*image_xscale,weaponcolor)}
if character=2 	{weaponanim(weaponspr,weaponIndex,-12,-75,180*image_xscale,weaponcolor)}
if character=3 	{weaponanim(weaponspr,weaponIndex,-12,-75,180*image_xscale,weaponcolor)}


frame_set(0,0,0.1)
frame_set(1,0,0.1) if animFrame>2-0.1 animFrame=0

if key_attack
{animFrame=0 anim=10 win=0
	//if meter=clamp(meter,2+16,78-16) win=1 else win=0
	

	
	PlaySound(voice1)
	}
}

///SWING
if anim=10
{
	
	if character=0
	{
	if image_index=clamp(image_index,0,0.9)
	{weaponanim(weaponspr,weaponIndex,-12,-75,180*image_xscale,weaponcolor)}
	if image_index=clamp(image_index,1,1.9)
	{weaponanim(weaponspr,weaponIndex,-35,-61,210*image_xscale,weaponcolor)}
	if image_index=clamp(image_index,2,2.9)
	{weaponanim(weaponspr,weaponIndex,21,-35,0*image_xscale,weaponcolor)}
	}
	if character=1
	{
	if image_index=clamp(image_index,0,0.9)
	{weaponanim(weaponspr,weaponIndex,-12,-75,180*image_xscale,weaponcolor)}
	if image_index=clamp(image_index,1,1.9)
	{weaponanim(weaponspr,weaponIndex,-35,-61,210*image_xscale,weaponcolor)}
	if image_index=clamp(image_index,2,2.9)
	{weaponanim(weaponspr,weaponIndex,21,-35,0*image_xscale,weaponcolor)}
	}
	if character=2
	{
	if image_index=clamp(image_index,0,0.9)
	{weaponanim(weaponspr,weaponIndex,-12,-75,180*image_xscale,weaponcolor)}
	if image_index=clamp(image_index,1,1.9)
	{weaponanim(weaponspr,weaponIndex,-35,-61,210*image_xscale,weaponcolor)}
	if image_index=clamp(image_index,2,2.9)
	{weaponanim(weaponspr,weaponIndex,21,-35,0*image_xscale,weaponcolor)}
	}
	if character=3
	{
	if image_index=clamp(image_index,0,0.9)
	{weaponanim(weaponspr,weaponIndex,-12,-75,180*image_xscale,weaponcolor)}
	if image_index=clamp(image_index,1,1.9)
	{weaponanim(weaponspr,weaponIndex,-35,-61,210*image_xscale,weaponcolor)}
	if image_index=clamp(image_index,2,2.9)
	{weaponanim(weaponspr,weaponIndex,21,-35,0*image_xscale,weaponcolor)}
	}

frame_set(0,1,0.05)
frame_set(1,0,0.5)
frame_set(2,2,0.25) if animFrame=3
{
PlaySound(snd_steal) 	PlaySound(voice2) breakresult=0
shaketime=10 altresult2Text="SCORE" altresult2=0	
	
if win {altresult2Text="PERFECT" altresult2=10000}
	
strGo=1
	
strtotal=((meter*(32))/(toweramount*32))*(toweramount*32)


slotY=0 slotSpd=32
	
}
if win=0
frame_set(3,2,0.01) else frame_set(3,2,0.01) 
if animFrame>3
{
if strGo=1
{
slotYdraw=(slotY/maxpoints)*(toweramount*64)

oHammerGame.screenY=lerp(oHammerGame.screenY,(slotY/maxpoints)*toweramount*64,1)
y=lerp(y,ystart+(slotY/maxpoints)*toweramount*64,1)
	
slotSpd+=1 slotSpd=clamp(slotSpd,-32,32) slotY+=slotSpd
if slotY>(strtotal)-64 or slotY>(toweramount*64) {
	
	if slotY>-32+(toweramount*64) win=1
	strGo=0 altresult2=slotY slotSpd=1 lerp(slotYdraw,(slotY/maxpoints)*(toweramount*64),1)}

}
else
{
slotSpd-=0.01 slotY+=0 slotY=clamp(slotY,0,99999) 

//slotYdraw=lerp(slotYdraw,0,0.1)

	if controlNO=1	oHammerGame.p1Over=1
		if controlNO=2	oHammerGame.p2Over=1
			if controlNO=3	oHammerGame.p3Over=1
				if controlNO=4	oHammerGame.p4Over=1
}
}
frame_set(4,7,0.25)
if win=0 frame_set(5,9,0) else frame_set(5,8,0)
}