if !instance_exists(en1)
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
and !instance_exists(en6)
and !instance_exists(en7)
and !instance_exists(en8)
and !instance_exists(en9)
and !instance_exists(en10)
{
with oControl
{
//goActive=1 alarm[1]=90
//xGoCheck=__view_get( e__VW.XView, 0 )+320

}

}
else
{
timeline_position-=1
}