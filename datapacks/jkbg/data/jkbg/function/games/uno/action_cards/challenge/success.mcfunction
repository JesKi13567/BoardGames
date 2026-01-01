execute as @a at @s run playsound entity.villager.yes player @s
tellraw @a ["", {text: "【桌游】", color: "green"}, {selector: "@s", hover_event: {action: "show_text", value: ""}}, {text: " 质疑成功！", color: "yellow"}, {text: "即上家手中有", color: "gold"}, {selector: "@e[type=marker, tag=jkbg_uno_last_color, limit=1]", hover_event: {action: "show_text", value: ""}}, {text: "牌。", color: "gold"}]
execute as @a[scores={jkbg.player.id=1..}] if score @s jkbg.player.id = #uno.order.last jkbg.int run tag @s add jkbg_uno_temp
execute as @p[tag=jkbg_uno_temp] run function jkbg:games/uno/action_cards/challenge/prev_draw
tag @a remove jkbg_uno_temp
