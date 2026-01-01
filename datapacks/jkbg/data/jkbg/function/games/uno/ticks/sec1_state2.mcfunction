# 发光显示当前回合玩家
effect clear @a glowing
effect give @a[scores={jkbg.uno.turn=1}] glowing

execute if score #uno.cards.add jkbg.int matches 0 run title @a actionbar [{text: "当前回合：", color: "aqua"}, {selector: "@p[scores={jkbg.uno.turn=1}]", color: "gold"}]
execute if score #uno.cards.add jkbg.int matches 1.. run title @a actionbar [{text: "当前回合：", color: "aqua"}, {selector: "@p[scores={jkbg.uno.turn=1}]", color: "gold"}, "  累加卡牌：", {"score": {"name": "#uno.cards.add", "objective": "jkbg.int"}, color: "yellow"}]

# 有玩家退出直接结束游戏
execute store result score #uno.players.total jkbg.int if entity @a[scores={jkbg.player.id=1..}, gamemode=adventure]
execute unless score #uno.players.total jkbg.int = #lobby.players.total jkbg.int run function jkbg:games/uno/end/not_enough_player
