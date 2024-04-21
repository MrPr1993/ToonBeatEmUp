/// @description Insert description here
// You can write your code in this editor


hit=0
posX=x
posY=y+8
z=0
height=80
specialtimes[9]=0

spawnspr=spr_pianodrop
spawnmask=mask_piano
spawnshadow=spr_carshadow


func=function()
{
flashFX(x,y+1,z-32,spr_hitflash,0,0.5,10,1,1,c_white,1)	
hit=1
trap=instance_create_depth(posX,posY,-1,oChandelier) with trap
{act=1 
	under=1 shake=1 alarm[0]=2 PlaySound(snd_hit) z=-240
	
	}
trap.sprite_index=spawnspr trap.mask_index=spawnmask 
	trap.shadow=spawnshadow
}

drawfunc=function()
{if hit specialtimes[0]-=14
for (var i=0;i<round(16); i++)
{draw_sprite(spr_pianodropperR,0,x,y+specialtimes[0]-32-32*i)}

draw_self()
}


