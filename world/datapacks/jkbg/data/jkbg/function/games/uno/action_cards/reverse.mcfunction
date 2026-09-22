# 切换出牌顺序（功能牌）
scoreboard players add #uno.reverse jkbg.int 1
execute if score #uno.reverse jkbg.int matches 2.. run scoreboard players reset #uno.reverse jkbg.int

# 双人模式下为跳过
execute if score #lobby.players.total jkbg.int matches 2 run function jkbg:games/uno/action_cards/skip
