# automata:pathfinder/step

execute as @e[tag=automata.path.open] at @s run function automata:pathfinder/explore_node

kill @e[tag=automata.path,scores={automata.path.g=8..}]

execute if entity @e[tag=automata.path.open] run function automata:pathfinder/step
