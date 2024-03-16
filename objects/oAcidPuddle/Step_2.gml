/// @description Insert description here
// You can write your code in this editor
depth=6666
if act=0
{
image_index+=0.25
if image_index=2 act=1
}

if act=1
{atk=1
image_index+=0.25
if image_index>=5 image_index=2
}

if act=2
{atk=0
image_index+=0.25
if image_index>7.5 instance_destroy()
}
