# 固定道具
execute if items entity @s weapon.offhand #jkbg:uno/color_wool[custom_data={jkbg:["uno","color"]}] run function jkbg:games/uno/player/color/switch
execute unless items entity @s weapon.offhand warped_fungus_on_a_stick[custom_data={jkbg:["uno","use"]}] run function jkbg:games/uno/player/inventory/playing
execute unless items entity @s hotbar.7 paper[custom_data={jkbg:["uno","draw"]}] run function jkbg:games/uno/player/inventory/playing
execute unless items entity @s hotbar.8 #jkbg:uno/color_wool[custom_data={jkbg:["uno","color"]}] run function jkbg:games/uno/player/inventory/playing
