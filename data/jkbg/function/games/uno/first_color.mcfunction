execute store result score #uno.id.color jkbg.int run random value 1..4
scoreboard players operation #uno.id.color jkbg.int *= #100 jkbg.int

scoreboard players operation #uno.id.num jkbg.int = #uno.this jkbg.int
scoreboard players operation #uno.id.num jkbg.int %= #100 jkbg.int

scoreboard players operation #uno.id.color jkbg.int += #uno.id.num jkbg.int
scoreboard players operation #uno.this jkbg.int = #uno.id.color jkbg.int
