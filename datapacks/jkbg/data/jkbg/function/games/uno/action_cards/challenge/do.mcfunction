# 检查能否质疑
execute unless score @s jkbg.uno.challenge matches 1 run return run function jkbg:games/uno/action_cards/challenge/cannot

# 成功
execute if score #uno.id.color.challenge jkbg.int matches 1 run function jkbg:games/uno/action_cards/challenge/success

# 失败
execute unless score #uno.id.color.challenge jkbg.int matches 1 run function jkbg:games/uno/action_cards/challenge/fail
