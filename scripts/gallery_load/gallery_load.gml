// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gallery_load(){
var galno;

galno=argument0;

galleryname="BY MRPR1993"
pictureMax=7
	
if galno=1
{
picturetext[1]="Reference Sheet" sprite_replace(spr_galleryimg1,"Gallery/VivaRef.png",0,0,1,0,0)
picturetext[2]="Viva 1" sprite_replace(spr_galleryimg2,"Gallery/VivaArtwork1.png",0,0,1,0,0)
picturetext[3]="Viva 2" sprite_replace(spr_galleryimg3,"Gallery/VivaArtwork2.png",0,0,1,0,0)
picturetext[4]="Viva 3" sprite_replace(spr_galleryimg4,"Gallery/VivaArtwork3.png",0,0,1,0,0)
picturetext[5]="Viva 4" sprite_replace(spr_galleryimg5,"Gallery/VivaArtwork4.png",0,0,1,0,0)
picturetext[6]="Viva 5" sprite_replace(spr_galleryimg6,"Gallery/VivaArtwork5.png",0,0,1,0,0)
picturetext[7]="Viva 6" sprite_replace(spr_galleryimg7,"Gallery/VivaArtwork6.png",0,0,1,0,0)
}
if galno=2
{
picturetext[1]="Reference Sheet" sprite_replace(spr_galleryimg1,"Gallery/HinaRef.png",0,0,1,0,0)
picturetext[2]="Hina 1" sprite_replace(spr_galleryimg2,"Gallery/HinaArtwork1.png",0,0,1,0,0)
picturetext[3]="Hina 2" sprite_replace(spr_galleryimg3,"Gallery/HinaArtwork2.png",0,0,1,0,0)
picturetext[4]="Hina 3" sprite_replace(spr_galleryimg4,"Gallery/HinaArtwork3.png",0,0,1,0,0)
picturetext[5]="Hina 4" sprite_replace(spr_galleryimg5,"Gallery/HinaArtwork4.png",0,0,1,0,0)
picturetext[6]="Hina 5" sprite_replace(spr_galleryimg6,"Gallery/HinaArtwork5.png",0,0,1,0,0)
picturetext[7]="Hina 6" sprite_replace(spr_galleryimg7,"Gallery/HinaArtwork6.png",0,0,1,0,0)
}
if galno=3
{
picturetext[1]="Reference Sheet" sprite_replace(spr_galleryimg1,"Gallery/BahatiRef.png",0,0,1,0,0)
picturetext[2]="Bahati 1" sprite_replace(spr_galleryimg2,"Gallery/BahatiArtwork1.png",0,0,1,0,0)
picturetext[3]="Bahati 2" sprite_replace(spr_galleryimg3,"Gallery/BahatiArtwork2.png",0,0,1,0,0)
picturetext[4]="Bahati 3" sprite_replace(spr_galleryimg4,"Gallery/BahatiArtwork3.png",0,0,1,0,0)
picturetext[5]="Bahati 4" sprite_replace(spr_galleryimg5,"Gallery/BahatiArtwork4.png",0,0,1,0,0)
picturetext[6]="Bahati 5" sprite_replace(spr_galleryimg6,"Gallery/BahatiArtwork5.png",0,0,1,0,0)
picturetext[7]="Bahati 6" sprite_replace(spr_galleryimg7,"Gallery/BahatiArtwork6.png",0,0,1,0,0)
}
if galno=4
{
//sprite_replace(spr_galleryimg1,"Gallery/VivaBeach.png",0,0,1,0,0)
picturetext[1]="Reference Sheet" sprite_replace(spr_galleryimg1,"Gallery/SofiaRef.png",0,0,1,0,0)
picturetext[2]="Sofia 1" sprite_replace(spr_galleryimg2,"Gallery/SofiaArtwork1.png",0,0,1,0,0)
picturetext[3]="Sofia 2" sprite_replace(spr_galleryimg3,"Gallery/SofiaArtwork2.png",0,0,1,0,0)
picturetext[4]="Sofia 3" sprite_replace(spr_galleryimg4,"Gallery/SofiaArtwork3.png",0,0,1,0,0)
picturetext[5]="Sofia 4" sprite_replace(spr_galleryimg5,"Gallery/SofiaArtwork4.png",0,0,1,0,0)
picturetext[6]="Sofia 5" sprite_replace(spr_galleryimg6,"Gallery/SofiaArtwork5.png",0,0,1,0,0)
picturetext[7]="Sofia 6" sprite_replace(spr_galleryimg7,"Gallery/SofiaArtwork6.png",0,0,1,0,0)
}

