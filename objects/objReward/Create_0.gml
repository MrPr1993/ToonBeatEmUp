randomize(); //Used for dev so random numbers are really random
rewardMap = ds_map_create(); //This sets up our reward map, which maps the Y1 value to the winning sprite
ds_map_add(rewardMap,0,spr_burglar_stand)//sprGreenGem); //The mapping is equal to the beginning pixel for each sprite on the sprite slot sheet
ds_map_add(rewardMap,80,spr_burglarB_stand)//sprBlueGem);
ds_map_add(rewardMap,80*2,spr_femburglar_stand)//sprPurpleGem);
ds_map_add(rewardMap,80*3,spr_fatburglar_stand)//sprHeart);
ds_map_add(rewardMap,80*4,spr_zombiem_stand)//sprGreenGem); //The mapping is equal to the beginning pixel for each sprite on the sprite slot sheet
ds_map_add(rewardMap,80*5,spr_zombiew_stand)//sprBlueGem);
ds_map_add(rewardMap,80*6,spr_wolfita_stand)//sprPurpleGem);
ds_map_add(rewardMap,80*7,spr_robot_stand)//sprHeart);
showingReward = false; //Setting that we are NOT currently showing a reward

slotmachineplay=0
slotflipperY=0
slotflipperYspd=0

canControl=1
controlNO=9

moneyBet=0

controller_setup()

rigMode=-1

rewardPrize=1;
cherryReward1=0
cherryReward2=0
cherryReward3=0

screenshaketime=0
screenshake=0

winPosX=16
winPosY=0
winFlash=0
winFlashTime=0