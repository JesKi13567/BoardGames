# 冒险模式
gamemode adventure @a[gamemode=!creative]

# 准备启动游戏
execute unless score #lobby.ready.flag jkbg.int matches 1 run scoreboard players set #lobby.countdown jkbg.int 10
execute if score #lobby.players.ready jkbg.int matches 2.. run scoreboard players set #lobby.ready.flag jkbg.int 1
execute if score #lobby.ready.flag jkbg.int matches 1 run function jkbg:games/lobby/ready/flag
