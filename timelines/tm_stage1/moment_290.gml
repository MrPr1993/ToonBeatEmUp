if en1.anim=101
{alarm[0]=0 with en1 sprite_index=spr_hwolf_hit
//with oControl { TextDialogue="YOU DARE TO HIT ME? LADY WOLF?" bossID=-1}
PlaySound(snd_hwolf5)
fakeenS.timer=0 timer_set(0)
}
else
timeline_position-=1