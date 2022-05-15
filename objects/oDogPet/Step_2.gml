/// @description Insert description here
// You can write your code in this editor
depth=-y




if anim=0
{sprite_index=standSpr
frame_set(0,0,0.1)
frame_set(1,1,0.1) if animFrame>2 animFrame=0
frame_set(2,1,0.1)
}

if anim=1
{sprite_index=standSpr
frame_set(0,2,0.1)
frame_set(1,3,0.1)
frame_set(2,3,0.1)
if animFrame>2 animFrame=0
}

if petID!=-1
{
if anim=1 if petID.anim!=10010 {petID=-1 anim=0 interact=0}
	
if !instance_exists(petID) petID=-1
}

if anim=2
{sprite_index=scaredSpr
frame_set(0,2,0.1)
frame_set(1,3,0.1)
frame_set(2,3,0.1)
if animFrame>2 animFrame=0
if foeID1=-1 and foeID2=-1 and foeID3=-1 and foeID4=-1 and foeID5=-1 and foeID6=-1 and foeID7=-1 and foeID8=-1 and foeID9=-1
anim=0
}

if foeID1!=-1 if !instance_exists(foeID1) foeID1=-1
if foeID2!=-1 if !instance_exists(foeID2) foeID2=-1
if foeID3!=-1 if !instance_exists(foeID3) foeID3=-1
if foeID4!=-1 if !instance_exists(foeID4) foeID4=-1
if foeID5!=-1 if !instance_exists(foeID5) foeID5=-1
if foeID6!=-1 if !instance_exists(foeID6) foeID6=-1
if foeID7!=-1 if !instance_exists(foeID7) foeID7=-1
if foeID8!=-1 if !instance_exists(foeID8) foeID8=-1
if foeID9!=-1 if !instance_exists(foeID9) foeID9=-1

