if act=1
{
if active=0
if oPlayer.x=clamp(oPlayer.x,x-32,x+32) and oPlayer.y=clamp(oPlayer.y,y-32,y+32) 
{if selfswing=1
active=1
}

if active=1
{if image_index<5 image_index+=0.5
}

if active=2
{if image_index>0 image_index-=0.5 else {image_index=0 active=0}
}
}

depth=9999