/// @description Insert description here
// You can write your code in this editor


if hit=1
{
if face=1
spin-=spinSpd
else
spin+=spinSpd
}

if hit=2
{
if face=1
spin-=spinSpd
else
spin+=spinSpd
spinSpd=lerp(spinSpd,0,0.1)
if spinSpd<1 {spinSpd=0 hit=3}
}

if spin<0 spin=360
if spin>360 spin=0

if hit=3
{
	

//45
if spin<45 {prize=instance_create_depth(x,y+4,-1,oBomb) wintype=1} else //1
if spin<45*2 {prize=instance_create_depth(x,y+4,-1,oKatana)} else //2
if spin<45*3 {prize=instance_create_depth(x,y+4,-1,oDango)} else //3
if spin<45*4 {prize=instance_create_depth(x,y+4,-1,oGum)} else //4
if spin<45*5 {prize=instance_create_depth(x,y+4,-1,oBomb) wintype=1} else //5
if spin<45*6 {prize=instance_create_depth(x,y+4,-1,oBat)} else //6
if spin<45*7 {prize=instance_create_depth(x,y+4,-1,oApple)} else //7
{prize=instance_create_depth(x,y+4,-1,oSuperItem)} //8

with prize {z=-240 ground=0 if object_index=oBomb trigger=1 triggerTime=25}

hit=4

if hostID!=-1
{
hostID.AnimFrame=0 {hostID.anim=500} 	
if wintype=1 {hostID.anim=501} 		
}

if hostID2!=-1
{
hostID2.AnimFrame=0 {hostID2.anim=500} 	
if wintype=1 {hostID2.anim=501} 		
}
}

depth=-y
