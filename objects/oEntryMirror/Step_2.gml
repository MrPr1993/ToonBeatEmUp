/// @description Insert description here
// You can write your code in this editor
depth=-y


if __view_get( e__VW.XView, 0)>rangeX+rangeXAdd if spawned=0 {image_alpha=0 image_yscale=0 spawned=1 visible=1
	event_user(0)}
	
if spawned=1
{
if image_yscale<1 {image_yscale+=risespd} else { image_yscale=1}

if image_alpha<1 {image_alpha+=risespd} else { image_alpha=1}


if image_yscale=1 {spawned=2 alarm[0]=teletime}
}

if spawned=3
{visible=0
	if !instance_exists(spawn) instance_destroy()
}
