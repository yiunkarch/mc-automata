# automata:automaton/change_direction

# fix position
execute align xyz run tp @s ~.5 ~ ~.5

# set rotation
data modify entity @s Rotation[0] set from entity @s ArmorItems[3].tag.automata.path[0]
execute at @s rotated as @s run tp @s ~ ~ ~ facing ^ ^ ^-1

data remove entity @s ArmorItems[3].tag.automata.path[0]

scoreboard players set @s automata.move 0
