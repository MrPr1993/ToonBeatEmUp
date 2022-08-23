/// @description Immunity Flash
///Respawn
if ContinueMode=0
{
if disappearTime=0
{
immune=0 showp1=0;
disappearTime=24
}
else
{
alarm[4]=2
if visible=0 visible=1 else visible=0
disappearTime-=1
}

}