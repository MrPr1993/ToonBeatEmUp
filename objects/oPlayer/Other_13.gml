/// @description Attack
if ContinueMode=0
{
AttackOrItem=2 if key_interact AttackOrItem=1
if image_xscale=1 and -key_left
{player_punchback() exit;}
if image_xscale=-1 and key_right
{player_punchback() exit;}
player_attack()

}