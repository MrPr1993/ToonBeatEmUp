if oPlayer.dead=0 and oPlayer.hurt=0 and oPlayer.ground
	{
with oPlayer 
{
canControl=0
key_right=0 key_left=0 key_up=0 key_down=0
}
}
else
timeline_position-=1