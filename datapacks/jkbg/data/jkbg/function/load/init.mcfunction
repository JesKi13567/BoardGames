# 第一次加载
scoreboard players set #load jkbg.int 1
scoreboard players set #-1 jkbg.int -1
scoreboard players set #100 jkbg.int 100

scoreboard objectives add jkbg.player.id dummy "玩家ID"
scoreboard objectives add jkbg.player.ready dummy "玩家准备游戏"
scoreboard objectives add jkbg.player.leave_game custom:leave_game "玩家离开游戏接口"
scoreboard objectives add jkbg.player.death deathCount "死亡接口"
scoreboard objectives add jkbg.leave trigger "玩家主动离开游戏"

# UNO
scoreboard objectives add jkbg.uno.draw dummy "玩家抓了牌"
scoreboard objectives add jkbg.uno.turn dummy "玩家回合"
scoreboard objectives add jkbg.uno.color dummy "玩家选择颜色"
scoreboard objectives add jkbg.uno.cards dummy "玩家卡牌数"
scoreboard objectives add jkbg.uno.score dummy "玩家分数"
scoreboard objectives add jkbg.uno.challenge dummy "玩家可质疑"

# 游戏规则（已在地图设定）
worldborder center 0.0 0.0
worldborder set 34
worldborder warning distance 0
worldborder warning time 0

tellraw @a ["", {text: "【桌游】", color: "green"}, {text: "数据包已更新。", color: "yellow"}]

function jkbg:games/uno/init