////Enemy Art
if galno=5
{
pictureMax=4
picturetext[1]="Goons and Mooks" sprite_replace(spr_galleryimg1,"Gallery/EnemySetA1.png",0,0,1,0,0)
picturetext[2]="Goons' Bar" sprite_replace(spr_galleryimg2,"Gallery/EnemySetA2.png",0,0,1,0,0)
picturetext[3]="Goons' Workout" sprite_replace(spr_galleryimg3,"Gallery/EnemySetA3.png",0,0,1,0,0)
picturetext[4]="Goons' Science" sprite_replace(spr_galleryimg4,"Gallery/EnemySetA4.png",0,0,1,0,0)
}
if galno=6
{
pictureMax=6
picturetext[1]="Wingy Song" sprite_replace(spr_galleryimg1,"Gallery/EnemySetB1.png",0,0,1,0,0)
picturetext[2]="Zombie Dance" sprite_replace(spr_galleryimg2,"Gallery/EnemySetB2.png",0,0,1,0,0)
picturetext[3]="Ancient Servants" sprite_replace(spr_galleryimg3,"Gallery/EnemySetB3.png",0,0,1,0,0)
picturetext[4]="Employee of the Month" sprite_replace(spr_galleryimg4,"Gallery/EnemySetB4.png",0,0,1,0,0)
picturetext[5]="Bee Ad" sprite_replace(spr_galleryimg5,"Gallery/EnemySetB5.png",0,0,1,0,0)
picturetext[6]="Flora's Grin" sprite_replace(spr_galleryimg6,"Gallery/EnemySetB6.png",0,0,1,0,0)
}
if galno=7
{
pictureMax=5
picturetext[1]="Pincho" sprite_replace(spr_galleryimg1,"Gallery/EnemySetC1.png",0,0,1,0,0)
picturetext[2]="Circus Toys" sprite_replace(spr_galleryimg2,"Gallery/EnemySetC2.png",0,0,1,0,0)
picturetext[3]="Ballerina Fairy" sprite_replace(spr_galleryimg3,"Gallery/EnemySetC3.png",0,0,1,0,0)
picturetext[4]="Martians' Finding" sprite_replace(spr_galleryimg4,"Gallery/EnemySetC4.png",0,0,1,0,0)
picturetext[5]="Underwater Impression" sprite_replace(spr_galleryimg5,"Gallery/EnemySetC5.png",0,0,1,0,0)
}
if galno=8
{
pictureMax=4
picturetext[1]="Magical Bellydancer" sprite_replace(spr_galleryimg1,"Gallery/EnemySetD1.png",0,0,1,0,0)
picturetext[2]="Goblins at Work" sprite_replace(spr_galleryimg2,"Gallery/EnemySetD2.png",0,0,1,0,0)
picturetext[3]="Slime Mania" sprite_replace(spr_galleryimg3,"Gallery/EnemySetD3.png",0,0,1,0,0)
picturetext[4]="Yeti's Work of Art" sprite_replace(spr_galleryimg4,"Gallery/EnemySetD4.png",0,0,1,0,0)
}

