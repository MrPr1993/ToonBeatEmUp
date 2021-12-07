if act=1
{
if other.z=clamp(other.z,z,z+128) and other.hit=0
with other
{
if x>other.x sourceCheckX=-1 else sourceCheckX=1
event_user(0)
}
}

