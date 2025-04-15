## 桌上的卡片
kill @e[tag=jkbg_uno_button]
kill @e[type=marker, tag=jkbg_uno_init]
kill @e[type=item_display, tag=jkbg_uno_card]

# 玩家
playsound entity.experience_orb.pickup player @a[distance=..10]
execute as @a[scores={jkbg.player.gametype=1}] run function jkbg:games/lobby/end

# 1*1大小
#execute align xyz run summon item_display ~.5 ~ ~.5 {Tags: ["jkbg", "jkbg_uno", "jkbg_uno_card"], item: {id: "paper", Count: 1, tag: {CustomModelData: 500}}, billboard: "vertical", glow_color_override: 16777215, Glowing: true, interpolation_duration: 100, transformation: {scale: [1f, 1f, 1f], translation: [0.25f, 0.51f, 0.12f], right_rotation: [1f, 0f, 0f, 0f], left_rotation: [0f, 0f, 1f, 0f]}}
# 3*5大小
execute align xyz run summon item_display ~.5 ~ ~.5 {Tags: ["jkbg", "jkbg_table", "jkbg_uno", "jkbg_uno_card"], item: {id: "paper", count: 1, components: {custom_model_data: 500}}, billboard: "vertical", glow_color_override: 16777215, Glowing: true, interpolation_duration: 100, transformation: {scale: [5f, 5f, 5f], translation: [1.25f, 2.6f, 0.65f], right_rotation: [1f, 0f, 0f, 0f], left_rotation: [0f, 0f, 1f, 0f]}}

# 默认规则
scoreboard players reset #uno.rule.samsara jkbg.int

# 按钮
execute align xyz run summon interaction ~.5 ~1.75 ~.5 {Tags: ["jkbg", "jkbg_uno", "jkbg_uno_button", "jkbg_uno_rule_samsara"], response: true, height: 0.5f, width: 0.5f}
execute align xyz run summon item_display ~.5 ~2 ~.5 {Tags: ["jkbg", "jkbg_uno", "jkbg_uno_button", "jkbg_uno_rule_samsara"], billboard: "center", transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.5f, .5f, .5f], translation: [0f, 0f, 0f]}, item: {id: apple}, CustomName: '{"text": "关闭", "color": "red"}', CustomNameVisible: true}
execute align xyz run summon text_display ~.5 ~2.75 ~.5 {Tags: ["jkbg", "jkbg_uno", "jkbg_uno_button", "jkbg_uno_rule_samsara"], billboard: "center", alignment: "center", line_width: 200, text: '{"text": "卡牌轮换", "color": "green"}'}