////Boss Art
if galno=9
{pictureMax=4
//sprite_replace(spr_galleryimg1,"Gallery/VivaBeach.png",0,0,1,0,0)
picturetext[1]="Lady Wolf" sprite_replace(spr_galleryimg1,"Gallery/BossArt1.png",0,0,1,0,0)
picturetext[2]="Harpilda" sprite_replace(spr_galleryimg2,"Gallery/BossArt2.png",0,0,1,0,0)
picturetext[3]="Captain Rosy" sprite_replace(spr_galleryimg3,"Gallery/BossArt3.png",0,0,1,0,0)
picturetext[4]="Dolores" sprite_replace(spr_galleryimg4,"Gallery/BossArt4.png",0,0,1,0,0)

}
if galno=10
{pictureMax=6
//sprite_replace(spr_galleryimg1,"Gallery/VivaBeach.png",0,0,1,0,0)
picturetext[1]="Annamari" sprite_replace(spr_galleryimg1,"Gallery/BossArt5.png",0,0,1,0,0)
picturetext[2]="Hathor" sprite_replace(spr_galleryimg2,"Gallery/BossArt6.png",0,0,1,0,0)
picturetext[3]="The Oni Sisters" sprite_replace(spr_galleryimg3,"Gallery/BossArt7.png",0,0,1,0,0)
picturetext[4]="Kiandra" sprite_replace(spr_galleryimg4,"Gallery/BossArt8.png",0,0,1,0,0)
picturetext[5]="Dixie" sprite_replace(spr_galleryimg5,"Gallery/BossArt9.png",0,0,1,0,0)
picturetext[6]="Circe and Larry" sprite_replace(spr_galleryimg6,"Gallery/BossArt10.png",0,0,1,0,0)
}
if galno=11
{pictureMax=6
//sprite_replace(spr_galleryimg1,"Gallery/VivaBeach.png",0,0,1,0,0)
picturetext[1]="Admiral Kween" sprite_replace(spr_galleryimg1,"Gallery/BossArt11.png",0,0,1,0,0)
picturetext[2]="Prince" sprite_replace(spr_galleryimg2,"Gallery/BossArt12.png",0,0,1,0,0)
picturetext[3]="Haifa and her lover" sprite_replace(spr_galleryimg3,"Gallery/BossArt13.png",0,0,1,0,0)

picturetext[4]="Mirrosa" sprite_replace(spr_galleryimg4,"Gallery/BossArt14.png",0,0,1,0,0)
picturetext[5]="Princess Synthesa" sprite_replace(spr_galleryimg5,"Gallery/BossArt15.png",0,0,1,0,0)
picturetext[6]="Fiona" sprite_replace(spr_galleryimg6,"Gallery/BossArt16.png",0,0,1,0,0)
}
if galno=12
{pictureMax=3
//sprite_replace(spr_galleryimg1,"Gallery/VivaBeach.png",0,0,1,0,0)
picturetext[1]="Dr. Fran" sprite_replace(spr_galleryimg1,"Gallery/BossArt17.png",0,0,1,0,0)
picturetext[2]="Van Vad" sprite_replace(spr_galleryimg2,"Gallery/BossArt18.png",0,0,1,0,0)
picturetext[3]="The True Van Bad" sprite_replace(spr_galleryimg3,"Gallery/BossArt19.png",0,0,1,0,0)
}

