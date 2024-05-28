/// @description Here you can check on the set of moves the player has for the extra moves.
function player_extramovesettings() {

	////I'm going for the ol' classic style 
	if !anim=18 and !anim=17
	{powcheck=1 pow=2}
	else {if AnimFrame<0.1 pow=5}
	///

	///This line is used for the player's down-up move
	if hasUppercut=1
	{
	if key_down commandDown=1 else if commandDown!=0 commandDown-=0.1
	if (key_up and commandDown!=0) commandUp=1 else if commandUp!=0 commandUp-=0.1
	}

if canmove=1
{
if -key_left and image_xscale=1 and key_attack and ground player_punchback()
if key_right and image_xscale=-1 and key_attack and ground player_punchback()
}
	///This line is used for the player's side move
	if hasSideAtk=1
	{
	if anim=0
	{
	if key_right and image_xscale=1 {commandRight=1 commandLeft=0}
	if -key_left and image_xscale=-1 {commandRight=0 commandLeft=1}
	}{if commandRight!=0 commandRight-=0.1 if commandLeft!=0 commandLeft-=0.1}
	}

	///Charge Attack
	if hasCharge=1
	{
	if (canmove=1 and hurt=0 and atk=0 and carry=0) or (anim=21 and canmove=0)
	{
	if key_charge=1
	{if commandChargeFrame!=19.75 commandChargeFrame+=0.25 else commandChargeFrame=16
	if commandCharge<=1.1 commandCharge+=0.02
	if commandChargeAlpha=0 commandChargeAlpha=1 else commandChargeAlpha-=0.1
	}
	else
	{
	if ground
	{
	commandChargeFrame=0 commandChargeAlpha=1
	if commandCharge>1
	{AnimFrame=0 commandCharge=0 canmove=0 anim=85}
	}
	else
	{commandCharge=0 commandChargeFrame=0 commandChargeAlpha=1}
	}
	}
	else {commandCharge=0 commandChargeFrame=0 commandChargeAlpha=1}
	}



}
