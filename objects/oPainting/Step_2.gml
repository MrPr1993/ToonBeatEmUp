enemy_endstep()
throw_step()

if hp=0
{
atkAir=0
noHitFall=0
}

paintingInd=0
if sprite_index=ThrownSpr 
{
	if anim=5
	{
if image_xscale=1 {frameInd+=0.25 if frameInd>16 frameInd=0}
else {frameInd-=0.25 if frameInd<0 frameInd=15.75}
	}
	paintingInd=1
}

overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1
overwriteAttack3=1
overwriteAttack4=1

if anim=0 or anim=1
frameInd=lerp(frameInd,0,0.1)

if anim=10
{animFrame=0
anim=11
}

if anim=11
{
animFrame+=0.1
atk=0 damage=0.2 MoveType=1

if animFrame<1
{if image_xscale=1 frameInd=15 else frameInd=1}
else
if animFrame<2
{if image_xscale=1 frameInd=14 else frameInd=2}
else
if animFrame<6
{atk=1 sentflying=2*image_xscale
	if image_xscale=1 {frameInd+=0.5 if frameInd>16 frameInd=0}
else {frameInd-=0.5 if frameInd<0 frameInd=15.5}
}
if animFrame>8 {animFrame=0 anim=0 canmove=1}

}



if anim=10 or anim=11
paintingInd=2

if anim=9999
{
if frameInd>15.9 frameInd=0 else frameInd+=0.1
}

if frameInd>15.9 {paintingScale=1 frameInd=0 frameTotal=0}

if frameInd<=1 {paintingScale=1 frameTotal=0}
else if frameInd=clamp(frameInd,1,1.9) {frameTotal=1 paintingScale=0.75}
else if frameInd=clamp(frameInd,2,2.9)  {frameTotal=2 paintingScale=0.5}
else if frameInd=clamp(frameInd,3,3.9)  {frameTotal=3 paintingScale=0.25}
else if frameInd=clamp(frameInd,4,4.9)  {frameTotal=4 paintingScale=0}
else if frameInd=clamp(frameInd,5,5.9)  {frameTotal=5 paintingScale=0.25}
else if frameInd=clamp(frameInd,6,6.9)  {frameTotal=6 paintingScale=0.5}
else if frameInd=clamp(frameInd,7,7.9) {frameTotal=7 paintingScale=-0.75}
else if frameInd=clamp(frameInd,8,8.9) {frameTotal=8 paintingScale=1}
else if frameInd=clamp(frameInd,9,9.9) {frameTotal=9 paintingScale=0.75}
else if frameInd=clamp(frameInd,10,10.9)  {frameTotal=10 paintingScale=0.5}
else if frameInd=clamp(frameInd,11,11.9)  {frameTotal=11 paintingScale=0.25}
else if frameInd=clamp(frameInd,12,12.9)  {frameTotal=12 paintingScale=0}
else if frameInd=clamp(frameInd,13,13.9)  {frameTotal=13 paintingScale=0.25}
else if frameInd=clamp(frameInd,14,14.9)  {frameTotal=14 paintingScale=0.5}
else if frameInd=clamp(frameInd,15,15.9)  {frameTotal=15 paintingScale=0.75}
else {paintingScale=1 frameTotal=0}


if dead=1 if visible
{

					iceFX=0;
					
					PlaySoundNoStack(snd_break2)
					
		repeat(4)
{
part=instance_create_depth(x,y+1,depth,oDisappearPart)
if iceFX=0 or iceFX=1 or iceFX=2 or iceFX=3 part.x=x
if iceFX=4 or iceFX=5 or iceFX=6 or iceFX=7 part.x=x
if iceFX=0 or iceFX=4 part.z=z-0
if iceFX=1 or iceFX=5 part.z=z-8
if iceFX=2 or iceFX=6 part.z=z-16
if iceFX=3 or iceFX=7 part.z=z-24
part.z-=height/2
part.image_angle=random(360) part.sprite_index=frameParts
if iceFX <2
part.hspeed=choose(-1,-2,-1.5)
else
part.hspeed=choose(1,2,1.5)
part.image_index=choose(0,1,2) part.image_speed=0
part.spdZ=-4 part.image_blend=image_blend
part.disappeartime=random_range(24,32)
	iceFX+=1;
} iceFX=0;

	canmove=0
	hurt=1
	shaketime=30
	throwing=0 dead=1;
	visible=0 disappearTime=0 alarm[2]=90///Instantly kill and shatter character while frozen
}