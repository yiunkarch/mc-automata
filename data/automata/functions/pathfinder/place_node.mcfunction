# automata:pathfinder/place_node

# summon node if not exists
execute unless entity @e[tag=automata.path,dx=0,dy=0,dz=0] run function automata:pathfinder/create_new_node

# set new node g value
execute unless score #next automata.path.g >= @e[tag=automata.path,limit=1,dx=0,dy=0,dz=0] automata.path.g run function automata:pathfinder/assign_parent
