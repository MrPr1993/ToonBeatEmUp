enemy_data()

name="MIRROSA"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=55


alarm[0]=choose(200,220,240,260,280,300)

hp=2


enemyset=0


enemyspawn[9]=0


enemyspawner[9]=0


spawnenemyscript=function()
{
	
if enemyset=1
{
enemyspawn[0]=instance_create_depth(x+32,y+64,-1,oEntryMirror) enemyspawn[0].image_xscale=-1
}

if enemyset=2
{
enemyspawn[0]=instance_create_depth(x-32,y+64,-1,oEntryMirror)
enemyspawn[1]=instance_create_depth(x+32,y+64,-1,oEntryMirror) enemyspawn[1].image_xscale=-1
}

if enemyset=3
{
enemyspawn[0]=instance_create_depth(x-32,y+64,-1,oEntryMirror)
enemyspawn[1]=instance_create_depth(x+32,y+64,-1,oEntryMirror) enemyspawn[1].image_xscale=-1
enemyspawn[2]=instance_create_depth(x-32,y+96,-1,oEntryMirror)
enemyspawn[3]=instance_create_depth(x+32,y+96,-1,oEntryMirror) enemyspawn[3].image_xscale=-1
}

with oEntryMirror
{
image_alpha=0 image_yscale=0 spawned=1 visible=1
}

if enemyspawn[0]!=0 if !instance_exists(enemyspawn[0]) enemyspawn[0]=0 else hp+=enemyspawn[0].hp
if enemyspawn[1]!=0 if !instance_exists(enemyspawn[1]) enemyspawn[1]=0 else hp+=enemyspawn[1].hp
if enemyspawn[2]!=0 if !instance_exists(enemyspawn[2]) enemyspawn[2]=0 else hp+=enemyspawn[2].hp
if enemyspawn[3]!=0 if !instance_exists(enemyspawn[3]) enemyspawn[3]=0 else hp+=enemyspawn[3].hp
if enemyspawn[4]!=0 if !instance_exists(enemyspawn[4]) enemyspawn[4]=0 else hp+=enemyspawn[4].hp
if enemyspawn[5]!=0 if !instance_exists(enemyspawn[5]) enemyspawn[5]=0 else hp+=enemyspawn[5].hp
if enemyspawn[6]!=0 if !instance_exists(enemyspawn[6]) enemyspawn[6]=0 else hp+=enemyspawn[6].hp
if enemyspawn[7]!=0 if !instance_exists(enemyspawn[7]) enemyspawn[7]=0 else hp+=enemyspawn[7].hp
if enemyspawn[8]!=0 if !instance_exists(enemyspawn[8]) enemyspawn[8]=0 else hp+=enemyspawn[8].hp
if enemyspawn[9]!=0 if !instance_exists(enemyspawn[9]) enemyspawn[9]=0 else hp+=enemyspawn[9].hp


}

if oControl.betatest if keyboard_check(vk_control) {image_alpha=0 anim=100}