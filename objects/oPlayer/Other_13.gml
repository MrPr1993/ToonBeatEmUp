/// @description Attack
AttackOrItem=2
if image_xscale=1 and -key_left
{player_punchback() exit;}
if image_xscale=-1 and key_right
{player_punchback() exit;}
player_attack()

