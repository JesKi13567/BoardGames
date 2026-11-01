## 任意游戏结束
execute as @e[type=text_display, tag=start] run data modify entity @s view_range set value 1
execute if score #lobby.state jkbg.int matches 1 if entity @p[scores={jkbg.leave=1..}] run tellraw @a ["", {translate: "jkbg.lobby.bg", color: "green"}, {selector: "@p[scores={jkbg.leave=1..}]", hover_event: {action: "show_text", value: ""}, click_event: {action: "copy_to_clipboard", value: ""}}, " ", {translate: "jkbg.lobby.leave", color: "yellow"}]
execute if score #lobby.state jkbg.int matches 1 run tellraw @a ["", {translate: "jkbg.lobby.bg", color: "green"}, {translate: "jkbg.lobby.end", color: "aqua"}]

# 重置
kill @e[tag=jkbg_lobby_deco]
difficulty peaceful
scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay list
scoreboard players set #lobby.state jkbg.int 0
scoreboard players reset #lobby.players.ready jkbg.int
scoreboard players reset #lobby.players.total jkbg.int
scoreboard players reset * jkbg.player.id
scoreboard players reset * jkbg.leave
scoreboard players reset * jkbg.player.ready
scoreboard players reset * jkbg.player.death
execute as @a run function jkbg:0_lobby/leave_game

# 区域
fill -8 99 -8 7 99 7 lime_concrete
fill -16 101 -16 15 101 15 air
fill -16 103 -16 15 103 15 air
fill -4 101 -16 3 101 -16 air

# UNO
scoreboard players reset * jkbg.uno.draw
scoreboard players reset * jkbg.uno.turn
scoreboard players reset * jkbg.uno.color
scoreboard players reset * jkbg.uno.cards
scoreboard players reset * jkbg.uno.challenge
scoreboard players reset * jkbg.uno.score
scoreboard players set #uno.state jkbg.int 0
execute as @e[type=item_display, tag=jkbg_uno_card] run data modify entity @s view_range set value 0
