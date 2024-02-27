function enemy_ambusher(_x, _y, _enemy,_side,_leaveDir,_offset,_timer,_retreats,_weak,_animFrame,_anim) {
	var myDepth = object_get_depth( _enemy );
	return instance_create_depth( _x, _y, myDepth, _enemy );
	
	
if _side=1 {_enemy.x=oControl.camX-_offset _enemy.image_xscale=1 }
	
	if _weak {_enemy.hp=0.01 _enemy.maxhp=0.01}

_enemy.alarm[1]=_timer; //20

_enemy.leaveDir=_leaveDir

_enemy.leaveMode=_retreats //1; - 2 makes them stay

_enemy.canAttack5Move=_anim;

_enemy.canAttack=7 
_enemy.leaveMode=1 


}