scoreboard players set #game.type jkbg.int 1

# 介绍
summon text_display 0.0 104.0 -15.99 {Tags: ["jkbg", "jkbg_game_board", "jkbg_game_name"], brightness: {block: 15, sky: 15}, transformation: {scale: [4, 4, 4], translation: [0, 0, 0], right_rotation: [0, 0, 0, 1], left_rotation: [0, 0, 0, 1]}, background: 0, text: [{text: "U", color: "red"}, {text: "N", color: "blue"}, {text: "O", color: "green"}]}
summon text_display 0.0 102.0 -15.99 {Tags: ["jkbg", "jkbg_game_board", "jkbg_game_desc"], brightness: {block: 15, sky: 15}, background: 0, line_width: 1000, text: [\
{translate: "jkbg.uno.rule.desc", color: "yellow"}, "\n", \
{translate: "jkbg.lobby.player_limit", with: [{text: "2~8", bold: true}], color: "gold"}, "\n", \
{translate: "jkbg.lobby.trigger_leave", with: [{text: "/trigger jkbg.leave", bold: true}], color: "white"}]}

# 牌显示
summon item_display 0.0 100.0 0.0 {Tags: ["jkbg", "jkbg_uno_card"], brightness: {block: 15, sky: 15}, item: {id: "paper", components: {item_model: "jkbg:uno/500"}}, billboard: "vertical", transformation: {scale: [5, 5, 5], translation: [1.25, 2.6, -3.5], right_rotation: [1, 0, 0, 0], left_rotation: [0, 0, 1, 0]}, Rotation: [0, 90], view_range: 0}

## 规则设置
# 罚牌叠加
summon text_display 1.0 101.5 -15.99 {Tags: ["jkbg"], brightness: {block: 15, sky: 15}, background: 0, text: {translate: "jkbg.uno.rule.penalty_stacking", color: "yellow"}}
summon interaction 1.0 101.25 -16.2 {Tags: ["jkbg", "jkbg_lobby_button", "jkbg_uno_rule_draw_stack"], response: true, height: 0.5, width: 0.5}
summon text_display 1.0 101.25 -15.99 {Tags: ["jkbg", "jkbg_lobby_button", "jkbg_uno_rule_draw_stack"], brightness: {block: 15, sky: 15}, background: 0}
scoreboard players remove #uno.rule.draw_stack jkbg.int 1
function jkbg:0_lobby/button/switcher {game: 'uno', id: 'draw_stack', F: {translate: "jkbg.enable.no", color: "red"}, T: {translate: "jkbg.enable.yes", color: "green"}}

# 质疑
summon text_display -1.0 101.5 -15.99 {Tags: ["jkbg"], brightness: {block: 15, sky: 15}, background: 0, text: {translate: "jkbg.uno.module.challenge.name", color: "yellow"}}
summon interaction -1.0 101.25 -16.2 {Tags: ["jkbg", "jkbg_lobby_button", "jkbg_uno_rule_challenge"], response: true, height: 0.5, width: 0.5}
summon text_display -1.0 101.25 -15.99 {Tags: ["jkbg", "jkbg_lobby_button", "jkbg_uno_rule_challenge"], brightness: {block: 15, sky: 15}, background: 0}
scoreboard players remove #uno.rule.challenge jkbg.int 1
function jkbg:0_lobby/button/switcher {game: 'uno', id: 'challenge', F: {translate: "jkbg.enable.no", color: "red"}, T: {translate: "jkbg.enable.yes", color: "green"}}

# 结束方式
summon text_display -3.0 101.5 -15.99 {Tags: ["jkbg"], brightness: {block: 15, sky: 15}, background: 0, text: {translate: "jkbg.uno.rule.end_condition.name", color: "yellow"}}
summon interaction -3.0 101.25 -16.2 {Tags: ["jkbg", "jkbg_lobby_button", "jkbg_uno_rule_end"], response: true, height: 0.5, width: 0.5}
summon text_display -3.0 101.25 -15.99 {Tags: ["jkbg", "jkbg_lobby_button", "jkbg_uno_rule_end"], brightness: {block: 15, sky: 15}, background: 0}
scoreboard players remove #uno.rule.end jkbg.int 1
function jkbg:0_lobby/button/switcher {game: 'uno', id: 'end', F: {translate: "jkbg.uno.rule.end_condition.first", color: "green"}, T: {translate: "jkbg.uno.rule.end_condition.all", color: "green"}}
