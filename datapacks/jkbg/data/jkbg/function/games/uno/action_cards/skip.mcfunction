function jkbg:games/uno/action_cards/next
tellraw @a ["", {text: "【桌游】", color: "green"}, {selector: "@p[scores={jkbg.uno.turn=1}]", hover_event: {action: "show_text", value: ""}}, {text: " 被跳过。", color: "gray"}]
