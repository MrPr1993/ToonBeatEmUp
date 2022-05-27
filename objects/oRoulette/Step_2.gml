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
if spin<45 {prize=instance_create_depth(x,y+4,-1,oPizza)} else //1
if spin<45*2 {prize=instance_create_depth(x,y+4,-1,oBurger)} else //2
if spin<45*3 {prize=instance_create_depth(x,y+4,-1,oTea)} else //3
if spin<45*4 {prize=instance_create_depth(x,y+4,-1,oGun)} else //4
if spin<45*5 {prize=instance_create_depth(x,y+4,-1,oBomb)} else //5
if spin<45*6 {prize=instance_create_depth(x,y+4,-1,oGum)} else //6
if spin<45*7 {prize=instance_create_depth(x,y+4,-1,oChocolate)} else //7
{prize=instance_create_depth(x,y+4,-1,oShotgun)} //8

with prize {z=-240 ground=0}

hit=4
}

depth=-y
