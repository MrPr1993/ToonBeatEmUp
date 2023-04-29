y1 = 0; //This will be used to determine which sprite we show
run_speed = 0; //How fast the “reels” spin
running = false; //If the reels are current in motion
totalImages = 8; //How many sprites are on the slot sprite sheet
finishedSpinning = false; //Did the reel finish spinning


controlNO=9

winFrame=0
canControl=0
controller_setup()
canControl=1

y1 = choose(0,80,160,240,320,400,480,560);

language_check()