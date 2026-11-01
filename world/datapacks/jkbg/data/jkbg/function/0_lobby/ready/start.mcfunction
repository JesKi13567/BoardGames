# 开始游戏，按游戏编号
playsound block.note_block.bell block @a

execute if score #game.type jkbg.int matches 1 run function jkbg:1_uno/start/real
