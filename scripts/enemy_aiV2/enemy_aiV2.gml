/// @description /AI settings
function enemy_aiV2()
{
harmed=noone
	if reFocusTime=0
	{
	if targetEnemy=-1
	{
	

var _list = ds_list_create();
var _num = collision_rectangle_list(oControl.camX, oControl.camY, oControl.camX+320,oControl.camY+240, oPlayer, false,true, _list, true);
if (_num > 0)
{for (var i = 0; i < _num; ++i;)
{harmed=_list[| i];
if harmed!=noone
if harmed.hp>0 and harmed.ContinueMode=0
{
targetEnemy=harmed.id
}
}
}
ds_list_destroy(_list);	
	
	}
	////////AI SETUP
	{		if leaveMode=1 
		
		{if (canAttack!=7 and canAttack!=8) { canAttack=8}
		if hurt=1 canAttack=8
		}
if leaveMode=1 or leaveMode=2 ///This is just simple parts for them entering or leaving the scene
{if canmove=1
		{
			
	if canAttack=7 ////Run On-Screen
	if leaveMode=1 or leaveMode=2
	{RunAnimRecharge=1
		{if image_xscale=-1 {anim=1 key_left=-1 key_right=0} else {anim=1 key_right=1 key_left=0}}
		anim=1 dashing=2 doubledash=0.2 RunAnimRecharge=1 
	key_up=0 key_down=0
	}
	
	if canAttack=8 ////Run Away
	if leaveMode=1 or leaveMode=2
	{if leaveMode=2 {leaveMode=0 canAttack=choose(1,2) alarm[1]=2 exit;}
	image_xscale=leaveDir RunAnimRecharge=1
	if x!=clamp(x,oControl.camX-sprite_get_width(mask_index)/2,oControl.camX+320+sprite_get_width(mask_index)/2)
instance_destroy()
		{if image_xscale=-1 {anim=1 key_left=-1 key_right=0} else {anim=1 key_right=1 key_left=0}}
	anim=1 dashing=2 doubledash=0.2 RunAnimRecharge=1
	if leaveAnim!=-1 {canmove=0 AnimFrame=0 anim=leaveAnim}
	key_up=0 key_down=0
	}}
	}
else	////DOWN BELOW is where you gotta tweak the enemy AI - ignore the above
	if targetEnemy!=-1
	{
	if instance_exists(targetEnemy)
	{
	targetX=targetEnemy.x
	targetY=targetEnemy.y
	} else {
	if instance_number(oEnemy1)!=1
	fight_target(oEnemy1)
	else {targetEnemy=-1 exit;}
	}
	
	if targetEnemy.object_index=oPlayer
	if targetEnemy.hp<=0 or targetEnemy.ContinueMode!=0
	{targetEnemy=-1; exit;}

    var dx = targetX - x;
    var dy = targetY - y;
    var dist = point_distance(x, y, targetX, targetY);

    // spacing ranges (beat em up feel)
    var idealX = rangeX;
    var idealY = rangeY;

var dx = targetX - x;
var dy = targetY - y;
var dist = abs(dx);
var lane = abs(dy);

// tuning values
var desiredDist = rangeX;     // horizontal spacing
var laneRange   = rangeY * 0.5; // vertical alignment
var crowdPush   = 12;          // anti-crowd force


	if hurt=0 and canmove=1 and oControl.ignore=0 and targetEnemy.dead=0
	{
	{
	thrownDMG=0

	///Set up who they're targeting to


	y=clamp(y,0,__view_get( e__VW.YView, 0 )+240)

	////Dash if they are off-screen
	var checkRun= x<oControl.camX-64 or x>oControl.camX+320+64
	or canAttack=5
	or distance_to_object(targetEnemy)>90
	if checkRun
	{dashing=2*canRun doubledash=0.2*canRun RunAnimRecharge=1}
	else
	{dashing=0 doubledash=0 RunAnimRecharge-=0.1}

	if canAttack=0 ///Stand back from opponent
	{anim=1
	{dashing=0 doubledash=0}

	if x=clamp(x,targetX-rangeX-12-sprite_get_width(mask_index)/2,targetX+rangeX+12+sprite_get_width(mask_index)/2)
	{if x<targetX {anim=1 key_left=-1 key_right=0} else {anim=1 key_right=1 key_left=0}}

	if y!=clamp(y,targetY-rangeY/2,targetY+rangeY/2)
	if y!=clamp(y,targetY,targetY)
	{
		if y!=clamp(y,targetY-rangeY,targetY+rangeY)
	{if y>targetY {anim=1 key_up=1 key_down=0} else {anim=1 key_down=1 key_up=0}
	

		if image_xscale=1 {anim=1 key_left=-1 key_right=0} else {anim=1 key_right=1 key_left=0}
	
	}
	else {key_up=0 key_down=0}
	}
	else {key_up=0 key_down=0}
	
				if place_meeting(x,y,targetEnemy)
			{
			//if image_xscale=1 {canAttack=0 anim=1 key_left=-1 key_right=0} else {canAttack=0 anim=1 key_right=1 key_left=0}	
			//if canAttack!=0 {key_left=0 key_right=0 anim=0 canAttack=0 alarm[1]=8}
			canAttack=53
			}
	}

	if canAttack=1 ///Try to get to the opponent
	{
if (dx > 0) image_xscale = 1;
else image_xscale = -1;

if (lane > laneRange)
{
    if (dy > 0) key_down = 1;
    else key_up = 1;
}

var tooClose = dist < desiredDist - 8;
var tooFar   = dist > desiredDist + sprite_get_width(mask_index);
var inRange  = !tooClose && !tooFar;

if (tooFar)
{
    // approach player
    if (dx > 0) key_right = 1;
    else key_left = -1;
}
else if (tooClose)
{
    // back away while still facing player
    if (dx > 0) key_left = -1;
    else key_right = 1;
}
	if x=clamp(x,targetX-32,targetX+32) and y=clamp(y,targetY-6,targetY+6)
	if canAttack!=0 {canAttack=0 ai_attack()}
	}

	if canAttack=2 ///Stop
	 {anim=0 key_left=0 key_right=0 key_up=0 key_down=0 key_attack=0

 
	 if x<oControl.camX+16 {canAttack=51 if targetEnemy.y<y canAttack=52 key_right=1}
	 else if x>oControl.camX+320-16 {canAttack=51 if targetEnemy.y<y canAttack=52 key_left=1}
	 }



	 if canAttack=3 ///Forwards
	{
	{if image_xscale=-1 {anim=1 key_left=-1 key_right=0} else {anim=1 key_right=1 key_left=0}}
	anim=1
	if y!=clamp(y,targetY-rangeY,targetY+rangeY)
	if y!=clamp(y,targetY,targetY)
	{if y>targetY {key_up=0 key_down=0} else {key_down=0 key_up=0}}
	else {key_up=0 key_down=0}
	}
	}

	 if canAttack=4 ///Go Forwards
	if y=clamp(y,targetY-1,targetY+1)
	{
	if x>targetX {anim=1 key_left=-1 key_right=0} else {anim=1 key_right=1 key_left=0}
	}
	
	 if canAttack=51 or canAttack=52///Move On-Screen, Move Up/Down
	 {key_down=0 key_up=0 if canAttack=51 key_up=1 else key_down=1 dashing=2
	anim=1
	{if image_xscale=-1 {key_left=-1 key_right=0} else {key_right=1 key_left=0}}
	{key_up=0 key_down=0}
	 
	 if (x>oControl.camX-sprite_get_width(mask_index)/2 and x<oControl.camX+320+sprite_get_width(mask_index)/2)
	 {alarm[1]=2 canAttack=choose(0,1,2,3,4)}
	 }
	 
	 if canAttack=53 ////Stand back from enemy
	 {
if (dx > 0) image_xscale = 1;
else image_xscale = -1;

if (lane > laneRange)
{
    if (dy > 0) key_down = 1;
    else key_up = 1;
}

var tooClose = dist < desiredDist - 8;
var tooFar   = dist > desiredDist + sprite_get_width(mask_index);
var inRange  = !tooClose && !tooFar;

if (tooFar)
{
    // approach player
    if (dx > 0) key_right = 1;
    else key_left = -1;
}
else if (tooClose)
{
    // back away while still facing player
    if (dx > 0) key_left = -1;
    else key_right = 1;
}
	if x=clamp(x,targetX-32,targetX+32) and y=clamp(y,targetY-6,targetY+6)
	if canAttack!=0 {canAttack=0 ai_attack()}
	 }
	 


	 if canAttack=5 ///Move On-Screen - ignore this one
	{anim=1
	{if image_xscale=-1 {key_left=-1 key_right=0} else {key_right=1 key_left=0}}
	{key_up=0 key_down=0}
	}

	if canAttack=6 or canAttack=60 ///Stand Still until player gets close
	{if canAttack=6 anim=0 if canAttack=60 anim=1
	{dashing=0 doubledash=0}
	if x=clamp(x,targetX-idleRange,targetX+idleRange)
	{isIdle=0 alarm[1]=2 canAttack=choose(0,1,2,3,4)}
	}
	
	if canAttack=0 or canAttack=1 or canAttack=3 or canAttack=4  ////Move apart from other enemies
	{
	var closeally=instance_nearest(x,y,oEnemy1)
	if instance_exists(closeally) if place_meeting(x,y,closeally)
	{if closeally.y<y {key_down=0 key_up=choose(1,1)} if closeally.y>y {key_up=0 key_down=choose(0,1)}}
	}
	
	if canAttack=1//0 or canAttack=1 or canAttack=2 or canAttack=3 or canAttack=4
	if x=clamp(x,targetX-32,targetX+32) and y=clamp(y,targetY-6,targetY+6)
	if canAttack!=0 {canAttack=0 ai_attack()}
	//if x<targetX {anim=1 key_left=-1 key_right=0} else {anim=1 key_right=1 key_left=0}
	//if canAttack!=0 canAttack=0
	//if x<targetX {anim=1 key_left=-1 key_right=0} else {anim=1 key_right=1 key_left=0}
	
	}
	else {key_left=0 key_right=0 key_up=0 key_down=0 key_attack=0}
	}
	else {key_left=0 key_right=0 key_up=0 key_down=0 key_attack=0}
	
	}
	
	}
	else
	reFocusTime-=1



}

