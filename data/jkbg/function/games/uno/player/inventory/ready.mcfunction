scoreboard players set @s jkbg.player.state 0
scoreboard players set @s jkbg.player.gametype 1
title @s times 0 2s 0
title @s title ""
title @s subtitle ""

# 游戏准备提示
title @s[scores={jkbg.player.ready=0}] actionbar ["", {"text": "望天准备游玩，看地取消准备！ 当前游戏：", "color": "gold"}, "UNO"]
title @s[scores={jkbg.player.ready=1}] actionbar ["UNO", {"text": " 已准备人数：", "color": "green"}, {"score": {"name": "#uno.players", "objective": "jkbg.int"}, "color": "gold"}]

execute if score #uno.countdown jkbg.int matches 1.. run title @s[scores={jkbg.player.ready=1}] subtitle [{"text": "倒计时：", "color": "green"}, {"score": {"name": "#uno.countdown", "objective": "jkbg.int"}, "color": "gold"}]

# 一次性提示
tellraw @s[scores={jkbg.player.ready=0},x_rotation=-90..-89] ["", {"text": "【JKの桌游】", "color": "green"}, {"text": "你参加了 UNO 游戏，游戏规则：\n总人数2~10，保持和上家的牌颜色/数字/功能一致即可打出，否则抓牌。", "color": "yellow"}, {"text": "\n中途离开会直接结束游戏，输入/trigger jkbg.leave。", "color": "white"}]
tellraw @s[scores={jkbg.player.ready=1},x_rotation=89..90] ["", {"text": "【JKの桌游】", "color": "green"}, {"text": "你已取消游玩 UNO。", "color": "yellow"}]

scoreboard players set @s[x_rotation=-90..-89] jkbg.player.ready 1
scoreboard players set @s[x_rotation=89..90] jkbg.player.ready 0
