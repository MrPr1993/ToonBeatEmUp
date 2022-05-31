oEnemySpawner.roomMove=0
oEnemySpawner.roomHSpd=0
with oControl
spawner_followset("WaveSet1",0,__view_get( e__VW.XView, 0 ),1)


PlaySound(snd_thunder) oControl.quakeFXTime=30
flashFX(__view_get( e__VW.XView, 0 )+random_range(32,320-32),random_range(160,230),0,spr_lightingbolt,0,0.5,0,1,1,c_white,0)

cat1=instance_create_depth(__view_get( e__VW.XView, 0 )+320-24, 165,-1,oFlashFX) with cat1
{sprite_index=spr_catman_hit image_speed=0 image_index=22 alarm[0]=0 image_xscale=-1 FlashShadow=1
flashFX(x,y,z,spr_lightingbolt,0,0.5,40,1,1,c_white,0) z=-240 zSpeed=2 lerpslow=0.05
}
cat2=instance_create_depth(__view_get( e__VW.XView, 0 )+320-24+8, 165+24,-1,oFlashFX) with cat2
{sprite_index=spr_catman_hit image_speed=0 image_index=22 alarm[0]=0 image_xscale=-1 FlashShadow=1
flashFX(x,y,z,spr_lightingbolt,0,0.5,40,1,1,c_white,0)  z=-240 zSpeed=2 lerpslow=0.05
	}
cat3=instance_create_depth(__view_get( e__VW.XView, 0 )+320-24+16, 165+48,-1,oFlashFX) with cat3
{sprite_index=spr_catman_hit image_speed=0 image_index=22 alarm[0]=0 image_xscale=-1 FlashShadow=1
flashFX(x,y,z,spr_lightingbolt,0,0.5,40,1,1,c_white,0)  z=-240 zSpeed=2 lerpslow=0.05
	}
