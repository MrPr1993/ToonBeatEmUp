/// @description Insert description here
// You can write your code in this editor
shade=shd_television

menuSelect=0
StarY=0
StarSpace=0
selectStar=0
AreYouSure=0
Sure=0
controlNO=9
canControl=0
controller_setup()
canControl=1

stagePause=oControl.stagePause

PlaySoundNoStack(snd_picked)

tvshade_set()

surface_resize(application_surface,320,240)
surface_save(application_surface,"screenshot")
surface_resize(application_surface,320,240)
surface_free(application_surface)

sprite_replace(spr_photoplaceholder,"screenshot",0,false,false,0,0)

instance_deactivate_all(true)


pauseBuffer=10

commandL[30]=0
language_check()