function enemy_aiV22() {var _newai=0;
harmed=noone
	if reFocusTime=0
	{
	if targetEnemy=-1
	{
	

var _list = ds_list_create();
var _num = collision_rectangle_list(oControl.camX, oControl.camY, oControl.camX+320,oControl.camY+240, oPlayer, false,true, _list, true);
if (_num > 0)
{for (var i = 0; i < _num; ++i;)
{harmed=_list[| i];
if harmed!=noone
if harmed.hp>0 and harmed.ContinueMode=0
{
targetEnemy=harmed.id
}
}
}
ds_list_destroy(_list);	
	
	}
	
    ai_timer--;

	if targetEnemy!=-1
	if instance_exists(targetEnemy)
	{
    var dx = targetX - x;
    var dy = targetY - y;
    var dist = point_distance(x, y, targetX, targetY);

    // spacing ranges (beat em up feel)
    var idealX = rangeX;
    var idealY = rangeY;
	} else targetEnemy=-1

	////////AI SETUP
	{		if leaveMode=1 
		
		{if (canAttack!=7 and canAttack!=8) { canAttack=8}
		if hurt=1 canAttack=8
		}
if leaveMode=1 or leaveMode=2 ///This is just simple parts for them entering or leaving the scene
{if canmove=1
		{
			
	if canAttack=7 ////Run On-Screen
	if leaveMode=1 or leaveMode=2
	{RunAnimRecharge=1
		{if image_xscale=-1 {anim=1 key_left=-1 key_right=0} else {anim=1 key_right=1 key_left=0}}
		anim=1 dashing=2 doubledash=0.2 RunAnimRecharge=1 
	key_up=0 key_down=0
	}
	
	if canAttack=8 ////Run Away
	if leaveMode=1 or leaveMode=2
	{if leaveMode=2 {leaveMode=0 canAttack=choose(1,2) alarm[1]=2 exit;}
	image_xscale=leaveDir RunAnimRecharge=1
	if x!=clamp(x,oControl.camX-sprite_get_width(mask_index)/2,oControl.camX+320+sprite_get_width(mask_index)/2)
instance_destroy()
		{if image_xscale=-1 {anim=1 key_left=-1 key_right=0} else {anim=1 key_right=1 key_left=0}}
	anim=1 dashing=2 doubledash=0.2 RunAnimRecharge=1
	if leaveAnim!=-1 {canmove=0 AnimFrame=0 anim=leaveAnim}
	key_up=0 key_down=0
	}}
	}
else	////DOWN BELOW is where you gotta tweak the enemy AI - ignore the above
	if targetEnemy!=-1
	{
	if instance_exists(targetEnemy)
	{
	targetX=targetEnemy.x
	targetY=targetEnemy.y
	} else {
	if instance_number(oEnemy1)!=1
	fight_target(oEnemy1)
	else {targetEnemy=-1 exit;}
	}
	
	if targetEnemy.object_index=oPlayer
	if targetEnemy.hp<=0 or targetEnemy.ContinueMode!=0
	{targetEnemy=-1; exit;}


	if hurt=0 and canmove=1 and oControl.ignore=0 and targetEnemy.dead=0
	{
	if canAttack=6 or canAttack=60 ///Stand Still until player gets close
	{if canAttack=6 anim=0 if canAttack=60 anim=1
	{dashing=0 doubledash=0}
	if x=clamp(x,targetX-idleRange,targetX+idleRange)
	{isIdle=0 if alarm[1]<=0 alarm[1]=2 canAttack=choose(0,1,2,3,4)}
	}	
	else
{
// distances
var dx = targetX - x;
var dy = targetY - y;
var dist = abs(dx);
var lane = abs(dy);

// tuning values
var desiredDist = rangeX;     // horizontal spacing
var laneRange   = rangeY * 0.5; // vertical alignment
var crowdPush   = 12;          // anti-crowd force

key_left = 0;
key_right = 0;
key_up = 0;
key_down = 0;


	if hurt=0 and canmove=1 and oControl.ignore=0 and targetEnemy.dead=0
	{
	{
	thrownDMG=0

	///Set up who they're targeting to


	y=clamp(y,0,__view_get( e__VW.YView, 0 )+240)


	if canAttack=1 ///Try to get to the opponent
	{_newai=1
	}

	if canAttack=2 ///Stop
	 {anim=0 key_left=0 key_right=0 key_up=0 key_down=0 key_attack=0

 
	 if x<oControl.camX+16 {canAttack=51 if targetEnemy.y<y canAttack=52 key_right=1}
	 else if x>oControl.camX+320-16 {canAttack=51 if targetEnemy.y<y canAttack=52 key_left=1}
	 }



	 if canAttack=3 ///Forwards
	{
_newai=1
	}
	}

	 if canAttack=4 ///Go Forwards
	if y=clamp(y,targetY-1,targetY+1)
	{
	if x>targetX {anim=1 key_left=-1 key_right=0} else {anim=1 key_right=1 key_left=0}
	}
	
	 if canAttack=51 or canAttack=52///Move On-Screen, Move Up/Down
	 {_newai=1
	 }
	 
	 if canAttack=53 ////Stand back from enemy
	 {
_newai=1;
	 }
	 


	 if canAttack=5 ///Move On-Screen - ignore this one
	{anim=1
	{if image_xscale=-1 {key_left=-1 key_right=0} else {key_right=1 key_left=0}}
	{key_up=0 key_down=0}
	}

	if canAttack=6 or canAttack=60 ///Stand Still until player gets close
	{if canAttack=6 anim=0 if canAttack=60 anim=1
	{dashing=0 doubledash=0}
	if x=clamp(x,targetX-idleRange,targetX+idleRange)
	{isIdle=0 alarm[1]=2 canAttack=choose(0,1,2,3,4)}
	}
	
	if canAttack=0 or canAttack=1 or canAttack=3 or canAttack=4  ////Move apart from other enemies
	{
_newai=1;
	}
	
	if canAttack=1//0 or canAttack=1 or canAttack=2 or canAttack=3 or canAttack=4
	if x=clamp(x,targetX-32,targetX+32) and y=clamp(y,targetY-6,targetY+6)
	if canAttack!=0 {canAttack=0 ai_attack();}
	//if x<targetX {anim=1 key_left=-1 key_right=0} else {anim=1 key_right=1 key_left=0}
	//if canAttack!=0 canAttack=0
	//if x<targetX {anim=1 key_left=-1 key_right=0} else {anim=1 key_right=1 key_left=0}
	
	}
if _newai
{
if (dx > 0) image_xscale = 1;
else image_xscale = -1;

if (lane > laneRange)
{
    if (dy > 0) key_down = 1;
    else key_up = 1;
}

var tooClose = dist < desiredDist - 8;
var tooFar   = dist > desiredDist + sprite_get_width(mask_index);
var inRange  = !tooClose && !tooFar;

if (tooFar)
{
    // approach player
    if (dx > 0) key_right = 1;
    else key_left = -1;
}
else if (tooClose)
{
    // back away while still facing player
    if (dx > 0) key_left = -1;
    else key_right = 1;
}
else
{
ai_attack()
    // ideal spacing → stop moving horizontally
}


var ally = instance_nearest(x, y, oEnemy1);

if (instance_exists(ally) && ally != id)
{
    var adx = ally.x - x;
    var ady = ally.y - y;
    var adist = point_distance(x, y, ally.x, ally.y);

    if (adist < crowdPush)
    {
        // push vertically first (beat 'em up style lanes)
        if (ady > 0) key_up = 1;
        else key_down = 1;

        // slight horizontal separation
        if (adx > 0) key_left = -1;
        else key_right = 1;
    }
}

var offscreen = (x < oControl.camX - 64 || x > oControl.camX + 320 + 64);

if (offscreen || dist > 90 || canAttack == 5)
{
    dashing = 2 * canRun;
    doubledash = 0.2 * canRun;
    RunAnimRecharge = 1;
}
else
{
    dashing = 0;
    doubledash = 0;
    RunAnimRecharge -= 0.1;
}

if (key_left == 0 && key_right == 0 && key_up == 0 && key_down == 0)
{
    anim = 0;
}
else
{
    anim = 1;
}
}
	}

	}
	else {key_left=0 key_right=0 key_up=0 key_down=0 key_attack=0}
	}
	else {key_left=0 key_right=0 key_up=0 key_down=0 key_attack=0}
	
	}

	}
	else
	reFocusTime-=1





}


