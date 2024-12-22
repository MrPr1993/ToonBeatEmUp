yy = 1;

draw_set_halign(fa_left)
draw_set_font(global.scorefont)
draw_set_alpha(1)

draw_set_color(c_black)
draw_rectangle(-16,-16,888,888,0)

if level<=20
{
draw_text(10, yy++ * 10, string_hash_to_newline("LEVEL SELECT"));
if level=0 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("TITLE SCREEN"));
if level=1 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("CHARACTER SELECT"));
if level=2 draw_set_color(c_yellow) else draw_set_color(c_blue)
draw_text(10, yy++ * 10, string_hash_to_newline("STAGE 1, STREET"));
if level=3 draw_set_color(c_yellow) else draw_set_color(c_blue)
draw_text(10, yy++ * 10, string_hash_to_newline("STAGE 2B, AIRPORT"));
if level=4 draw_set_color(c_yellow) else draw_set_color(c_blue)
draw_text(10, yy++ * 10, string_hash_to_newline("STAGE 2, CAR-SHIP"));
if level=5 draw_set_color(c_yellow) else draw_set_color(c_blue)
draw_text(10, yy++ * 10, string_hash_to_newline("STAGE 2C, TRAIN"));
if level=6 draw_set_color(c_yellow) else draw_set_color(c_blue)
draw_text(10, yy++ * 10, string_hash_to_newline("STAGE 3B, GRAVEYARD"));
if level=7 draw_set_color(c_yellow) else draw_set_color(c_blue)
draw_text(10, yy++ * 10, string_hash_to_newline("STAGE 3, MUSEUM"));
if level=8 draw_set_color(c_yellow) else draw_set_color(c_blue)
draw_text(10, yy++ * 10, string_hash_to_newline("STAGE 3C, NINJA CASINO"));
if level=9 draw_set_color(c_yellow) else draw_set_color(c_blue)
draw_text(10, yy++ * 10, string_hash_to_newline("STAGE 4B, SWAMP"));
if level=10 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("STAGE 4, CARNIVAL"));
if level=11 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("STAGE 4C, BEACH"));
if level=12 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("STAGE 5B, UFO"));
if level=13 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("STAGE 5, UNDERWATER"));
if level=14 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("STAGE 5C, DESERT"));
if level=15 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("STAGE 6B, SNOW MOUNTAINS"));
if level=16 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("STAGE 6, CAVERNS"));
if level=17 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("STAGE 6C, CLOUDS"));
if level=18 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("STAGE 7, LABORATORY"));
if level=19 draw_set_color(c_maroon) else draw_set_color(c_red)
draw_text(10, yy++ * 10, string_hash_to_newline("STAGE 8, FINAL"));
if level=20 draw_set_color(c_maroon) else draw_set_color(c_red)
draw_text(10, yy++ * 10, string_hash_to_newline("MAP SCREEN"));
}

///
if level<=40
{
if level=21 draw_set_color(c_maroon) else draw_set_color(c_red)
draw_text(10, yy++ * 10, string_hash_to_newline("CHARACTER DATA"));
if level=22 draw_set_color(c_maroon) else draw_set_color(c_red)
draw_text(10, yy++ * 10, string_hash_to_newline("FEATS"));
if level=23 draw_set_color(c_maroon) else draw_set_color(c_red)
draw_text(10, yy++ * 10, string_hash_to_newline("SHOP"));
if level=24 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("TRAINING"));
if level=25 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("SOUND TEST"));
if level=26 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("GALLERY"));
if level=27 draw_set_color(c_maroon) else draw_set_color(c_red)
draw_text(10, yy++ * 10, string_hash_to_newline("SETTINGS"));
if level=28 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("MAIN MENU"));
if level=29 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("HI-SCORE"));
if level=30 draw_set_color(c_yellow) else draw_set_color(c_red)
draw_text(10, yy++ * 10, string_hash_to_newline("ANIM EDITOR"));
if level=31 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("BLANK VOID"));
if level=32 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("NEWSPAPER"));
if level=33 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("OPENING"));
if level=34 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("CREDITS"));
if level=35 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("CAR MINIGAME"));
if level=36 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("BRICK MINIGAME"));
if level=37 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("EATING MINIGAME"));
if level=38 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("SINGING MINIGAME"));
if level=39 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("BULL RUN"));
if level=40 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("STRENGTH GAME"));
}
if level<=60
{
if level=41 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("TEST 1"));
if level=42 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("TEST 2"));
if level=43 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("TEST 3"));
if level=44 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("TEST 4"));
if level=45 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("PALETTE EDITOR"));
if level=46 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("FISHING MINIGAME"));
if level=47 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("CASINO GAME"));
if level=48 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("THE ARENA"));
if level=49 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("THE BOSS ARENA"));
if level=50 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("MINIGAMES"));
if level=51 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("CUTSCENE 1"));
if level=52 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("CUTSCENE 2A-BOAT"));
if level=53 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("CUTSCENE 2B-PLANE"));
if level=54 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("CUTSCENE 2C-TRAIN"));
if level=55 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("CUTSCENE 3A-MUSEUM"));
if level=56 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("CUTSCENE 3B-GRAVEYARD"));
if level=57 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("CUTSCENE 3C-CASINO"));
if level=58 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("CUTSCENE 4A-CARNIVAL"));
if level=59 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("CUTSCENE 4B-SWAMP"));
if level=60 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("CUTSCENE 4C-BEACH"));
}
if level<=80
{
if level=61 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("CUTSCENE 5A-UNDERWATER"));
if level=62 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("CUTSCENE 5B-UFO"));
if level=63 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("CUTSCENE 5C-DESERT"));
if level=64 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("CUTSCENE 6A-CAVERN"));
if level=65 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("CUTSCENE 6B-MOUNTAIN"));
if level=66 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("CUTSCENE 6C-CLOUDS"));
if level=67 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("CUTSCENE 7A-LAB"));
if level=68 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("ENDING"));
if level=69 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("INTERMISSION 1"));
if level=70 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("INTERMISSION 2"));
if level=71 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("MULTI 1"));
if level=72 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("MULTI 2"));
if level=73 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("MULTI 3"));
if level=74 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("MULTI 4"));
if level=75 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("MULTI 5"));
if level=76 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("MULTI 6"));
if level=77 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("MULTI 7"));
if level=78 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("MULTI 8"));
if level=79 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("MULTI 9"));
if level=80 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("MULTI 10"));
}
if level<=100
{
if level=81 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("MULTI 11"));
if level=82 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("MULTI 12"));
if level=83 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("MULTI 13"));
if level=84 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("MULTI 14"));
if level=85 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("MULTI 15"));
if level=86 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("MULTI 16"));
if level=87 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("MULTI 17"));
if level=88 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("MULTI 18"));
if level=89 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("CUTSCENE 9"));
if level=90 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("CUTSCENE 10"));
if level=91 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("ENDING 1"));
if level=92 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("ENDING 2"));
if level=93 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("ENDING 3"));
if level=94 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("PLACEHOLDER"));
if level=95 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("PLACEHOLDER"));
if level=96 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("PLACEHOLDER"));
if level=97 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("PLACEHOLDER"));
if level=98 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("PLACEHOLDER"));
if level=99 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("PLACEHOLDER"));
if level=100 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("SECRET BOSS"));
}