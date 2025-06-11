/// @description Insert description here
// You can write your code in this editor
if isfading=1
image_alpha+=fadeSpd

if image_alpha>fadeMax image_alpha=fadeMax

if fadeclamp image_alpha=clamp(image_alpha,0,1)

if SpinMode=1
image_angle+=SpinSpd

