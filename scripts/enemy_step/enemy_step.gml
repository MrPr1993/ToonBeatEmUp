function enemy_step() {
	if activeCheck=1
	if __view_get( e__VW.XView, 0 )>x-320-128 {act=1 visible=1 activeCheck=0}

	if activeCheck=2
	if __view_get( e__VW.XView, 0 )>x+128 {act=1 visible=1 activeCheck=0}

	if ground=1
	thrownAtk=0

	if hurt=0 grabbed=0
	if AtkTime!=0 and canmove=1 AtkTime-=1 else AtkTime=90
	hpSet=hp*4
	if anim=0 if hurt=1 {hurt=0 canmove=1}

	character_physics()

	current_pal=wrap(current_pal,0,pal_swap_get_pal_count(my_pal_sprite)-1);

	if oControl.betatest=1 ///This is for testing
	{
	if keyboard_check(vk_control)
	{
	if(keyboard_check_pressed(vk_up))
	    current_pal++;
	if(keyboard_check_pressed(vk_down))
	    current_pal--;

    
	}

	if keyboard_check_pressed(vk_tab)
	if canmove {

	if x>targetEnemy.x image_xscale=-1 else image_xscale=1

	canmove=0 animFrame=0 anim=10}
	}

	if enemyai!=-1 script_execute(enemyai)

	if enemycontrol!=-1 script_execute(enemycontrol)




}
