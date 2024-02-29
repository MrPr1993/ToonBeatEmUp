function enemy_ambusher(_x, _y, _enemy,_side,_leaveDir,_offset,_timer,_retreats,_weak,_animFrame,_anim) {
	var myDepth = object_get_depth( _enemy );
	
	
	
	_enmake=instance_create_depth( _x, _y, -1, _enemy );
	
	
if _side=1 {_enmake.x=oControl.camX-_offset _enmake.image_xscale=1 }
if _side=-1 {_enmake.x=oControl.camX+320+_offset _enmake.image_xscale=-1 }
		

	if _weak {_enmake.hp=0.01 _enmake.maxhp=0.01}

_enmake.alarm[1]=_timer; //20

_enmake.leaveDir=_leaveDir

_enmake.leaveMode=_retreats //1; - 2 makes them stay

_enmake.enterAnim=_anim;

_enmake.canAttack=7 

return _enmake;

}