depth=-y

if angle=1
image_angle+=angleSpin*image_xscale

z+=spdZ

spdZ+=gravSpd

if z>0+zAdd {z=-1 spdZ=-8 if dis=0{dis=1 visible=0 alarm[0]=2}}

