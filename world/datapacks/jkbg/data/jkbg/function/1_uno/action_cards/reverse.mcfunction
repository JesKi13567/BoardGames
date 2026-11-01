# 切换出牌顺序（功能牌）
scoreboard players add #uno.reverse jkbg.int 1
execute if score #uno.reverse jkbg.int matches 2.. run scoreboard players reset #uno.reverse jkbg.int

execute unless score #uno.reverse jkbg.int matches 1 run scoreboard players display name .uno.order jkbg.player.id {text: "↑", color: "gold"}
execute if score #uno.reverse jkbg.int matches 1 run scoreboard players display name .uno.order jkbg.player.id {text: "↓", color: "gold"}

# 双人模式下为跳过
execute if score #lobby.players.total jkbg.int matches 2 run function jkbg:1_uno/action_cards/skip
