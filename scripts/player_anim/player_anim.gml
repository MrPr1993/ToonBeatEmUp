function player_anim() {
nameupdate=name;	

	if character=0
	{charScript=animsetup_viva}
	if character=1
	{charScript=animsetup_hina}
	if character=2
	{charScript=animsetup_bahati}
	if character=3
	{charScript=animsetup_sofia}

	script_execute(charScript)

if name!=nameupdate	

{
var _shortadd=0;
if character=3 _shortadd=17;
spritepos_setup(1,0,-13,20+_shortadd)
spritepos_setup(1,1,-5,23+_shortadd)
spritepos_setup(1,2,-5,23+_shortadd)
spritepos_setup(1,3,-4,25+_shortadd)
spritepos_setup(1,4,4,39+_shortadd)
spritepos_setup(1,5,-9,39+_shortadd)
spritepos_setup(1,6,-5,29+_shortadd)
spritepos_setup(1,7,5,6+_shortadd)
spritepos_setup(1,8,2,2+_shortadd)
spritepos_setup(1,9,-10,3+_shortadd)
spritepos_setup(1,10,-8,24+_shortadd)
spritepos_setup(1,11,-8,12+_shortadd)
spritepos_setup(1,12,0,8+_shortadd)
spritepos_setup(1,13,1,24+_shortadd)
spritepos_setup(1,14,-13,19+_shortadd)
spritepos_setup(1,15,13,19+_shortadd)
spritepos_setup(1,16,4,12+_shortadd)
spritepos_setup(1,17,0,6+_shortadd)
spritepos_setup(1,18,-10,2+_shortadd)
spritepos_setup(1,19,-10,2+_shortadd)
spritepos_setup(1,20,-10,16+_shortadd)
spritepos_setup(1,21,-5,1+_shortadd)
spritepos_setup(1,22,-5,4+_shortadd)
spritepos_setup(1,23,-5,4+_shortadd)
spritepos_setup(1,24,-5,25+_shortadd)

spritepos_setup(2,0,6,40+_shortadd)
spritepos_setup(2,1,-12,58+_shortadd)
spritepos_setup(2,2,-12,53+_shortadd)
spritepos_setup(2,3,-12,53+_shortadd)
spritepos_setup(2,4,-28,34+_shortadd)
spritepos_setup(2,5,-18,8+_shortadd)
spritepos_setup(2,6,0,2+_shortadd)
spritepos_setup(2,7,-20,11+_shortadd)
spritepos_setup(2,8,-20,7+_shortadd)
spritepos_setup(2,9,-11,28+_shortadd)
spritepos_setup(2,10,6,49+_shortadd)
spritepos_setup(2,11,-8,24+_shortadd)
spritepos_setup(2,12,-13,10+_shortadd)
spritepos_setup(2,13,1,10+_shortadd)
spritepos_setup(2,14,6,18+_shortadd)
spritepos_setup(2,15,6,43+_shortadd)
spritepos_setup(2,16,16,42+_shortadd)
spritepos_setup(2,17,20,33+_shortadd)
spritepos_setup(2,18,20,6+_shortadd)
spritepos_setup(2,19,20,1+_shortadd)
spritepos_setup(2,20,20,16+_shortadd)
spritepos_setup(2,21,20,3+_shortadd)
spritepos_setup(2,22,8,31+_shortadd)
spritepos_setup(2,23,3,49+_shortadd)
spritepos_setup(2,24,-4,56+_shortadd)
}

}
