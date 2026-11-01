scoreboard players set #uno.group jkbg.int 8

# 围挡
fill -8 101 -16 -8 101 15 barrier
fill 7 101 -16 7 101 15 barrier
fill -1 101 -16 0 101 15 barrier
fill -16 101 -8 15 101 -8 barrier
fill -16 101 -1 15 101 0 barrier
fill -16 101 7 15 101 7 barrier

summon item_display 0.0 103.0 -11.0 {Tags: ["jkbg", "jkbg_lobby_deco"], brightness: {block: 15, sky: 15}, item: {id: "black_concrete"}, transformation: {left_rotation: [0, 0, 0, 1], right_rotation: [0, 0, 0, 1], scale: [0, 6, 8], translation: [0, 0, 0]}}
summon item_display 0.0 103.0 11.0 {Tags: ["jkbg", "jkbg_lobby_deco"], brightness: {block: 15, sky: 15}, item: {id: "black_concrete"}, transformation: {left_rotation: [0, 0, 0, 1], right_rotation: [0, 0, 0, 1], scale: [0, 6, 8], translation: [0, 0, 0]}, Rotation: [180, 0]}
summon item_display -11.0 103.0 0.0 {Tags: ["jkbg", "jkbg_lobby_deco"], brightness: {block: 15, sky: 15}, item: {id: "black_concrete"}, transformation: {left_rotation: [0, 0, 0, 1], right_rotation: [0, 0, 0, 1], scale: [0, 6, 8], translation: [0, 0, 0]}, Rotation: [90, 0]}
summon item_display 11.0 103.0 0.0 {Tags: ["jkbg", "jkbg_lobby_deco"], brightness: {block: 15, sky: 15}, item: {id: "black_concrete"}, transformation: {left_rotation: [0, 0, 0, 1], right_rotation: [0, 0, 0, 1], scale: [0, 6, 8], translation: [0, 0, 0]}, Rotation: [-90, 0]}

# 玩家座位
execute as @p[scores={jkbg.player.id=1}] positioned 4.0 100.0 -11.0 rotated 0 0 run function jkbg:1_uno/start/group/seat {yaw: 0, brot: 0, mem: 1}
execute as @p[scores={jkbg.player.id=2}] positioned -4.0 100.0 -11.0 rotated 0 0 run function jkbg:1_uno/start/group/seat {yaw: 0, brot: 0, mem: 2}
execute as @p[scores={jkbg.player.id=3}] positioned -11.0 100.0 -4.0 rotated 270 0 run function jkbg:1_uno/start/group/seat {yaw: 270, brot: 90, mem: 3}
execute as @p[scores={jkbg.player.id=4}] positioned -11.0 100.0 4.0 rotated 270 0 run function jkbg:1_uno/start/group/seat {yaw: 270, brot: 90, mem: 4}
execute as @p[scores={jkbg.player.id=5}] positioned -4.0 100.0 11.0 rotated 180 0 run function jkbg:1_uno/start/group/seat {yaw: 180, brot: 0, mem: 5}
execute as @p[scores={jkbg.player.id=6}] positioned 4.0 100.0 11.0 rotated 180 0 run function jkbg:1_uno/start/group/seat {yaw: 180, brot: 0, mem: 6}
execute as @p[scores={jkbg.player.id=7}] positioned 11.0 100.0 4.0 rotated 90 0 run function jkbg:1_uno/start/group/seat {yaw: 90, brot: 90, mem: 7}
execute as @p[scores={jkbg.player.id=8}] positioned 11.0 100.0 -4.0 rotated 90 0 run function jkbg:1_uno/start/group/seat {yaw: 90, brot: 90, mem: 8}

# 排行榜
kill @e[tag=jkbg_rank]
summon text_display 5.0 104.6 15.99 {Tags: ["jkbg", "jkbg_rank", "1"], brightness: {block: 15, sky: 15}, background: 0, text: {text: "1", color: "yellow"}, view_range: 0, Rotation: [180, 0]}
summon text_display 5.0 103.6 15.99 {Tags: ["jkbg", "jkbg_rank", "2"], brightness: {block: 15, sky: 15}, background: 0, text: {text: "2", color: "yellow"}, view_range: 0, Rotation: [180, 0]}
summon text_display 5.0 102.6 15.99 {Tags: ["jkbg", "jkbg_rank", "3"], brightness: {block: 15, sky: 15}, background: 0, text: {text: "3", color: "yellow"}, view_range: 0, Rotation: [180, 0]}
summon text_display 5.0 101.6 15.99 {Tags: ["jkbg", "jkbg_rank", "4"], brightness: {block: 15, sky: 15}, background: 0, text: {text: "4", color: "yellow"}, view_range: 0, Rotation: [180, 0]}
summon item_display 4.0 105.0 16.1 {Tags: ["jkbg", "jkbg_rank", "1"], brightness: {block: 15, sky: 15}, item: {id: "player_head"}, view_range: 0}
summon item_display 4.0 104.0 16.1 {Tags: ["jkbg", "jkbg_rank", "2"], brightness: {block: 15, sky: 15}, item: {id: "player_head"}, view_range: 0}
summon item_display 4.0 103.0 16.1 {Tags: ["jkbg", "jkbg_rank", "3"], brightness: {block: 15, sky: 15}, item: {id: "player_head"}, view_range: 0}
summon item_display 4.0 102.0 16.1 {Tags: ["jkbg", "jkbg_rank", "4"], brightness: {block: 15, sky: 15}, item: {id: "player_head"}, view_range: 0}
summon text_display 2.0 104.6 15.99 {Tags: ["jkbg", "jkbg_rank", "player_name", "1"], brightness: {block: 15, sky: 15}, background: 0, view_range: 0, Rotation: [180, 0]}
summon text_display 2.0 103.6 15.99 {Tags: ["jkbg", "jkbg_rank", "player_name", "2"], brightness: {block: 15, sky: 15}, background: 0, view_range: 0, Rotation: [180, 0]}
summon text_display 2.0 102.6 15.99 {Tags: ["jkbg", "jkbg_rank", "player_name", "3"], brightness: {block: 15, sky: 15}, background: 0, view_range: 0, Rotation: [180, 0]}
summon text_display 2.0 101.6 15.99 {Tags: ["jkbg", "jkbg_rank", "player_name", "4"], brightness: {block: 15, sky: 15}, background: 0, view_range: 0, Rotation: [180, 0]}
execute if score #uno.rule.end jkbg.int matches 0 run summon text_display 4.5 103.6 15.99 {Tags: ["jkbg", "jkbg_rank", "player_score", "2"], brightness: {block: 15, sky: 15}, background: 0, view_range: 0, Rotation: [180, 0]}
execute if score #uno.rule.end jkbg.int matches 0 run summon text_display 4.5 102.6 15.99 {Tags: ["jkbg", "jkbg_rank", "player_score", "3"], brightness: {block: 15, sky: 15}, background: 0, view_range: 0, Rotation: [180, 0]}
execute if score #uno.rule.end jkbg.int matches 0 run summon text_display 4.5 101.6 15.99 {Tags: ["jkbg", "jkbg_rank", "player_score", "4"], brightness: {block: 15, sky: 15}, background: 0, view_range: 0, Rotation: [180, 0]}

