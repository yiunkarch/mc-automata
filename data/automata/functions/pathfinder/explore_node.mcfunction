# automata:pathfinder/explore_node

# untag to prevent re-exploration
tag @s remove automata.path.open

# calculate the h value for the neighbouring nodes
scoreboard players operation #next automata.path.g = @s automata.path.g
scoreboard players add #next automata.path.g 1

# place neighbouring nodes
execute align xyz positioned ~-1 ~ ~ if block ~ ~ ~ air run function automata:pathfinder/place_node
execute align xyz positioned ~1 ~ ~ if block ~ ~ ~ air run function automata:pathfinder/place_node
execute align xyz positioned ~ ~ ~-1 if block ~ ~ ~ air run function automata:pathfinder/place_node
execute align xyz positioned ~ ~ ~1 if block ~ ~ ~ air run function automata:pathfinder/place_node
