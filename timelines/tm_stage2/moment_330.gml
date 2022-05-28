specialSet8+=1


if specialSet8<80
timeline_position-=1



if specialSet8=10 or specialSet8=20
fakeen.image_index=1
if specialSet8=15 fakeen.image_index=2
if specialSet8=25 fakeen.image_index=0
if specialSet8=30
{with oPlayer hasShadow=1}
if specialSet8=60
{
fakeen.image_index=3
}

if specialSet8=64 or specialSet8=68 or specialSet8=72 or specialSet8=76 or specialSet8=80
{if specialSet8=64 {PlaySound(snd_enemy6) oPlayer.z=-320 oPlayer.zSpeed=-24}
fakeen.image_index=4
}
if specialSet8=66 or specialSet8=70 or specialSet8=74 or specialSet8=76 or specialSet8=82
fakeen.image_index=5
