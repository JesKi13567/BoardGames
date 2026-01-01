# 大厅初始化
difficulty peaceful
scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay list
scoreboard players set #lobby.state jkbg.int 0
scoreboard players reset #lobby.players.ready jkbg.int
scoreboard players reset #lobby.players.total jkbg.int
scoreboard players reset #lobby.ready.flag jkbg.int
scoreboard players reset * jkbg.player.id
scoreboard players reset * jkbg.leave
scoreboard players reset * jkbg.player.ready
scoreboard players reset * jkbg.player.death
execute as @a run function jkbg:games/lobby/leave_game

# 区域重置
fill -8 99 -8 7 99 7 lime_concrete
fill -16 101 -16 15 101 15 air
fill -16 103 -16 15 103 15 air

# UNO
scoreboard players reset * jkbg.uno.draw
scoreboard players reset * jkbg.uno.turn
scoreboard players reset * jkbg.uno.color
scoreboard players reset * jkbg.uno.cards
scoreboard players reset * jkbg.uno.challenge
scoreboard players reset * jkbg.uno.score
scoreboard players set #uno.state jkbg.int 0
