/// @description Insert description here
// You can write your code in this editor
depth=-y

if act=1
{atk=1
if image_index<2 atk=0
image_index+=0.5 if image_index>6-0.5 image_index=3
}
else
{atk=0 if image_index>6 {image_index+=0.5 if image_index>10 image_index=0} else
if image_index<4 image_index=0}
