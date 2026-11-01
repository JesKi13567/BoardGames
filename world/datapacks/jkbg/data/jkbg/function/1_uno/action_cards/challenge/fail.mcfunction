execute as @a at @s run playsound entity.villager.no player @s
tellraw @a ["", {translate: "jkbg.lobby.bg", color: "green"}, {selector: "@s", hover_event: {action: "show_text", value: ""}, click_event: {action: "copy_to_clipboard", value: ""}}, " ", {translate: "jkbg.uno.module.challenge.fail", color: "red"}, "\n", {translate: "jkbg.lobby.bg", color: "green"}, {translate: "jkbg.uno.module.challenge.result.no", with: [{selector: "@e[type=marker, tag=jkbg_uno_last_color, limit=1]", hover_event: {action: "show_text", value: ""}}], color: "gold"}]

scoreboard players add #uno.cards.add jkbg.int 2
scoreboard players add #uno.cards.draw.show jkbg.int 2
function jkbg:1_uno/draw/player_try
