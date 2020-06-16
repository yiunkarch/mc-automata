# automata:tick

# periodically re-calculate path to target
execute as @e[tag=automata.automaton,scores={automata.repath=100..}] at @s run function automata:automaton/find_target
scoreboard players add @e[tag=automata.automaton] automata.repath 1
