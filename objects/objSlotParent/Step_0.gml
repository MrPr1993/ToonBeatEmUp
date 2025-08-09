/// @description Insert description here
// You can write your code in this editor

controller_setup()

if running=true
if key_A or key_B
{
	
if (object_index=objSlot1 and objSlot2.running=true and objSlot3.running=true)
or (object_index=objSlot2 and objSlot1.running=false)
or (object_index=objSlot3 and objSlot2.running=false)
{alarm[0]=0 PlaySound(snd_metalhit)
running = false; //This sets that the “reel” is no longer in motion
y1 -= y1 mod (sprite_height/totalImages); //This code is slightly complicated, this rounds off to the nearest “sprite” location. This is why making all sprites equal in distance is important. A very simple example: sprBlueGem.y1 = 69.5 | y1 -= 69.5 mod (256/4) | y1 -= 69.5 mod 64 | y1 = 69.5 – 5.5 | y1 = 64 | 64 = the top pixel of our second sprite
finishedSpinning = true; //This sets that the “reel” has completed spinning
}
}


if (running) //If the “reels” are spinning
{
y1 += run_speed; //This moves the y1 for the vertical movement
y1 = y1 mod sprite_height; //This is a little tricky but it keeps the y1 value from exceeding the sprite_height. Example: if y1 = 355 | y1 = 355 mod  256 | y1 = 99. Again this simply keeps y1 from exceeding the sprite_height
}

