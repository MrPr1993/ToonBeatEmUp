function instance_nearest_unlimited(argument0, argument1, argument2) {
	//instance_nearest_unlimited
	//(x, y, obj)

	var pointx,pointy,object,list,nearest;

	pointx = argument0;
	pointy = argument1;
	object = argument2;

	list = ds_priority_create();
	nearest = noone;

	with (object)
	{
	ds_priority_add(list, id, distance_to_point(pointx,pointy) );
	}

	if (instance_number(object) > 0)
	    {
	nearest = ds_priority_delete_min(list);
	    }

	ds_priority_destroy(list);

	return nearest;



}
