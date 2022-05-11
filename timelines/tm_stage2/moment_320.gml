
with oPlayer {hasShadow=0 areaEntry=0 z=-999990}

fakeen=instance_create_depth(847, 170,-1,oFlashFX);
with fakeen {name="BAD" alarm[0]=-1 image_xscale=-1 FlashShadow=1 animEnd=0 image_speed=0 sprite_index=spr_burglar_binoculars current_pal=2;}


en1=instance_create_depth(1070,132,0,oSneak)
with en1 {canAttack=6 isIdle=1 alarm[1]=60 idleRange=60 image_xscale=-1}

en2=instance_create_depth(1070+32,132,0,oSneak)
with en2 {canAttack=6 isIdle=1 alarm[1]=60 idleRange=60 image_xscale=-1
	enemy_modify(my_pal_sprite,1,"MR. BLAST",0,0.2,0.2)}
	
//

//

//StreetBG
//847
