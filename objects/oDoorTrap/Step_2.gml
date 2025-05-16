if act=1
{
if active=0
if collision_rectangle(x-32,y-32,x+32,y+32,oPlayer,0,1)
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