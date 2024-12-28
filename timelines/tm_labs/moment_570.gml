if escapeblimp.specialcheck[0]>=20
{
with escapeblimp
{PlaySoundNoStackPitch(snd_carengine,0.5) 
z=0
specialdraw=function()
{
draw_sprite(spr_escapeblimpbg,0,round(x),round(y+z))
draw_sprite(spr_escapeblimpbg,1,round(x),round((240*1)+y+z))
draw_sprite(spr_escapeblimpbg,2,round(x),round((240*2)+y+z))
draw_sprite(spr_escapeblimpbg,3,round(x),round((240*3)+y+z))
draw_sprite(spr_escapeblimpbg,4,round(x),round((240*4)+y+z))
}
	
newscript=function()
{x=oControl.camX-2
z-=0.25;
}
}
}
else
{
escapeblimp.specialcheck[0]+=1;
timeline_position-=1
}