/// @description Insert description here
// You can write your code in this editor
//Train1Y=0
if specialscript=-1
{
if style=0
{
layer_y("CarTiles1",round(Train1Y))
layer_y("CarTiles2",round(Train1Y))
layer_y("CarTiles3",round(Train1Y))
with oTrainFXSpot if TrainID=0
Train1Y=oTrainFX.Train1Y

if Train1Time=0 
{Train1Time=20
Train1Y=-2
}
else{Train1Y=lerp(Train1Y,0,0.1)
Train1Time-=1
}
}

if style=9
{

}
}
else specialscript();