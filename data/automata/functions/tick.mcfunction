# automata:tick

# plan path -> set direction -> move

# move automata that have a path planned
execute as @e[tag=automata.automaton] if data entity @s ArmorItems[3].tag.automata.path[0] at @s run function automata:automaton/move

# periodically re-calculate path to target
execute as @e[tag=automata.automaton,scores={automata.repath=100..}] at @s run function automata:automaton/find_target
scoreboard players add @e[tag=automata.automaton] automata.repath 1
