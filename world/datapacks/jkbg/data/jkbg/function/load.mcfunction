# 每次重载
scoreboard objectives add jkbg.int dummy ""
execute unless score #load jkbg.int matches 1 run function jkbg:init

tellraw @a ["", {translate: "jkbg.lobby.bg", color: "green"}, {translate: "jkbg.datapack.load", color: "yellow"}]

schedule function jkbg:ticks/t1 1t replace
schedule function jkbg:ticks/s1 2t replace
