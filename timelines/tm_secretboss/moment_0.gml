/// @description Stage Starting
//spawner_followset("WaveSet1",0,12008+1280,1)

spawner_followset("WaveSet1",0,1280+1280,1)

oControl.stageNext=rm_menu

oPlayer.x-=64

oPlayer.PlayerLife=0;

oControl.nopleasewait=0;

instance_create_depth(0,0,-1,oMonochromeBGFX)