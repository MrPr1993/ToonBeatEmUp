if (objSlot1.finishedSpinning and objSlot2.finishedSpinning and objSlot3.finishedSpinning) //Only check for a winner when all “reels” have stopped
{alarm[0]=120
if (objSlot1.y1 == objSlot2.y1 && objSlot1.y1 == objSlot3.y1) //this does a simple check to see if all 3 reels match, if they do match, they will all be on the same y1 value
{
objReward.sprite_index = ds_map_find_value(rewardMap,objSlot1.y1); //This looks up the correct winning sprite in the rewardMap based on the y1 value
showingReward = true; //This sets that we are currently showing a reward
objSlot1.finishedSpinning = false; //Set all “reels” back to default so the player can spin again
objSlot2.finishedSpinning = false;
objSlot3.finishedSpinning = false;
}
else
{
objSlot1.finishedSpinning = false; //The player did not win, set all “reels” back to default so the player can spin again
objSlot2.finishedSpinning = false;
objSlot3.finishedSpinning = false;
}
}

controller_setup()
if slotmachineplay=0 
or slotmachineplay=3
slotflipperY=lerp(slotflipperY,0,0.1)

if key_attack if slotmachineplay=0
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
{
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
