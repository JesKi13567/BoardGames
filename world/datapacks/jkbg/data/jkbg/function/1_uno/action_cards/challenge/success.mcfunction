execute as @a at @s run playsound entity.villager.yes player @s
tellraw @a ["", {translate: "jkbg.lobby.bg", color: "green"}, {selector: "@s", hover_event: {action: "show_text", value: ""}, click_event: {action: "copy_to_clipboard", value: ""}}, " ", {translate: "jkbg.uno.module.challenge.success", color: "yellow"}, {translate: "jkbg.uno.module.challenge.result.yes", with: [{selector: "@e[type=marker, tag=jkbg_uno_last_color, limit=1]", hover_event: {action: "show_text", value: ""}}], color: "gold"}]
execute as @a[scores={jkbg.player.id=1..}] if score @s jkbg.player.id = #uno.order.last jkbg.int run tag @s add jkbg_uno_temp
execute as @p[tag=jkbg_uno_temp] run function jkbg:1_uno/action_cards/challenge/prev_draw
tag @a remove jkbg_uno_temp