function enemy_aiV20(){
/// ===========================
/// AI THINK LAYER (NEW)
/// ===========================

if canmove && hurt == 0 && targetEnemy != -1
{
    ai_timer--;

    var dx = targetX - x;
    var dy = targetY - y;
    var dist = point_distance(x, y, targetX, targetY);

    // spacing ranges (beat em up feel)
    var idealX = rangeX;
    var idealY = rangeY;

    if (ai_timer <= 0)
    {
        ai_timer = irandom_range(20, 60);

        // too close → back off
        if (abs(dx) < idealX * 0.6 && abs(dy) < idealY * 0.6)
        {
            canAttack = 53; 
        }
        // too far → approach
        else if (abs(dx) > idealX * 1.2)
        {
            canAttack = 1;
        }
        // wrong Y lane → align
        else if (abs(dy) > idealY)
        {
            canAttack = 4;
        }
        // random strafe / wait
        else
        {
            if (random(1) < aggression)
                canAttack = choose(2, 3);
            else
                canAttack = 0;
        }
    }

if canAttack == 0 // idle spacing
{
    ai_face_target();

    if (random(1) < 0.02)
        ai_move_y(choose(-1, 1));
    else
        ai_move_y(0);

    ai_move_x(0);
}


};

if image_xscale=-1 {key_left=-1 key_right=0} else {key_right=1 key_left=0}

if canAttack == 1 // approach target
{
    anim = 1;
    ai_face_target();

    if (abs(targetX - x) > rangeX)
        ai_move_x(sign(targetX - x));
    else
        ai_move_x(0);

    if (abs(targetY - y) > rangeY)
        ai_move_y(sign(targetY - y));
    else
        ai_move_y(0);

    if (place_meeting(x, y, targetEnemy))
        canAttack = 53;
}


}

function ai_face_target() {
    if (targetX > x) image_xscale = 1;
    else image_xscale = -1;
}

function ai_move_x(dir) {
    key_left = 0;
    key_right = 0;
    if (dir < 0) key_left = -1;
    if (dir > 0) key_right = 1;
}

function ai_move_y(dir) {
    key_up = 0;
    key_down = 0;
    if (dir < 0) key_up = 1;
    if (dir > 0) key_down = 1;
}


function ai_can_attack() {
    var count = 0;
    with (oEnemy1)
        if (canAttack == 4 || anim == 10)
            count++;
    return count < 2; // only 2 attackers allowed
}

