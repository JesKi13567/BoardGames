# 默认规则
scoreboard players set #uno.rule.draw_stack jkbg.int 1
scoreboard players set #uno.rule.challenge jkbg.int 1
scoreboard players set #uno.rule.end jkbg.int 0

# 抓牌层数叠加
summon text_display 1.0 101.5 -15.99 {Tags: ["jkbg", "jkbg_lobby"], brightness: {block: 15, sky: 15}, text: {text: "抓牌层数叠加", color: "yellow"}}
summon interaction 1.0 101.25 -16.2 {Tags: ["jkbg", "jkbg_uno_button", "jkbg_uno_rule_draw_stack"], response: true, height: 0.5, width: 0.5}
summon text_display 1.0 101.25 -15.99 {Tags: ["jkbg", "jkbg_lobby", "jkbg_uno_button", "jkbg_uno_rule_draw_stack"], brightness: {block: 15, sky: 15}, text: {text: "开启", color: "green"}}
summon marker 0 0 0 {Tags: ["jkbg", "jkbg_lobby", "jkbg_uno_button", "jkbg_uno_rule_draw_stack"], CustomName: {text: "开启", color: "green"}}

# 质疑
summon text_display -1.0 101.5 -15.99 {Tags: ["jkbg", "jkbg_lobby"], brightness: {block: 15, sky: 15}, text: {text: "质疑", color: "yellow"}}
summon interaction -1.0 101.25 -16.2 {Tags: ["jkbg", "jkbg_uno_button", "jkbg_uno_rule_challenge"], response: true, height: 0.5, width: 0.5}
summon text_display -1.0 101.25 -15.99 {Tags: ["jkbg", "jkbg_lobby", "jkbg_uno_button", "jkbg_uno_rule_challenge"], brightness: {block: 15, sky: 15}, text: {text: "开启", color: "green"}}
summon marker 0 0 0 {Tags: ["jkbg", "jkbg_lobby", "jkbg_uno_button", "jkbg_uno_rule_challenge"], CustomName: {text: "开启", color: "green"}}

# 结束方式
summon text_display -3.0 101.5 -15.99 {Tags: ["jkbg", "jkbg_lobby"], brightness: {block: 15, sky: 15}, text: {text: "结束方式", color: "yellow"}}
summon interaction -3.0 101.25 -16.2 {Tags: ["jkbg", "jkbg_uno_button", "jkbg_uno_rule_end"], response: true, height: 0.5, width: 0.5}
summon text_display -3.0 101.25 -15.99 {Tags: ["jkbg", "jkbg_lobby", "jkbg_uno_button", "jkbg_uno_rule_end"], brightness: {block: 15, sky: 15}, text: {text: "一人出完牌", color: "green"}}
summon marker 0 0 0 {Tags: ["jkbg", "jkbg_lobby", "jkbg_uno_button", "jkbg_uno_rule_end"], CustomName: {text: "一人出完牌", color: "green"}}
