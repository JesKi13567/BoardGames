# 第一次加载
tellraw @a ["", {translate: "jkbg.lobby.bg", color: "green"}, {translate: "jkbg.datapack.init", color: "yellow"}]

scoreboard players set #load jkbg.int 1
scoreboard players set #-1 jkbg.int -1
scoreboard players set #100 jkbg.int 100

# 游戏规则
gamerule advance_time false
time set midnight
gamerule advance_weather false
weather clear
gamerule immediate_respawn true
gamerule pvp false
gamerule locator_bar false
gamerule send_command_feedback false

worldborder center 0.0 0.0
worldborder set 34
worldborder warning distance 0
worldborder warning time 0

# 0 lobby
scoreboard objectives add jkbg.player.id dummy "玩家ID"
scoreboard objectives add jkbg.player.ready dummy "玩家准备游戏"
scoreboard objectives add jkbg.player.leave_game custom:leave_game "玩家离开游戏接口"
scoreboard objectives add jkbg.player.death deathCount "死亡接口"
scoreboard objectives add jkbg.leave trigger "玩家主动离开游戏"

# 1 UNO
scoreboard objectives add jkbg.uno.draw dummy "玩家抓了牌"
scoreboard objectives add jkbg.uno.turn dummy "玩家回合"
scoreboard objectives add jkbg.uno.color dummy "玩家选择颜色"
scoreboard objectives add jkbg.uno.cards dummy "玩家卡牌数"
scoreboard objectives add jkbg.uno.score dummy "玩家分数"
scoreboard objectives add jkbg.uno.challenge dummy "玩家可质疑"

# 其他分数
function jkbg:0_lobby/end

kill @e[type=!player]

# 开始游戏
summon text_display 0.0 101.25 0.0 {Tags: ["jkbg", "jkbg_lobby_button", "start"], brightness: {block: 15, sky: 15}, billboard: "vertical"}
summon interaction 0.0 101.25 0.0 {Tags: ["jkbg", "jkbg_lobby_button", "start"], response: true, height: 0.5, width: 0.5}

scoreboard players set #uno.rule.draw_stack jkbg.int 1
scoreboard players set #uno.rule.challenge jkbg.int 1
scoreboard players set #uno.rule.end jkbg.int 0
function jkbg:1_uno/init
