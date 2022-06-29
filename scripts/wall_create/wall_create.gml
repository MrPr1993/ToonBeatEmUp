function wall_create() {
	wall=instance_create(x,y,object_get_name(self.object_index))
	wall.z=z wall.height=height wall.wallSide=1
	wall.image_xscale=image_xscale wall.image_yscale=image_yscale wall.mask_index=mask_index



}
