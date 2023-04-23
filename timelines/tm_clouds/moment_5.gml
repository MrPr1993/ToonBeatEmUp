if oControl.specialcheck0!=0
{
oControl.specialcheck0-=1
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
dashing=2 animFrame=0
anim=21
oPlayer.hspeed=0 zSpeed=-12
}
}
