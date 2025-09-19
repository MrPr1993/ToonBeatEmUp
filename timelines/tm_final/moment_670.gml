/// @description Scene Switch
if instance_exists(oDastardly)
{
timeline_position-=1;
}
else
{
oControl.pauseBuffer=2
	
with treasureboss {specialcheck[0]=1 specialcheck[9]=-1480}
scenepart=instance_create_depth(0,0,-1,oCameoChar) with scenepart
{isDepth=0 depth=-6000 anim=9999 y=140 x=160

specialdraw=function()
{


AnimFrame+=1;
///Going
if AnimFrame<=120
{
image_index=0 if AnimFrame=120 {
	flashFX(x+oControl.camX,y+2+32,0,spr_explosion4,0,0.25,30,1,1,c_white,1)
with fx {isDepth=0 depth=-6005}	
	
	image_index=1 PlaySound(snd_explosion) oControl.quakeFXTime=20}
}
else
if AnimFrame<=240
{
//x+=abs(0.01*(AnimFrame-240))
y+=0.25
image_index+=0.25 if image_index=3 image_index=1

if AnimFrame=240
{
bigboom=instance_create_depth(0,0,-1,oCameoChar) with bigboom
{anim=9999 isDepth=0 depth=-6010
	
	y=6000
image_alpha=0
specialdraw=function()
{
if image_alpha<1.5 image_alpha+=0.02

draw_set_alpha(image_alpha) draw_set_color(c_white)
draw_rectangle(__view_get( e__VW.XView, 0)-4,-666,__view_get( e__VW.XView, 0)+444,777,false)
draw_set_alpha(1)
}

}
}
}
else if AnimFrame<=320
{
//x+=abs(0.01*(AnimFrame-240))
y+=0.25
if AnimFrame=320
{
	with bigboom
{anim=9999 isDepth=0 depth=-6010
	
	with oPlayer {visible=0
		x=oControl.camX+48	y=200
	}
	
if instance_number(oPlayer)!=1
with oPlayer
{
if instance_number(oPlayer)=2 
{if controlNO=1 {y=200} if controlNO=2 {x=oControl.camX+320-48 image_xscale=-1 y=200}}
else
{
{if controlNO=1 {y=200} if controlNO=2 {x=oControl.camX+320-48 image_xscale=-1 y=200}}
{if controlNO=3 {y=232} if controlNO=4 {x=oControl.camX+320-48 image_xscale=-1 y=232}}
}


}
	
	y=6010
image_alpha=1.5
specialdraw=function()
{
if image_alpha>=0 image_alpha-=0.04 else instance_destroy()

draw_set_alpha(image_alpha) draw_set_color(c_white)
draw_rectangle(__view_get( e__VW.XView, 0)-4,-666,__view_get( e__VW.XView, 0)+444,777,false)
draw_set_alpha(1)
}

}}

}
else if AnimFrame<=330
{

} else 
{
layer_set_visible("TileV1",0)
layer_set_visible("TileV2",0)
layer_set_visible("TileV3",0)
layer_set_visible("TileV4",0)
layer_set_visible("FinalPhase",1)	

if instance_exists(oPizza) with oPizza instance_destroy()
with oPlayer
{
spawnID=-1;
weaponspawn=-1;
weaponspr=-1;
}

skybg=layer_background_get_id(layer_get_id("BG"));
layer_background_sprite(skybg,bg_sky6b)

instance_destroy()
}

if AnimFrame<=320
{
draw_sprite_ext(bg_sky6,0,-4+oControl.camX,-140,100,4,0,c_white,1)
draw_sprite(bg_sky6,0,-4+oControl.camX,0)
draw_sprite(bg_sky6,0,-4+oControl.camX+144,0)
draw_sprite(bg_sky6,0,-4+oControl.camX+144*2,0)
draw_sprite(spr_blimpscene,image_index,x+oControl.camX,y)
}
}

}


}