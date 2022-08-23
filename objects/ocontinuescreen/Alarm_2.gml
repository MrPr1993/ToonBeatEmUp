/// @description Insert description here
// You can write your code in this editor
if stageClear=0
{
if continueCountdown!=0
{alarm[2]=90
if continueCountdown=6 or continueCountdown=3 or continueCountdown=0 PlaySound(snd_train)
continueCountdown-=1
}
else
{audio_stop_all() PlaySound(snd_train) trainRan=1
PlaySound(snd_explosion) gameOverFlash=1 deathGameOver=1 GoldShow=1
rips=instance_create_depth(140,160,-1,oFlashFX) with rips
{alarm[0]=60 image_xscale=0.5 image_yscale=0.5 image_speed=0 sprite_index=spr_bigstarfx
scaleAddMode=1 scaleAddX=0.1 scaleAddY=0.1 rotAddMode=1 rotAdd=0.45 hspeed=-4 vspeed=-2
alphaAddMode=1 alphaAdd=-0.02
}
rips=instance_create_depth(140,160,-1,oFlashFX) with rips
{alarm[0]=60 image_xscale=0.25 image_yscale=0.25 image_speed=0 sprite_index=spr_bigstarfx
scaleAddMode=1 scaleAddX=0.1 scaleAddY=0.1 rotAddMode=1 rotAdd=0.45 hspeed=3 vspeed=-2.5
image_blend=c_red
alphaAddMode=1 alphaAdd=-0.02
}
rips=instance_create_depth(140,160,-1,oFlashFX) with rips
{alarm[0]=60 image_xscale=0.5 image_yscale=0.5 image_speed=0 sprite_index=spr_bigstarfx
scaleAddMode=1 scaleAddX=0.1 scaleAddY=0.1 rotAddMode=1 rotAdd=0.80 hspeed=-2 vspeed=1.5
alphaAddMode=1 alphaAdd=-0.02
}
rips=instance_create_depth(140,160,-1,oFlashFX) with rips
{alarm[0]=60 image_xscale=0.5 image_yscale=0.5 image_speed=0 sprite_index=spr_bigstarfx
scaleAddMode=1 scaleAddX=0.1 scaleAddY=0.1 rotAddMode=1 rotAdd=0.80 hspeed=2 vspeed=1
image_blend=c_yellow
alphaAddMode=1 alphaAdd=-0.02
}
alarm[4]=90 
}
}