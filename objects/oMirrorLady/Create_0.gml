enemy_data()

name="MIRROSA"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=55

isBoss=1
specialBossState=1


alarm[0]=choose(200,220,240,260,280,300)

hp=2
maxhp=2

character=-1

enemyset=0


enemyspawn[9]=0


enemyspawner[9]=0


spawnenemyscript=function()
{var yadd=64 if instance_exists(oArenaBossBattles) yadd=32
	
if enemyset=1
{
PlaySound(snd_mirrorlady2)	

enemyspawn[0]=instance_create_depth(x+32,y+yadd,-1,oEntryMirror) enemyspawn[0].image_xscale=-1
maxhp=1
}

if enemyset=2
{
PlaySound(snd_mirrorlady9)		

enemyspawn[0]=instance_create_depth(x-32,y+yadd,-1,oEntryMirror)
enemyspawn[1]=instance_create_depth(x+32,y+yadd,-1,oEntryMirror) enemyspawn[1].image_xscale=-1

maxhp=2

with enemyspawn[0] character=0
with enemyspawn[1] character=1
}

if enemyset=3
{
PlaySound(snd_mirrorlady10)		

maxhp=4	

enemyspawn[0]=instance_create_depth(x-32,y+yadd,-1,oEntryMirror)
enemyspawn[1]=instance_create_depth(x+32,y+yadd,-1,oEntryMirror) enemyspawn[1].image_xscale=-1
enemyspawn[2]=instance_create_depth(x-32,y+32+yadd,-1,oEntryMirror)
enemyspawn[3]=instance_create_depth(x+32,y+32+yadd,-1,oEntryMirror) enemyspawn[3].image_xscale=-1

with enemyspawn[0] character=0
with enemyspawn[1] character=1
with enemyspawn[2] character=2
with enemyspawn[3] character=3
}

if enemyset!=3
with enemyspawn[0]
{
my_pal_sprite=oControl.p1.my_pal_sprite
current_pal=oControl.p1.current_pal
character=oControl.p1.character
}

with oEntryMirror
{
cRed=-0.25;
cBlue=0.0;
cGreen=-0.25;

image_speed=0 spawnEnemy=oMirrorDiva
if character=0 {sprite_index=spr_viva_stand enemyID=169}
if character=1 {sprite_index=spr_hina_stand enemyID=170}
if character=2 {sprite_index=spr_bahati_stand enemyID=171}
if character=3 {sprite_index=spr_sofia_stand enemyID=172}
image_alpha=0 image_yscale=0 spawned=1 visible=1


}

}

enemyID=168

if oControl.betatest if keyboard_check(vk_control) {image_alpha=0 anim=100}