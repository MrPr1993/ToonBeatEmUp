/// @description Insert description here
// You can write your code in this editor
shade=shd_television

menuSelect=0
StarY=0
StarSpace=0
selectStar=0
canControl=1
AreYouSure=0
Sure=0

controller_setup()

stagePause=oControl.stagePause

PlaySoundNoStack(snd_picked)

tvshade_set()


instance_deactivate_all(true)

