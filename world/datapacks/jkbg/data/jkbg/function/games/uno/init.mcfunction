# 大厅初始化
kill @e[type=!player]
function jkbg:games/lobby/init

# 游戏种类 1
scoreboard players set #lobby.gametype jkbg.int 1

# 牌显示
summon item_display 0.0 100.0 0.0 {Tags: ["jkbg", "jkbg_uno_card"], brightness: {block: 15, sky: 15}, item: {id: "paper", components: {"custom_model_data": {strings: ["500"]}}}, billboard: "vertical", transformation: {scale: [5f, 5f, 5f], translation: [1.25f, 2.6f, -3.5f], right_rotation: [1f, 0f, 0f, 0f], left_rotation: [0f, 0f, 1f, 0f]}, Rotation: [0f, 90f], view_range: 0}

# 介绍
summon text_display 0.0 104.0 -15.99 {Tags: ["jkbg", "jkbg_lobby"], brightness: {block: 15, sky: 15}, transformation: {scale: [4f, 4f, 4f], translation: [0f, 0f, 0f], right_rotation: [0f, 0f, 0f, 1f], left_rotation: [0f, 0f, 0f, 1f]}, background: 0, text: [{text: "U", color: "red"}, {text: "N", color: "blue"}, {text: "O", color: "green"}]}
summon text_display 0.0 102.0 -15.99 {Tags: ["jkbg", "jkbg_lobby"], brightness: {block: 15, sky: 15}, background: 0, line_width: 1000, text: [{text: "保持和上家的牌颜色/数字/功能一致即可打出，否则抓牌。", color: "yellow"}, {text: "\n支持 2~8 人。", color: "gold"}, {text: "\n手动输入 /trigger jkbg.leave 可结束游戏。", color: "white"}]}

# 按钮
function jkbg:games/uno/button/init
