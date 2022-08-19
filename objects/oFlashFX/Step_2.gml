if attachID!=-1
{
if !instance_exists(attachID) attachID=-1
else
{
x=attachID.x+attachX y=attachID.y+attachY z=attachID.z+attachZ}
}

if shaketime=0 shake=0 
else
{shaketime-=1
if shake=-1 shake=1 else shake-=1
}

if trainFX=1
{trainzSet=oTrainFXSpot
trainz=trainzSet.Train1Y
}

if hasgrav=1
{if z>0 {ground=1 z=0}
else
{zSpeed+=gravspd}
if ground=1 zSpeed=0
}
else
{
zSpeed+=zSpeedAdd
}