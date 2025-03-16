# 重载执行
scoreboard objectives add jkbg.int dummy ""

execute if score #load jkbg.int matches 1 run function jkbg:load/2nd
execute unless score #load jkbg.int matches 1 run function jkbg:load/1st
