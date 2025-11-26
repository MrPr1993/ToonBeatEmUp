

with oPlayer
{areaEntry=0
image_xscale=1

if controlNO=1 {x-=80}
if controlNO=2 {x+=80 image_xscale=-1}
if controlNO=3 {x-=80 y+=40}
if controlNO=4 {x+=80 y+=40 image_xscale=-1}

}

with oCameoChar {x-=80 isDepth=1 depth=-y}

with sandstorm
{
with p1 if oControl.p1.object_index=oPlayer {x=oControl.p1.x y=oControl.p1.y+1 sprite_index=spr_mermaidcage z=0 anim=9999}
with p2 if oControl.p2.object_index=oPlayer {x=oControl.p2.x y=oControl.p2.y+1 sprite_index=spr_mermaidcage z=0 anim=9999}
with p3 if oControl.p3.object_index=oPlayer {x=oControl.p3.x y=oControl.p3.y+1 sprite_index=spr_mermaidcage z=0 anim=9999}
with p4 if oControl.p4.object_index=oPlayer {x=oControl.p4.x y=oControl.p4.y+1 sprite_index=spr_mermaidcage z=0 anim=9999}
}

with oCameoChar {isDepth=1 depth=-y}
