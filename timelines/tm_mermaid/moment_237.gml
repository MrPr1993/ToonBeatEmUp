with oPlayer
{areaEntry=0
image_xscale=1
if controlNO=1 {x-=80}
if controlNO=2 {x+=80 image_xscale=-1}
if controlNO=3 {x-=80 y+=40}
if controlNO=4 {x-=80 y+=40 image_xscale=-1}

}

with oCameoChar {x-=80 isDepth=1 depth=-y}



