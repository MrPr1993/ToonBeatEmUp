if act=1
if immune=0
//and (x>view_xview[0]-sprite_get_width(mask_index)/2 and x<view_xview[0]+320+sprite_get_width(mask_index)/2)
and x=clamp(x,camera_get_view_x(view_camera[0])-sprite_get_width(mask_index)/2,camera_get_view_x(view_camera[0])+320+sprite_get_width(mask_index)/2)
{
if other.isPlayer!=isPlayer and other.atk=1 and Throw=0 and dead=0 and superThrown=0
and recovery=0 and anim!=6

///(z=clamp(z,other.z-other.height,other.z) or (z)=clamp((z),other.z,other.z+other.height))
//if (z)=clamp((z),other.z-other.height,other.z-other.height)
//if z=clamp(z,other.z,other.z+other.height*2)// =clamp((z),other.z-other.height,other.z+other.height)

//if z<other.z+height if z>other.z-1 or z+height<other.z+other.height


if (z-height)<(other.z) and (z)>(other.z-other.height)
{other.MoveType=0 enemyhit()}
}

