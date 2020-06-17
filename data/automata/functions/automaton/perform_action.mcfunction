# automata:automaton/perform_action

tp @s ~ ~ ~ facing entity @e[type=creeper,sort=nearest,limit=1]

particle sweep_attack ^ ^ ^1

kill @e[type=creeper,sort=nearest,limit=1]
