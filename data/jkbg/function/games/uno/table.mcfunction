## 桌上的卡片
kill @e[type=item_display,tag=jk_uno_card]
#fill ~-2 ~1 ~-2 ~2 ~1 ~2 air
#execute align xzy run tp @a ~.5 ~1 ~.5 0 90
# 1*1大小
#execute align xyz run summon item_display ~.5 ~1 ~.5 {Tags:["jk_uno","jk_uno_card"],item:{id:"paper",Count:1,tag:{CustomModelData:500}},billboard:"vertical",glow_color_override:16777215,Glowing:1b,interpolation_duration:100,transformation:{scale:[1f,1f,1f],translation:[0.25f,0.51f,0.12f],right_rotation:[1f,0f,0f,0f],left_rotation:[0f,0f,1f,0f]}}
# 3*4大小
execute align xyz run summon item_display ~.5 ~1 ~.5 {Tags:["jk_uno","jk_uno_card"],item:{id:"paper",count:1,components:{custom_model_data:500}},billboard:"vertical",glow_color_override:16777215,Glowing:1b,interpolation_duration:100,transformation:{scale:[5f,5f,5f],translation:[1.25f,2.6f,0.65f],right_rotation:[1f,0f,0f,0f],left_rotation:[0f,0f,1f,0f]}}

# 调整用按钮
