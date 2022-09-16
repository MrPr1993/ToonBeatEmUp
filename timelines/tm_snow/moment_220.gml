/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if !instance_exists(en6)
and !instance_exists(en7)
{
en5=instance_create(752,192,oEntryClimb) with en5
{z=-55 rangeX=0}
en6=instance_create(752-64,192,oEntryClimb) with en6
{z=-55 rangeX=0}
en7=instance_create(752+64,192,oEntryClimb) with en7
{z=-55 rangeX=0}
}
else
timeline_position-=1