summon text_display -5.0 104.6 15.99 {Tags: ["jkbg", "jkbg_rank", "5"], brightness: {block: 15, sky: 15}, background: 0, text: {text: "5", color: "yellow"}, view_range: 0, Rotation: [180, 0]}
summon text_display -5.0 103.6 15.99 {Tags: ["jkbg", "jkbg_rank", "6"], brightness: {block: 15, sky: 15}, background: 0, text: {text: "6", color: "yellow"}, view_range: 0, Rotation: [180, 0]}
summon text_display -5.0 102.6 15.99 {Tags: ["jkbg", "jkbg_rank", "7"], brightness: {block: 15, sky: 15}, background: 0, text: {text: "7", color: "yellow"}, view_range: 0, Rotation: [180, 0]}
summon text_display -5.0 101.6 15.99 {Tags: ["jkbg", "jkbg_rank", "8"], brightness: {block: 15, sky: 15}, background: 0, text: {text: "8", color: "yellow"}, view_range: 0, Rotation: [180, 0]}
summon item_display -4.0 105.0 16.1 {Tags: ["jkbg", "jkbg_rank", "5"], brightness: {block: 15, sky: 15}, item: {id: "player_head"}, view_range: 0}
summon item_display -4.0 104.0 16.1 {Tags: ["jkbg", "jkbg_rank", "6"], brightness: {block: 15, sky: 15}, item: {id: "player_head"}, view_range: 0}
summon item_display -4.0 103.0 16.1 {Tags: ["jkbg", "jkbg_rank", "7"], brightness: {block: 15, sky: 15}, item: {id: "player_head"}, view_range: 0}
summon item_display -4.0 102.0 16.1 {Tags: ["jkbg", "jkbg_rank", "8"], brightness: {block: 15, sky: 15}, item: {id: "player_head"}, view_range: 0}
summon text_display -2.0 104.6 15.99 {Tags: ["jkbg", "jkbg_rank", "player_name", "5"], brightness: {block: 15, sky: 15}, background: 0, view_range: 0, Rotation: [180, 0]}
summon text_display -2.0 103.6 15.99 {Tags: ["jkbg", "jkbg_rank", "player_name", "6"], brightness: {block: 15, sky: 15}, background: 0, view_range: 0, Rotation: [180, 0]}
summon text_display -2.0 102.6 15.99 {Tags: ["jkbg", "jkbg_rank", "player_name", "7"], brightness: {block: 15, sky: 15}, background: 0, view_range: 0, Rotation: [180, 0]}
summon text_display -2.0 101.6 15.99 {Tags: ["jkbg", "jkbg_rank", "player_name", "8"], brightness: {block: 15, sky: 15}, background: 0, view_range: 0, Rotation: [180, 0]}
execute if score #uno.rule.end jkbg.int matches 0 run summon text_display -4.5 104.6 15.99 {Tags: ["jkbg", "jkbg_rank", "player_score", "5"], brightness: {block: 15, sky: 15}, background: 0, view_range: 0, Rotation: [180, 0]}
execute if score #uno.rule.end jkbg.int matches 0 run summon text_display -4.5 103.6 15.99 {Tags: ["jkbg", "jkbg_rank", "player_score", "6"], brightness: {block: 15, sky: 15}, background: 0, view_range: 0, Rotation: [180, 0]}
execute if score #uno.rule.end jkbg.int matches 0 run summon text_display -4.5 102.6 15.99 {Tags: ["jkbg", "jkbg_rank", "player_score", "7"], brightness: {block: 15, sky: 15}, background: 0, view_range: 0, Rotation: [180, 0]}
execute if score #uno.rule.end jkbg.int matches 0 run summon text_display -4.5 101.6 15.99 {Tags: ["jkbg", "jkbg_rank", "player_score", "8"], brightness: {block: 15, sky: 15}, background: 0, view_range: 0, Rotation: [180, 0]}
