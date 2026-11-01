execute if score #uno.cards.add jkbg.int matches 1.. run title @a actionbar [{translate: "jkbg.uno.rule.stacking"}, {score: {name: "#uno.cards.add", objective: "jkbg.int"}, color: "yellow"}]

# 有玩家退出直接结束游戏
execute store result score #uno.players.total jkbg.int if entity @a[scores={jkbg.player.id=1..}, gamemode=adventure]
execute unless score #uno.players.total jkbg.int = #lobby.players.total jkbg.int run function jkbg:1_uno/end/not_enough_player
