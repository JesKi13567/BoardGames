scoreboard players set #random_min jkbg.int 1
scoreboard players set #random_max jkbg.int 4
function jkbg:games/lobby/random
scoreboard players operation #uno.id.color jkbg.int = #random jkbg.int
scoreboard players operation #uno.id.color jkbg.int *= #100 jkbg.int

scoreboard players operation #uno.id.num jkbg.int = #uno.this jkbg.int
scoreboard players operation #uno.id.num jkbg.int %= #100 jkbg.int

scoreboard players operation #uno.id.color jkbg.int += #uno.id.num jkbg.int
scoreboard players operation #uno.this jkbg.int = #uno.id.color jkbg.int
