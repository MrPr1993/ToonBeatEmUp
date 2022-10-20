yy = 1;

draw_set_halign(fa_left)
draw_set_font(global.scorefont)
draw_set_alpha(1)

draw_set_color(c_black)
draw_rectangle(-16,-16,888,888,0)

if level<21
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
if level<41
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
draw_text(10, yy++ * 10, string_hash_to_newline("PLACEHOLDER"));
if level=38 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("PLACEHOLDER"));
if level=39 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("PLACEHOLDER"));
if level=40 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("PLACEHOLDER"));
}
if level<61
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
draw_text(10, yy++ * 10, string_hash_to_newline("PLACEHOLDER"));
if level=47 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("PLACEHOLDER"));
if level=48 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("PLACEHOLDER"));
if level=49 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("PLACEHOLDER"));
if level=50 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("PLACEHOLDER"));
if level=51 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("CUTSCENE 1"));
if level=52 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("PLACEHOLDER"));
if level=53 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("PLACEHOLDER"));
if level=54 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("PLACEHOLDER"));
if level=55 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("PLACEHOLDER"));
if level=56 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("PLACEHOLDER"));
if level=57 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("PLACEHOLDER"));
if level=58 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("PLACEHOLDER"));
if level=59 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("PLACEHOLDER"));
if level=60 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("PLACEHOLDER"));
if level=61 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("PLACEHOLDER"));
if level=62 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("PLACEHOLDER"));
if level=63 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("PLACEHOLDER"));
if level=64 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("PLACEHOLDER"));
if level=65 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("PLACEHOLDER"));
if level=66 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("PLACEHOLDER"));
if level=67 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("PLACEHOLDER"));
if level=68 draw_set_color(c_yellow) else draw_set_color(c_gray)
draw_text(10, yy++ * 10, string_hash_to_newline("PLACEHOLDER"));
}
