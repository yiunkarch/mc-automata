# automata:pathfinder/step

# find open node with lowest f value
scoreboard players set @e[tag=automata.path.open,limit=1] automata.path.p 1
execute as @e[tag=automata.path.open] if score @s automata.path.f < @e[tag=automata.path.open,scores={automata.path.p=1},limit=1] automata.path.f run scoreboard players operation @s automata.path.p >< @e[tag=automata.path.open,scores={automata.path.p=1},limit=1] automata.path.p

execute as @e[tag=automata.path.open,scores={automata.path.p=1},limit=1] at @s run function automata:pathfinder/explore_node

kill @e[tag=automata.path,scores={automata.path.g=8..}]

execute if entity @e[tag=automata.path.open] unless entity @e[tag=automata.path,scores={automata.path.h=0}] run function automata:pathfinder/step
