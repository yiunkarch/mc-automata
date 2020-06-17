# automata:automaton/change_direction

# fix position
execute align xyz run tp @s ~.5 ~ ~.5

# set rotation
data modify entity @s Rotation[0] set from entity @s ArmorItems[3].tag.automata.path[0]
execute at @s rotated as @s run tp @s ~ ~ ~ facing ^ ^ ^-1

data remove entity @s ArmorItems[3].tag.automata.path[0]

scoreboard players set @s automata.move 0

# perform action
execute unless data entity @s ArmorItems[3].tag.automata.path[0] at @s if entity @e[type=creeper,distance=..2] run function automata:automaton/perform_action
