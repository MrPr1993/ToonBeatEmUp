/// @description Insert description here
// You can write your code in this editor
x=oPlayer.x
y=oPlayer.y



if canControl=1
{
controller_setup()

if key_attack
{
	
if GameOver=1
{
if controlNO=1 and oControl.p1!=oPlayer {GameOver=0 with oControl {p1=instance_create_depth(oPlayer.x,oPlayer.y,-1,oPlayer) 
			
	with p1 {canmove=0 
current_pal=global.p1Pal;
my_pal_sprite=spr_playerpal
character=global.P1Char	visible=1	
		event_user(9) if carMode=0 {visible=1 animFrame=0 anim=255} }}}

if controlNO=2 and oControl.p2!=oPlayer {GameOver=0 with oControl {p2=instance_create_depth(oPlayer.x,oPlayer.y,-1,oPlayer) p2.controlNO=2

	with p2 {canmove=0 
			current_pal=global.p2Pal;
my_pal_sprite=spr_playerpal
character=global.P2Char	visible=1
		event_user(9) if carMode=0 {visible=1 animFrame=0 anim=255}}}

}

if controlNO=3 and oControl.p3!=oPlayer {GameOver=0 with oControl {p3=instance_create_depth(oPlayer.x,oPlayer.y,-1,oPlayer) p3.controlNO=3
	
	with p3 {canmove=0 
			current_pal=global.p3Pal;
my_pal_sprite=spr_playerpal
	character=global.P3Char	visible=1	
		event_user(9) if carMode=0 {visible=1 animFrame=0 anim=255}}
}
}
if controlNO=4 and oControl.p4!=oPlayer {GameOver=0 with oControl {p4=instance_create_depth(oPlayer.x,oPlayer.y,-1,oPlayer) p4.controlNO=4
	
	with p4 {canmove=0 
current_pal=global.p4Pal;
my_pal_sprite=spr_playerpal
character=global.P4Char	visible=01
		event_user(9) if carMode=0 {visible=1 animFrame=0 anim=255}}

}}
}

}
}