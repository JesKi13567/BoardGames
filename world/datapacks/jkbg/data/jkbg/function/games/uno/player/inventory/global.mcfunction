# 需保证交互时的玩家为可出牌的玩家
execute if data entity @s interaction run function jkbg:games/uno/player/inventory/used

data remove entity @s attack
data remove entity @s interaction
