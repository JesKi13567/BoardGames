## 桌上的卡片
kill @e[type=marker,tag=jkbg_uno_init]
kill @e[type=item_display,tag=jkbg_uno_card]

# 玩家
playsound entity.experience_orb.pickup player @a[distance=..10]
execute as @a[scores={jkbg.player.gametype=1,jkbg.player.state=1}] run function jkbg:games/lobby/end

# 1*1大小
#execute align xyz run summon item_display ~.5 ~ ~.5 {Tags:["jkbg","jkbg_uno","jkbg_uno_card"],item:{id:"paper",Count:1,tag:{CustomModelData:500}},billboard:"vertical",glow_color_override:16777215,Glowing:true,interpolation_duration:100,transformation:{scale:[1f,1f,1f],translation:[0.25f,0.51f,0.12f],right_rotation:[1f,0f,0f,0f],left_rotation:[0f,0f,1f,0f]}}
# 3*5大小
execute align xyz run summon item_display ~.5 ~ ~.5 {Tags:["jkbg","jkbg_uno","jkbg_uno_card"],item:{id:"paper",count:1,components:{custom_model_data:500}},billboard:"vertical",glow_color_override:16777215,Glowing:true,interpolation_duration:100,transformation:{scale:[5f,5f,5f],translation:[1.25f,2.6f,0.65f],right_rotation:[1f,0f,0f,0f],left_rotation:[0f,0f,1f,0f]}}

# 默认规则
scoreboard players reset #uno.rule.samsara jkbg.int
