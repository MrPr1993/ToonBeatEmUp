item_endstep()

if spdZ>=0
if z>0-16 {z=0 ground=1}

if ground
event_user(0)
else {image_angle+=angleSpd}
