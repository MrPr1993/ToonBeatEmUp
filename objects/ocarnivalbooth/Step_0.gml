/// @description Insert description here
// You can write your code in this editor
if shaketime!=0
{shaketime-=1
if shakefrom=-1
{if shake!=-1 shake-=1 else shake=1}
else
{if shake!=1 shake+=1 else shake=-1}
}
else shake=0

if recovery!=0 recovery-=1

if destroyed=0
image_index=(2.9)-2.9*hp
else
image_index=3

z+=zSpeed

if ground if destroyed zSpeed=-4 else zSpeed=0
else zSpeed+=0.45

if z>0 {z=0 ground=1}

if place_free(x+sentflying,y) x+=sentflying