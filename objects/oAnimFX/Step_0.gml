if isDepth=1
depth=-y

z+=zSpeed

if DeleteIfSourceHit=1
if SourceHit!=-1
{if SourceHit.hurt=1 instance_destroy()
}


if hasTimer
timer+=1