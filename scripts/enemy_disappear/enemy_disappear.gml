function enemy_disappear() {

	if disappearTime=0 instance_destroy()
	else
	{
	alarm[2]=2
	if visible=0 visible=1 else visible=0
	disappearTime-=1
	}




}
