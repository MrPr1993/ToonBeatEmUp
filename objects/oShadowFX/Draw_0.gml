if instance_exists(oPlayer) with oPlayer if visible and hasShadow=1
{
if !place_meeting(x,y,oHeight32) and !place_meeting(x,y,oFallHole)

if place_meeting(x,y,oWaterFX)
{if z>waterMax
{
if carMode=0 waterhoverSpr=spr_waterhover else waterhoverSpr=spr_waterhovercar

draw_sprite(waterhoverSpr,0,x+((floorPosX[image_index]+waistPosX[image_index]+headPosX[image_index])*SpritePos)*image_xscale,y+trainz+2+waterMax)
}
else
if carMode=0
draw_sprite(shadowSpr,0,x+((floorPosX[image_index]+waistPosX[image_index]+headPosX[image_index])*SpritePos)*image_xscale,y+trainz+2+waterMax)
else
draw_sprite(spr_carshadow,0,x+((floorPosX[image_index]+waistPosX[image_index]+headPosX[image_index])*SpritePos)*image_xscale,y+trainz+2+waterMax)
}
else
draw_sprite(shadowSpr,0,x+((floorPosX[image_index]+waistPosX[image_index]+headPosX[image_index])*SpritePos)*image_xscale,y+trainz+2)

if place_meeting(x,y,oWaterFX)
{if z>waterMax
draw_sprite(waterhoverSpr,0,x+((floorPosX[image_index]+waistPosX[image_index]+headPosX[image_index])*SpritePos)*image_xscale,y+trainz+2+waterMax)
else
if carMode=0
draw_sprite(shadowSpr,0,x+((floorPosX[image_index]+waistPosX[image_index]+headPosX[image_index])*SpritePos)*image_xscale,y+trainz+2+waterMax)
else
draw_sprite(spr_carshadow,0,x+((floorPosX[image_index]+waistPosX[image_index]+headPosX[image_index])*SpritePos)*image_xscale,y+trainz+2+waterMax)
}

}

if instance_exists(oBossHazard) with oBossHazard if shadow!=-1
draw_sprite(shadow,0,x,y)

if instance_exists(oProjectile) with oProjectile if shadow!=-1
draw_sprite(shadow,0,x,y)


if instance_exists(parEnemy) with parEnemy if visible and hasShadow=1 and !place_meeting(x,y,oFallHole) and fallHole=0
and !place_meeting(x,y,oHeight32) if name!="NULL"
if place_meeting(x,y,oWaterFX)
{if z>waterMax
draw_sprite(waterhoverSpr,0,x+((floorPosX[image_index]+waistPosX[image_index]+headPosX[image_index])*SpritePos)*image_xscale,y+trainz+2+waterMax)
else
draw_sprite(shadowSpr,0,x+((floorPosX[image_index]+waistPosX[image_index]+headPosX[image_index])*SpritePos)*image_xscale,y+trainz+2+waterMax)
}
else
draw_sprite(shadowSpr,0,x+((floorPosX[image_index]+waistPosX[image_index]+headPosX[image_index])*SpritePos)*image_xscale,y+trainz+2)



if instance_exists(oBarrel) with oBarrel if visible and !place_meeting(x,y,oFallHole)
and z!=0 and fallHole=0
{
draw_sprite_ext(shadow,0,x,y+trainz+2,image_xscale,1,0,c_white,1)
}

if instance_exists(oShadowOnly) with oShadowOnly if visible and !place_meeting(x,y,oFallHole)
and fallHole=0
if shadow!=-1
draw_sprite(shadow,0,x,y+trainz+2)

if instance_exists(oCutHalfFX) with oCutHalfFX if visible and !place_meeting(x,y,oFallHole)
and fallHole=0
if shadow!=-1
draw_sprite(shadow,0,x+shadowXAdd*image_xscale,y+trainz+2)

if instance_exists(oFlashFX) with oFlashFX if FlashShadow=1
draw_sprite(shadow,0,x,y+(trainz*FlashShadowZ)+2)


if instance_exists(oPizza) with oPizza if visible and 
!place_meeting(x,y,oFallHole)
if place_meeting(x,y,oWaterFX)
{

	if z>waterMax
draw_sprite(spr_waterhover,0,x,y+trainz+2+waterMax)
else
draw_sprite(spr_shadow,0,x,y+trainz+2+waterMax)
}else
draw_sprite(spr_shadow,0,x,y+trainz+2+waterMax)



if instance_exists(oCrusher) with oCrusher if visible draw_sprite(spr_shadow,0,x,y+trainz+2)

if instance_exists(oCar) with oCar draw_sprite(spr_carshadow,0,x,y)

if instance_exists(oPlayer) with oPlayer
if carMode=1 and hasShadow=1 and fallHole=0 and ContinueMode=0
{if dead=0 and
!place_meeting(x,y,oFallHole)
if !place_meeting(x,y,oWaterFX)
draw_sprite(spr_carshadow,0,x,y)
}
if specialShow=1
{
draw_set_color(colorChange) draw_set_alpha(0.5)
draw_rectangle(__view_get( e__VW.XView, 0 )-4,__view_get( e__VW.YView, 0 )-4,__view_get( e__VW.XView, 0 )+800,__view_get( e__VW.YView, 0 )+600,false)
draw_set_color(c_white) draw_set_alpha(1)


if spotlightWidth<1 spotlightWidth+=0.1 else spotlightWidth=1
draw_sprite_ext(spr_spotlight,0,oPlayer.x,oPlayer.y,spotlightWidth,1,0,c_white,1)

if instance_exists(oPlayer) with oPlayer if visible and
!place_meeting(x,y,oFallHole) and fallHole=0
draw_sprite(spr_shadow,0,x,y+trainz+2)
}
else
{
spotlightWidth=0
}

