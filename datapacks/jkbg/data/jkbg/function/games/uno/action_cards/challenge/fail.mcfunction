execute as @a at @s run playsound entity.villager.no player @s
tellraw @a ["", {text: "【桌游】", color: "green"}, {selector: "@s", hover_event: {action: "show_text", value: ""}}, {text: " 质疑失败！", color: "red"}, {text: "即上家手中没有", color: "gold"}, {selector: "@e[type=marker, tag=jkbg_uno_last_color, limit=1]", hover_event: {action: "show_text", value: ""}}, {text: "牌。", color: "gold"}]

scoreboard players add #uno.cards.add jkbg.int 2
scoreboard players add #uno.cards.draw.show jkbg.int 2
function jkbg:games/uno/draw/player_try
