/// @description spritepos_setup(PosType,frame,x,y)
/// @param PosType
/// @param frame
/// @param x
/// @param y
function spritepos_setup(argument0, argument1, argument2, argument3) {

	//0 - Floor  1 - Waist   2 - Head
	SpritePosType=argument0



	if SpritePosType=0
	{
	floorPosX[argument1]=argument2
	floorPosY[argument1]=argument3
	floorPos=1
	waistPos=0
	headPos=0
	}

	if SpritePosType=1
	{
	waistPosX[argument1]=argument2
	waistPosY[argument1]=argument3
	floorPos=0
	waistPos=1
	headPos=0
	}

	if SpritePosType=2
	{
	headPosX[argument1]=argument2
	headPosY[argument1]=argument3
	floorPos=0
	waistPos=0
	headPos=1
	}



}
