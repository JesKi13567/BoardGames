# 音效
execute as @a at @s run playsound block.note_block.xylophone block @s

# 人数不够
execute if score #lobby.players.ready jkbg.int matches ..1 run function jkbg:games/lobby/ready/fail

# 显示
execute if score #lobby.countdown jkbg.int matches 1.. run title @a times 0 1.1s 0
execute if score #lobby.countdown jkbg.int matches 1.. run title @a title {text: "桌游即将开始", color: "green"}
execute if score #lobby.countdown jkbg.int matches 1.. run title @a subtitle {score: {name: "#lobby.countdown", objective: "jkbg.int"}}

# 进入
execute if score #lobby.ready.flag jkbg.int matches 1 if score #lobby.countdown jkbg.int matches ..0 run function jkbg:games/lobby/ready/start

# 倒数
scoreboard players remove #lobby.countdown jkbg.int 1
