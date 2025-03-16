# 切换出牌顺序（功能牌）
execute unless score #uno.reverse jkbg.int matches 1 run scoreboard players set #uno.reverse jkbg.int 1
execute if score #uno.reverse jkbg.int matches 1 run scoreboard players reset #uno.reverse jkbg.int

# 双人模式下为跳过
execute if score #uno.state jkbg.int matches 2 if score #uno.players jkbg.int matches 2 run function jkbg:games/uno/next
