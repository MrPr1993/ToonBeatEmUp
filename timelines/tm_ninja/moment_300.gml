if __view_get( e__VW.XView, 0 )>=3638-320-200
{

en6=instance_create_depth(3570, 168,-1,oEnemy1) with en6
{canmove=0 isIdle=1 alarm[1]=60 anim=70002 idleRange=30}
en7=instance_create_depth(3570+96, 168,-1,oSneak) with en7
{canmove=0 isIdle=1 alarm[1]=60 anim=70002 idleRange=30}
en8=instance_create_depth(3570+96+48, 168,-1,oSneak) with en8
{canmove=0 isIdle=1 alarm[1]=60 anim=70002 idleRange=30}
en9=instance_create_depth(3570+96+48+80, 168,-1,oEnemy1B) with en9
{canmove=0 isIdle=1 alarm[1]=60 anim=70002 idleRange=30}

}
else timeline_position-=1
