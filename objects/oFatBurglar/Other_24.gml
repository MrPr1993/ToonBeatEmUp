if dead=0
if sprite_index=AtkSpr2 and !ground
{
	with selfatk 
	if hitID!=-1
	if instance_exists(hitID)
	{
	with hitID
	{if ground=0 {HitType=1 event_user(0)}
	}
	}
	
zSpeed=-4
}
else
alarm[1]=40

