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
//if oHammerGame.ready=1 meter+=meterSpd if meterSpd=0.04 {if meter>1 {meter=1 meterSpd=-0.04}} else {if meter<0 {meter=0 meterSpd=0.04}}

//if character=0 	{weaponanim(weaponspr,weaponIndex,-12,-75,180*image_xscale,weaponcolor)}
//if character=1 	{weaponanim(weaponspr,weaponIndex,-12,-75,180*image_xscale,weaponcolor)}
//if character=2 	{weaponanim(weaponspr,weaponIndex,-12,-75,180*image_xscale,weaponcolor)}
//if character=3 	{weaponanim(weaponspr,weaponIndex,-12,-75,180*image_xscale,weaponcolor)}




if oHammerGame.ready=1
if key_attack {meter+=0.9/2} meter-=0.45/32 meter=clamp(meter,0,1)

if meter<0.25 frameadd=3 else if meter<0.5 frameadd=0 else if meter<0.75 frameadd=0 else frameadd=1
image_index=frameadd
//{AnimFrame=0 anim=10 win=0	PlaySound(voice1)}
}

	if character=0
	{
	if image_index=clamp(image_index,0,0.9)
	{weaponanim(weaponspr,weaponIndex,-12,-75,180*image_xscale,weaponcolor)}
	if image_index=clamp(image_index,1,1.9)
	{weaponanim(weaponspr,weaponIndex,-35,-61,210*image_xscale,weaponcolor)}
	if image_index=clamp(image_index,2,2.9)
	{weaponanim(weaponspr,weaponIndex,21,-35,0*image_xscale,weaponcolor)}
	if image_index=clamp(image_index,3,3.9)
	weaponanim(weaponspr,weaponIndex,9,-31,45*image_xscale,weaponcolor)
	}
	if character=1
	{
	if image_index=clamp(image_index,0,0.9)
	{weaponanim(weaponspr,weaponIndex,-12,-75,180*image_xscale,weaponcolor)}
	if image_index=clamp(image_index,1,1.9)
	{weaponanim(weaponspr,weaponIndex,-35,-61,210*image_xscale,weaponcolor)}
	if image_index=clamp(image_index,2,2.9)
	{weaponanim(weaponspr,weaponIndex,21,-35,0*image_xscale,weaponcolor)}
	if image_index=clamp(image_index,3,3.9)
	weaponanim(weaponspr,weaponIndex,9,-31,45*image_xscale,weaponcolor)
	}
	if character=2
	{
	if image_index=clamp(image_index,0,0.9)
	{weaponanim(weaponspr,weaponIndex,-12,-75,180*image_xscale,weaponcolor)}
	if image_index=clamp(image_index,1,1.9)
	{weaponanim(weaponspr,weaponIndex,-35,-61,210*image_xscale,weaponcolor)}
	if image_index=clamp(image_index,2,2.9)
	{weaponanim(weaponspr,weaponIndex,21,-35,0*image_xscale,weaponcolor)}
	if image_index=clamp(image_index,3,3.9)
	weaponanim(weaponspr,weaponIndex,9,-31,45*image_xscale,weaponcolor)
	}
	if character=3
	{
	if image_index=clamp(image_index,0,0.9)
	{weaponanim(weaponspr,weaponIndex,-12,-75,180*image_xscale,weaponcolor)}
	if image_index=clamp(image_index,1,1.9)
	{weaponanim(weaponspr,weaponIndex,-35,-61,210*image_xscale,weaponcolor)}
	if image_index=clamp(image_index,2,2.9)
	{weaponanim(weaponspr,weaponIndex,21,-35,0*image_xscale,weaponcolor)}
	
		if AnimFrame=clamp(AnimFrame,3,3.9)
	{weaponanim(weaponspr,weaponIndex,9,-31,45*image_xscale,weaponcolor)}
	}

///SWING
if anim=10
{



frame_set(0,image_index,0.05)
frame_set(1,0,0.5)
frame_set(2,2,0.25) if AnimFrame=3
{
PlaySoundNoStack(snd_hit) 	PlaySound(voice2) breakresult=0
shaketime=10 altresult2Text="SCORE" altresult2=0	
	
////It's near impossible to get a perfect win this for the feat so...
with oControl minigameIDwin=1;
	
if win { altresult2Text="PERFECT" altresult2=10000}
	
strGo=1
	var towermax=(toweramount*32);
	
strtotal=0.1+meter*maxpoints//((meter*towermax)/maxpoints)

slotY=0 slotSpd=32
	
}
if win=0
frame_set(3,2,0.01) else frame_set(3,2,0.01) 
if AnimFrame>3
{
if strGo=1
{var source1=slotY/maxpoints;
slotYdraw=(source1)*(toweramount*32)

oHammerGame.screenY=lerp(oHammerGame.screenY,(source1)*toweramount*32,1)
y=lerp(y,ystart+(source1)*toweramount*32,1)
	
slotSpd+=1 slotSpd=clamp(slotSpd,-32,32) slotY+=slotSpd
if slotY>(((strtotal)/maxpoints))*(maxpoints)// or slotY>(toweramount*32)*toweramount
{
	
	if strtotal>=maxpoints {win=1 oControl.quakeFXTime=10
		PlaySoundNoStack(snd_explosion)
		flashFX(x+40,y-32-slotYdraw,0,spr_explosion,0,0.5,40,1,1,c_white,1)
			
		}
	strGo=0 altresult2=slotY altresult2=clamp(altresult2,0,maxpoints) slotSpd=1 lerp(slotYdraw,(source1)*(toweramount*32),1)}

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