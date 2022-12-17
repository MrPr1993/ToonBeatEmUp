/// @description Insert description here
// You can write your code in this editor


PlaySound(snd_metalhit)
running = false; //This sets that the “reel” is no longer in motion
y1 -= y1 mod (sprite_height/totalImages); //This code is slightly complicated, this rounds off to the nearest “sprite” location. This is why making all sprites equal in distance is important. A very simple example: sprBlueGem.y1 = 69.5 | y1 -= 69.5 mod (256/4) | y1 -= 69.5 mod 64 | y1 = 69.5 – 5.5 | y1 = 64 | 64 = the top pixel of our second sprite
finishedSpinning = true; //This sets that the “reel” has completed spinning