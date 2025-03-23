$return run random value $(min)..$(max)

# 古早方法已弃用↓
#summon marker ~ ~ ~ {Tags:["jkbg","jkbg_random"]}
#execute store result score #random jkbg.int run data get entity @e[type=marker,tag=jkbg_random,limit=1] UUID[0]
#kill @e[type=marker,tag=jkbg_random]
#scoreboard players operation #random_max jkbg.int -= #random_min jkbg.int
#scoreboard players add #random_max jkbg.int 1
#scoreboard players operation #random jkbg.int %= #random_max jkbg.int
#scoreboard players operation #random jkbg.int += #random_min jkbg.int
