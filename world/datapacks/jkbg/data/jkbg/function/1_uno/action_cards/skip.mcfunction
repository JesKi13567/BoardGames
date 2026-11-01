function jkbg:1_uno/action_cards/next
tellraw @a ["", {translate: "jkbg.lobby.bg", color: "green"}, {selector: "@p[scores={jkbg.uno.turn=1}]", hover_event: {action: "show_text", value: ""}, click_event: {action: "copy_to_clipboard", value: ""}}, " ", {translate: "jkbg.uno.play.skipped", color: "gray"}]
