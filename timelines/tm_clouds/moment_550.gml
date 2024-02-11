if __view_get( e__VW.XView, 0 )>=8734-320
{

bos=instance_create_depth(oControl.camX+160,190,-1,oFlashFX)
bos.sprite_index=spr_dragonmaiden_body bos.image_speed=0 bos.alarm[0]=-1;
bos.z=-16

oPlayer.key_right=0;
//oPlayer.canControl=1;
oPlayer.areaEntry=0
specialSet8=0

oEnemySpawner.roomHSpd=0
oEnemySpawner.roomMove=0


}
else
{
timeline_position-=1;
}