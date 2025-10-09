if oControl.specialcheck0!=0
{
oControl.specialcheck0-=1

if global.StageRecord[5]=1
if oControl.specialcheck0=22
{
oControl.quakeFXTime=10

balloon=instance_create_depth(90,260,-1,oCameoChar)
with balloon
{
	
anim=9999 shadow=-1 sprite_index=spr_hotairballoon6 specialcheck[1]=260

newscript=function()
{

if specialcheck[1]>1
if specialcheck[9]=0 
{
specialcheck[9]=4
var dusty=0;
repeat(8)
{
dust_make(x+choose(-40,0,40),y+33,-48,lengthdir_x(2,45*dusty),lengthdir_y(1,45*dusty),0)
dustmk.current_pal=3; dustmk.my_pal_sprite=spr_dustpal dustmk.sprite_index=spr_dustmid
dusty+=1;	
}	

}  else specialcheck[9]-=1;
}

specialdraw=function()
{//if specialcheck[1]<=-160 z-=8 else specialcheck[1]-=8
	specialcheck[1]-=8 if specialcheck[1]<=0 z-=8 specialcheck[1]=clamp(specialcheck[1],0,260)
	 if z<=-640 instance_destroy();
draw_sprite_clip_ext(sprite_index,image_index,round(x),round(z+y+260+specialcheck[1]),1,1,image_blend,image_alpha, 
	x-(sprite_width*2)*image_xscale,+0,x+(sprite_width*2)*image_xscale,+260-specialcheck[1])
}

}
}

oControl.alarm[0]=60
timeline_position-=1
}
else
{
oPlayer.visible=1
oEnemySpawner.roomHSpd=0


with oPlayer
{canmove=0 x=90 y=232 z=2



	
var dusty=0;	
repeat(8)
{
dust_make(x,y,0,lengthdir_x(2,45*dusty),lengthdir_y(1,45*dusty),0)
dustmk.current_pal=3; dustmk.my_pal_sprite=spr_dustpal
dusty+=1;	
}	

key_right=0 visible=1
dashing=2 AnimFrame=0
anim=21
oPlayer.hspeed=0 zSpeed=-12
}

if instance_number(oPlayer)!=1
with oPlayer y=200-16+16*controlNO

}
