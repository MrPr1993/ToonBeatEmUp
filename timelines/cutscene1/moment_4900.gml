if specialcheck5=0
{cutscenename="VIVA"
cutsceneline="NOW THAT'S JUST RIDICULOUS, HOW'S THAT GONNA HELP?"
if global.Language!=0 cutsceneline=languagedialogue[20]
}
if specialcheck5=1
{cutscenename="SOFIA"
cutsceneline="WHAT DO YOU MEAN?! IT'S A GOOD IDEA!"
if global.Language!=0 cutsceneline=languagedialogue[21]
}
if specialcheck5=2
{cutscenename="BAHATI"
cutsceneline="THAT SOUNDS SILLY BUT... IT'S A LITTLE"
if global.Language!=0 cutsceneline=languagedialogue[22]
}
if specialcheck5=3
{cutscenename="HINA"
cutsceneline="I LIKE THAT PLAN THO... BUT HEY"
if global.Language!=0 cutsceneline=languagedialogue[23]
}
if specialcheck5=4
{cutscenename="VIVA"
cutsceneline="HEY I HAVE A BETTER PLAN! AND IT'S ABOUT"
if global.Language!=0 cutsceneline=languagedialogue[24]
}
if specialcheck5=5
{cutscenename="SOFIA"
cutsceneline="NO I HAVE A BETTER PLAN! AND IT'S "
if global.Language!=0 cutsceneline=languagedialogue[25]
}
if specialcheck5=6
{cutscenename="HINA"
cutsceneline="UH... LADIES?"
if global.Language!=0 cutsceneline=languagedialogue[26]
}
if specialcheck5=7
{cutscenename="BAHATI"
cutsceneline="I HAVE AN IDEA! AND I AM GONNA"
if global.Language!=0 cutsceneline=languagedialogue[27]
}
if specialcheck5=8
{cutscenename=""
cutsceneline="(ARGUMENTS ENSUE)"
if global.Language!=0 cutsceneline=languagedialogue[28]
}

specialcheck5+=1

if specialcheck5!=12
timeline_position-=50
