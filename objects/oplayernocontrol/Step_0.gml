/// @description Insert description here
// You can write your code in this editor
if instance_exists(oPlayer)
{
x=oPlayer.x
y=oPlayer.y

controller_setup()
if oControl.nopleasewait=1
{
if key_A or key_B
//if global.Continues!=0
{
//if global.Continues>0 global.Continues-=1;
var _playerno=controlNO;

with oControl
{
	if _playerno=1 and global.P1available=0
{playerleader+=1; p1=instance_create_depth(160,208+16*instance_number(oPlayer),-1,oPlayer) p1.playerNO=1 p1.controlNO=1 p1.character=0
	global.P1available=1 p1.ContinueMode=0 p1.playerGet=0 p1.visible=0;
	p1.PlayerLife=global.P1Life
p1.PlayerScore=global.P1Score p1.my_pal_sprite=global.p1Pals}
	if _playerno=2 and global.P2available=0
{playerleader+=1; p2=instance_create_depth(160,208+16*instance_number(oPlayer),-1,oPlayer) p2.playerNO=2 p2.controlNO=2 p2.character=1
	global.P2available=01 p2.ContinueMode=0 p2.playerGet=0 p2.visible=0;
	p2.PlayerLife=global.P2Life
p2.PlayerScore=global.P2Score p2.my_pal_sprite=global.p2Pals
	}
	if _playerno=3 and global.P3available=0
{playerleader+=1; p3=instance_create_depth(160,208+16*instance_number(oPlayer),-1,oPlayer) p3.playerNO=3 p3.controlNO=3 p3.character=2
		global.P3available=1 p3.ContinueMode=0 p3.playerGet=0 p3.visible=0;
		p3.PlayerLife=global.P3Life
p3.PlayerScore=global.P3Score p3.my_pal_sprite=global.p3Pals
		} 
	if _playerno=4 and global.P4available=0
{playerleader+=1; p4=instance_create_depth(160,208+16*instance_number(oPlayer),-1,oPlayer) p4.playerNO=4 p4.controlNO=4 p4.character=3
		global.P4available=1 p4.ContinueMode=0 p4.playerGet=0 p4.visible=0;
		p4.PlayerLife=global.P4Life
p4.PlayerScore=global.P4Score p4.my_pal_sprite=global.p4Pals
		}
}
}

}
}