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

}

if oControl.betatest if keyboard_check(vk_control) {image_alpha=0 anim=100}