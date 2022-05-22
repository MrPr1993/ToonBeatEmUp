/// @description Insert description here
// You can write your code in this editor
if SplashSnd!=-1 PlaySoundNoStack(SplashSnd)
watsplash=instance_create_depth(x+fxXadd,y+fxYadd,depth,oFlashFX) watsplash.isDepth=0 watsplash.depth=depth-1
watsplash.z=z watsplash.image_speed=0.25 watsplash.sprite_index=spawnSprFX watsplash.image_index=shellSprMax
watsplash.alarm[0]=0 
waterSplash=10; 



