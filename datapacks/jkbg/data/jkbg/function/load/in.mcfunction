# 每次重载
scoreboard objectives add jkbg.int dummy ""
execute unless score #load jkbg.int matches 1 run function jkbg:load/init

tellraw @a ["", {text: "【桌游】", color: "green"}, {text: "数据包已加载。", color: "yellow"}]

schedule function jkbg:games/lobby/ticks/sec1 1t replace
schedule function jkbg:games/lobby/ticks/tick1 2t replace
