PlaySound(snd_thunder) oControl.quakeFXTime=30
flashFX(oControl.camX+random_range(32,320-32),oControl.camY+random_range(160,230),0,spr_lightingbolt,0,0.5,10,1,1,c_white,0)

oEnemySpawner.roomMove=1
oEnemySpawner.roomHSpd=0.5
with oControl
spawner_followset("WaveSet1",0,3480+320+320,1)
