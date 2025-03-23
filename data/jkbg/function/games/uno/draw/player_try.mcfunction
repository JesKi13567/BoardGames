# 玩家尝试抓牌，判断牌数够不够抓
execute if score #uno.cards.all jkbg.int >= #uno.cards.add jkbg.int run function jkbg:games/uno/draw/player_loop
execute unless score #uno.rule.samsara jkbg.int matches 1 if score #uno.cards.all jkbg.int < #uno.cards.add jkbg.int run function jkbg:games/uno/end/no_remain_cards
execute if score #uno.rule.samsara jkbg.int matches 1 if score #uno.cards.all jkbg.int < #uno.cards.add jkbg.int run function jkbg:games/uno/draw/refresh_cards
