/// @description /Make sure to only count the previous ones, otherwise you'll get an error.



if __view_get( e__VW.XView, 0 )>=532
{
en6=instance_create(752-64,192,oEntryClimb) with en6
{z=-55 rangeX=0}
en7=instance_create(752+64,192,oEntryClimb) with en7
{z=-55 rangeX=0}
enG=instance_create(__view_get( e__VW.XView, 0 )+160,240,oGunRange)

}
else
{
timeline_position-=1
}