///Misc
if galno=13
{pictureMax=6
//sprite_replace(spr_galleryimg1,"Gallery/VivaBeach.png",0,0,1,0,0)
picturetext[1]="Diva Heads" sprite_replace(spr_galleryimg1,"Gallery/DivaHeads.png",0,0,1,0,0)
picturetext[2]="Betty" sprite_replace(spr_galleryimg1,"Gallery/BettyArt.png",0,0,1,0,0)
picturetext[3]="Olga" sprite_replace(spr_galleryimg1,"Gallery/OlgaArt.png",0,0,1,0,0)
picturetext[4]="Animals" sprite_replace(spr_galleryimg1,"Gallery/AnimalArt.png",0,0,1,0,0)
picturetext[5]="Treasure" sprite_replace(spr_galleryimg1,"Gallery/TreasureArt.png",0,0,1,0,0)
picturetext[6]="Game Logo" sprite_replace(spr_galleryimg1,"Gallery/DivaLogo.png",0,0,1,0,0)
}
if galno=14 ///Concept Art
{pictureMax=20
//sprite_replace(spr_galleryimg1,"Gallery/ConceptArt/VivaBeach.png",0,0,1,0,0)
picturetext[1]="Enemy Concept Art 1" sprite_replace(spr_galleryimg1,"Gallery/ConceptArt/EnemyConcept1.png",0,0,1,0,0)
picturetext[2]="Enemy Concept Art 2" sprite_replace(spr_galleryimg2,"Gallery/ConceptArt/EnemyConcept2.png",0,0,1,0,0)
picturetext[3]="Enemy Concept Art 3" sprite_replace(spr_galleryimg3,"Gallery/ConceptArt/EnemyConcept3.png",0,0,1,0,0)
picturetext[4]="Enemy Concept Art 4" sprite_replace(spr_galleryimg4,"Gallery/ConceptArt/EnemyConcept4.png",0,0,1,0,0)
picturetext[5]="Enemy Concept Art 5" sprite_replace(spr_galleryimg5,"Gallery/ConceptArt/EnemyConcept5.png",0,0,1,0,0)

picturetext[6]="Boss Concept Art 1" sprite_replace(spr_galleryimg6,"Gallery/ConceptArt/BossConcept1.png",0,0,1,0,0)
picturetext[7]="Boss Concept Art 2" sprite_replace(spr_galleryimg7,"Gallery/ConceptArt/BossConcept2.png",0,0,1,0,0)
picturetext[8]="Boss Concept Art 3" sprite_replace(spr_galleryimg8,"Gallery/ConceptArt/BossConcept3.png",0,0,1,0,0)
picturetext[9]="Boss Concept Art 4" sprite_replace(spr_galleryimg9,"Gallery/ConceptArt/BossConcept4.png",0,0,1,0,0)
picturetext[10]="Boss Concept Art 5" sprite_replace(spr_galleryimg10,"Gallery/ConceptArt/BossConcept5.png",0,0,1,0,0)
picturetext[11]="Boss Concept Art 6" sprite_replace(spr_galleryimg11,"Gallery/ConceptArt/BossConcept6.png",0,0,1,0,0)

picturetext[12]="NPC Concept" sprite_replace(spr_galleryimg12,"Gallery/ConceptArt/NPCconcept.png",0,0,1,0,0)

picturetext[13]="Misc Concept 1" sprite_replace(spr_galleryimg13,"Gallery/ConceptArt/MiscConcept1.png",0,0,1,0,0)
picturetext[14]="Misc Concept 2" sprite_replace(spr_galleryimg14,"Gallery/ConceptArt/MiscConcept2.png",0,0,1,0,0)

picturetext[15]="Underwater Stage" sprite_replace(spr_galleryimg15,"Gallery/ConceptArt/StageConcept1.png",0,0,1,0,0)

picturetext[16]="Shade's Stages 1" sprite_replace(spr_galleryimg16,"Gallery/ConceptArt/ShadesStages1.png",0,0,1,0,0)
picturetext[17]="Shade's Stages 2" sprite_replace(spr_galleryimg17,"Gallery/ConceptArt/ShadesStages2.png",0,0,1,0,0)

picturetext[18]="SED's Concepts 1" sprite_replace(spr_galleryimg18,"Gallery/ConceptArt/SEDConcept1.png",0,0,1,0,0)
picturetext[19]="SED's Concepts 2" sprite_replace(spr_galleryimg19,"Gallery/ConceptArt/SEDConcept2.png",0,0,1,0,0)
picturetext[20]="SED's Concepts 3" sprite_replace(spr_galleryimg20,"Gallery/ConceptArt/SEDConcept3.png",0,0,1,0,0)

}
if galno=15
{pictureMax=7
//sprite_replace(spr_galleryimg1,"Gallery/VivaBeach.png",0,0,1,0,0)
picturetext[1]="Key Art 1" sprite_replace(spr_galleryimg1,"Gallery/DDivasArtwork2b.png",0,0,1,0,0)
picturetext[2]="Key Art 2" sprite_replace(spr_galleryimg2,"Gallery/DDivasArtworkb.png",0,0,1,0,0)
picturetext[3]="Key Art 3" sprite_replace(spr_galleryimg3,"Gallery/DivaArtwork3b.png",0,0,1,0,0)
picturetext[4]="Diva Elements" sprite_replace(spr_galleryimg4,"Gallery/DivaElements.png",0,0,1,0,0)
picturetext[5]="Divas' Summer" sprite_replace(spr_galleryimg5,"Gallery/DivasBeach.png",0,0,1,0,0)
picturetext[6]="Viva and Hina" sprite_replace(spr_galleryimg6,"Gallery/VivaKeyArt1.png",0,0,1,0,0)
picturetext[7]="Bahati and Sofia" sprite_replace(spr_galleryimg7,"Gallery/VivaKeyArt2.png",0,0,1,0,0)
//picturetext[8]="???" sprite_replace(spr_galleryimg8,"Gallery/HinaArtwork1.png",0,0,1,0,0)
//picturetext[9]="???" sprite_replace(spr_galleryimg9,"Gallery/HinaArtwork1.png",0,0,1,0,0)
//picturetext[10]="???" sprite_replace(spr_galleryimg10,"Gallery/HinaArtwork1.png",0,0,1,0,0)
//picturetext[11]="???" sprite_replace(spr_galleryimg11,"Gallery/HinaArtwork1.png",0,0,1,0,0)
//picturetext[12]="???" sprite_replace(spr_galleryimg12,"Gallery/HinaArtwork1.png",0,0,1,0,0)
}
if galno=16 ///Guest Art
{pictureMax=28
picturetext[1]="JAMEARTS" sprite_replace(spr_galleryimg1,"Gallery/GuestArt/GuestArt_JameArts.png",0,0,1,0,0)
picturetext[2]="J U I C Y I N B I O" sprite_replace(spr_galleryimg2,"Gallery/GuestArt/GuestArt_J U I C Y I N B I O.png",0,0,1,0,0)
picturetext[3]="Needlebugg" sprite_replace(spr_galleryimg3,"Gallery/GuestArt/GuestArt_Needlebugg.png",0,0,1,0,0)
picturetext[4]="VI99I8" sprite_replace(spr_galleryimg4,"Gallery/GuestArt/GuestArt_VI99I8.png",0,0,1,0,0)
picturetext[5]="funyonion" sprite_replace(spr_galleryimg5,"Gallery/GuestArt/GuestArt_funyonion.png",0,0,1,0,0)
picturetext[6]="SuperSpoe" sprite_replace(spr_galleryimg6,"Gallery/GuestArt/GuestArt_SuperSpoe.png",0,0,1,0,0) ///Bah
picturetext[7]="FilmmakerJ" sprite_replace(spr_galleryimg7,"Gallery/GuestArt/GuestArt_FilmmakerJ.png",0,0,1,0,0) 
picturetext[8]="owlizard" sprite_replace(spr_galleryimg8,"Gallery/GuestArt/GuestArt_owlizard.png",0,0,1,0,0)
picturetext[9]="ChillFortress" sprite_replace(spr_galleryimg9,"Gallery/GuestArt/GuestArt_ChillFortress.png",0,0,1,0,0)
picturetext[10]="Galactabee" sprite_replace(spr_galleryimg10,"Gallery/GuestArt/GuestArt_Galactabee.png",0,0,1,0,0)
picturetext[11]="Galactabee" sprite_replace(spr_galleryimg11,"Gallery/GuestArt/GuestArt_Galactabee2.png",0,0,1,0,0)
picturetext[12]="bella" sprite_replace(spr_galleryimg12,"Gallery/GuestArt/GuestArt_bella.png",0,0,1,0,0)
picturetext[13]="thedarkcartoon" sprite_replace(spr_galleryimg13,"Gallery/GuestArt/GuestArt_thedarkcartoon.png",0,0,1,0,0)
picturetext[14]="goodbyeyellow" sprite_replace(spr_galleryimg14,"Gallery/GuestArt/GuestArt_goodbyeyellow.png",0,0,1,0,0)
picturetext[15]="RAVEN PEREZ" sprite_replace(spr_galleryimg15,"Gallery/GuestArt/GuestArt_RavenPerez.png",0,0,1,0,0)
picturetext[16]="DoppleDadko" sprite_replace(spr_galleryimg16,"Gallery/GuestArt/GuestArt_DoppleDadko.png",0,0,1,0,0)
picturetext[17]="Important Business Dinosaur" sprite_replace(spr_galleryimg17,"Gallery/GuestArt/GuestArt_ImportantBusinessDinosaur.png",0,0,1,0,0)
picturetext[18]="BorisGrim414" sprite_replace(spr_galleryimg18,"Gallery/GuestArt/GuestArt_BorisGrim414.png",0,0,1,0,0)
picturetext[19]="AgentC24" sprite_replace(spr_galleryimg19,"Gallery/GuestArt/GuestArt_AgentC24.png",0,0,1,0,0)
picturetext[20]="Leo Laifa" sprite_replace(spr_galleryimg20,"Gallery/GuestArt/GuestArt_Leo Laifa.png",0,0,1,0,0)
picturetext[21]="Pinart" sprite_replace(spr_galleryimg21,"Gallery/GuestArt/GuestArt_Pinart.png",0,0,1,0,0)
picturetext[22]="PyrasTerran" sprite_replace(spr_galleryimg22,"Gallery/GuestArt/GuestArt_PyrasTerran.png",0,0,1,0,0)
picturetext[23]="Kapptastic" sprite_replace(spr_galleryimg23,"Gallery/GuestArt/GuestArt_Kapptastic.png",0,0,1,0,0)
picturetext[24]="Radji" sprite_replace(spr_galleryimg24,"Gallery/GuestArt/GuestArt_Radji.png",0,0,1,0,0)
picturetext[25]="PolkaToonZ" sprite_replace(spr_galleryimg25,"Gallery/GuestArt/GuestArt_PolkaToonZ.png",0,0,1,0,0)
picturetext[26]="RavernClouk Design" sprite_replace(spr_galleryimg26,"Gallery/GuestArt/GuestArt_RavernClouk Design.png",0,0,1,0,0)
picturetext[27]="Aaron Schmit" sprite_replace(spr_galleryimg27,"Gallery/GuestArt/GuestArt_Aaron Schmit.png",0,0,1,0,0)
picturetext[28]="TovioRogers" sprite_replace(spr_galleryimg28,"Gallery/GuestArt/GuestArt_TovioRogers.png",0,0,1,0,0)
picturetext[29]="???" sprite_replace(spr_galleryimg29,"Gallery/GuestArt/HinaArtwork1.png",0,0,1,0,0)
picturetext[30]="???" sprite_replace(spr_galleryimg30,"Gallery/GuestArt/HinaArtwork1.png",0,0,1,0,0)
}




}