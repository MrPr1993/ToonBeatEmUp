if !instance_exists(en1)
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
{
en1=enemy_ambusher(0,176,oSwing,1,-1,32,10,1,1,0,132)
with en1 {weapon_add("KNIFE") enemy_modify(my_pal_sprite,7,"MS.WAVE",0,hp,maxhp)}
en2=enemy_ambusher(0,176+16,oSwing,1,-1,32,10,1,1,0,132)
with en2 {weapon_add("KNIFE") enemy_modify(my_pal_sprite,7,"MS.WAVE",0,hp,maxhp)}
en3=enemy_ambusher(0,176+32,oSwing,1,-1,32,10,1,1,0,132)
with en3 {weapon_add("KNIFE") enemy_modify(my_pal_sprite,7,"MS.WAVE",0,hp,maxhp)}
}
else
timeline_position-=1