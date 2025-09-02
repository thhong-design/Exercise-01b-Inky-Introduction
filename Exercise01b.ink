/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> cave_mouth

== cave_mouth ==
You are at the entrance to a cave. {torch_pickup: |There is a torch on the floor.} {weedwacker: |There is a weedwacker on the wall.} The cave extends to the east and west.
+ [Take the east tunnel] ->east_tunnel
+ [Take the west tunnel] ->west_tunnel
* [Pick up the torch] -> torch_pickup
* [Pick up weedwacker] -> weedwacker

== east_tunnel ==
You are in the east. It is very dark, you can't see anything. 

* {torch_pickup} [Light Torch] -> east_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

== west_tunnel ==
A hundred little people climb and bite at your ankles
* {weedwacker} [Use Weedwacker] -> used_weedwacker
+ [Go Back] -> cave_mouth
->END

=== torch_pickup ===
You now have a torch. May it light the way.
* [Go Back] -> cave_mouth
-> END


=== east_tunnel_lit ===
The light of your torch glints off of the thousands of coins in the room.
-> END

=== weedwacker ===
You now have a weewacker. Ankle high monsters stand no chance
* [Go Back] -> cave_mouth
-> END

=== used_weedwacker ===
You slay the little people, however you see a hundred more
* [Try to blend in] -> blend_in
* [Fight] -> fight_little_people
-> END

=== blend_in ===
you get on your knees and take their clothes hopeing they wont notice
* [Go into the room] -> treasure_room
-> END

=== fight_little_people ===
You start pulling the string desperately trying to start the weewacker, however you have ran out of fuel and are overwhelmed by the little people
-> END

=== treasure_room ===
You see a mountian of little gold 
-> END








