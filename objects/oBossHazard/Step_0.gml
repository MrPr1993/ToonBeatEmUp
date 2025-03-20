/// @description Insert description here
// You can write your code in this editor
if !instance_exists(hitSource) hitSource=self.id
else
if hitSource.object_index!=oBossHazard
{
hp=hitSource.hp
maxhp=hitSource.hp
current_pal=hitSource.current_pal
my_pal_sprite=hitSource.my_pal_sprite

name=hitSource.name
enemyPortraitSpr=hitSource.enemyPortraitSpr
enemyPortraitIndex=hitSource.enemyPortraitIndex
}