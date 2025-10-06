/// @description Insert description here
// You can write your code in this editor
colorshade_setup();

BGdist=0
tilename[9]=0;
tilename[0]="BGtile"
tilename[1]="BGtile2"
bgnameg="BGbgground"
bgname="BGbg"

bgdistmin=360;
bgdistmax=1600;

monoalpha=0;
disappear=0;

crazymode=0;

flashy=-1;

depth=16777210

layer_get_id(tilename)


shader=shd_wave
uTime = shader_get_uniform(shader, "Time");
uTexel = shader_get_uniform(shader, "Texel");
spr_background=sprite_index
xscale=1
yscale=1

