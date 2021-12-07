/// @description Insert description here
if !instance_exists(oSettings)
{
if AreYouSure=0
instance_destroy() else AreYouSure=0
}
else
{
with oSettings instance_destroy()
}