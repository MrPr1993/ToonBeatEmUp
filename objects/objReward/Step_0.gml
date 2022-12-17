

if (objSlot1.finishedSpinning and objSlot2.finishedSpinning and objSlot3.finishedSpinning) //Only check for a winner when all “reels” have stopped
{alarm[0]=120
if (objSlot1.y1 == objSlot2.y1 && objSlot1.y1 == objSlot3.y1) //this does a simple check to see if all 3 reels match, if they do match, they will all be on the same y1 value
{
cherryReward1=1
cherryReward2=1
cherryReward3=1	
winFlashTime=1
objReward.sprite_index = ds_map_find_value(rewardMap,objSlot1.y1); //This looks up the correct winning sprite in the rewardMap based on the y1 value
showingReward = true; //This sets that we are currently showing a reward
objSlot1.finishedSpinning = false; //Set all “reels” back to default so the player can spin again
objSlot2.finishedSpinning = false;
objSlot3.finishedSpinning = false;

/////Prize multipliers
switch(objSlot1.y1)
{
case 0: rewardPrize=10 winPosX=96 winPosY=48 break;
case 80: rewardPrize=10 winPosX=96 winPosY=32 break;
case 160: rewardPrize=15 winPosX=96 winPosY=16 break;
case 240: rewardPrize=20 winPosX=96 winPosY=0 break;
case 320: rewardPrize=20 winPosX=16 winPosY=48 break;
case 400: rewardPrize=25 winPosX=16 winPosY=32 break;
case 480: rewardPrize=30 winPosX=16 winPosY=16 break;
case 560: rewardPrize=40 winPosX=16 winPosY=0 break;
}


}
else
{
///For the cherries
if (objSlot1.y1=0 and objSlot2.y1=0)
or (objSlot2.y1=0 and objSlot3.y1=0)
or (objSlot1.y1=0 and objSlot3.y1=0)
{showingReward = true;	rewardPrize=5 winPosX=176 winPosY=0 winFlashTime=1
	if objSlot1.y1=0 cherryReward1=1
	if objSlot2.y1=0 cherryReward2=1
	if objSlot3.y1=0 cherryReward3=1
	}
else
if (objSlot1.y1=0)
or (objSlot2.y1=0)
or (objSlot3.y1=0)
{showingReward = true;	rewardPrize=2  winPosX=176 winPosY=16 winFlashTime=1
	if objSlot1.y1=0 cherryReward1=1
	if objSlot2.y1=0 cherryReward2=1
	if objSlot3.y1=0 cherryReward3=1
	}



objSlot1.finishedSpinning = false; //The player did not win, set all “reels” back to default so the player can spin again
objSlot2.finishedSpinning = false;
objSlot3.finishedSpinning = false;
}
}

if oControl.betatest=1
{
if keyboard_check_pressed(vk_left)
if rigMode=-1 rigMode=7 else rigMode-=1
if keyboard_check_pressed(vk_right)
if rigMode=7 rigMode=-1 else rigMode+=1
}



if showingReward=true
{
if cherryReward1=1
objSlot1.winFrame+=0.25
if cherryReward2=1
objSlot2.winFrame+=0.25
if cherryReward3=1
objSlot3.winFrame+=0.25
}

controller_setup()
if slotmachineplay=0 
or slotmachineplay=3
slotflipperY=lerp(slotflipperY,0,0.1)

if slotmachineplay=0
{objSlotParent.winFrame=0 oControl.stagePause=1
if key_attack
{if global.Gold>=10
{moneyBet+=10 PlaySound(snd_select) global.Gold-=10;} else PlaySound(snd_steal)}
if key_shield_pressed
{if global.Gold>=25
{moneyBet+=25 PlaySound(snd_select) global.Gold-=25;} else PlaySound(snd_steal)}
if key_super
{if global.Gold>=50
{moneyBet+=50 PlaySound(snd_select) global.Gold-=50;} else PlaySound(snd_steal)}



}else oControl.stagePause=0

if key_jump if slotmachineplay=0
if moneyBet=0 PlaySound(snd_steal)
else
{
slotmachineplay=1
slotflipperYspd=-4
}
if slotmachineplay=1
{slotflipperY+=slotflipperYspd
slotflipperYspd+=0.45
if slotflipperY>200 slotmachineplay=2
}
if slotmachineplay=2
{PlaySound(snd_hitgroundmetal) oControl.quakeFXTime=10
with objSlotParent
{
if (objReward.showingReward || (!finishedSpinning and !running)) //If a reward is showing, this allows them        to spin again OR if the “reels” are not spinning AND not finished spinning this allows them to spin again.            This is to prevent spin spamming
{
alarm[0]=2+random_range(20,45)*4; //Setup an alarm that STOPS the “reel” at the end of the time interval.           This is what selects a sprite to stop on. We use a random range in order to keep each “reel” from being             uniform and gives the entire play a nice random feel
running = true; //This sets that the “reels” are now spinning
run_speed = 7+random(5); //We give a random speed to each “reel” to further increase the experience
objReward.showingReward = false; //We make sure we reset if a reward was showing
objReward.sprite_index = -1; //Further resetting the reward if it was showing
}
}
	
slotmachineplay=3
}

if slotmachineplay=3
{
if rigMode!=-1
{
objSlotParent.y1=rigMode*80
}
}



