///Baddy Appear
audio_stop_all()

PlaySoundNoStack(snd_swing)

bomb=instance_create_depth(420+32,176+16,depth,oBomb) bomb.z=0-70 
bomb.spdX=-3 bomb.ground=0 bomb.spdZ=-8 bomb.trigger=1

bomb=instance_create_depth(420+32,176-32+16,depth,oBomb) bomb.z=0-80
bomb.spdX=-3.6 bomb.ground=0 bomb.spdZ=-7 bomb.trigger=1

bomb=instance_create_depth(420+32,176+32+16,depth,oBomb) bomb.z=0-75
bomb.spdX=-4 bomb.ground=0 bomb.spdZ=-6 bomb.trigger=1

with oBomb
triggerTime=15

SceneSpeedX=2



