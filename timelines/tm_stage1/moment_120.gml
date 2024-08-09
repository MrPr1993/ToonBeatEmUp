oControl.quakeFXTime=5

oPlayer.visible=1
oEnemySpawner.roomHSpd=0


with oPlayer
{canmove=0 x=480
key_right=1
dashing=2 AnimFrame=0
anim=21
oPlayer.hspeed=0
if controlNO!=1 x-=20
specialanimscript=function()
{
if !ground
{if controlNO!=1 if x<592 {}
if controlNO=2 {y+=2 x+=0}
if controlNO=3 {y+=4 x+=1}
if controlNO=4 {y+=6 x+=2}
}
else
if anim!=21
specialanimscript=-1;
}

if controlNO=1
{
dummy=instance_create_depth(x,y,depth,oEnemy1) with dummy
{
hp=0 mask=mask_none image_xscale=-1 HitType=1 hud_show() event_user(0)

dust_make(x,y,-32,4,0,-4)
dust_make(x,y,-32,4,0,0)
dust_make(x,y,-32,4,0,4)

dust_make(x,y,-56,5,-2,-4)
dust_make(x,y,-56,5,-2,0)
dust_make(x,y,-56,5,-2,4)

dust_make(x,y,-8,5,2,-4)
dust_make(x,y,-8,5,2,0)
dust_make(x,y,-8,5,2,4)

}
}
}

with dorr
{
dor1=instance_create_depth(x,y,0,oBarrel) with dor1 
{sprite_index=spr_introdoor image_index=1
image_xscale=1 solid=false hit=1 ground=0 zSpeed=-8 hspeed=1 mask_index=mask_none
sentflying=2 image_index=1 alarm[0]=2}

dor2=instance_create_depth(x,y,0,oBarrel) with dor2
{sprite_index=spr_introdoor
image_xscale=1 solid=false hit=1 ground=0 zSpeed=-8 hspeed=1 mask_index=mask_none
sentflying=2 image_index=2 alarm[0]=2}

instance_destroy()
}

spawner_followset("WaveSet1",0,1248,1)

PlaySound(snd_break)



