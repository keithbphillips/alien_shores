"Alien Shores...." by "Keith B Phillips....[stone]"

Include Rideable Vehicles by Graham Nelson.

The carrying capacity of the player is 2.

helping is an action applying to nothing. Understand "help" as helping.

Before helping:
	say "You can move your character by using the words, North, East, West or South.  You can check to see what you are holding by saying the word, inventory. You can interact with objects by saying something like, take the object, or you can interact with things by saying something like, cut the rope with the knife, or, put the stick on the rock. If you need more detailed help, try reading the cruise brochure that you were given when you boarded the ship.";

firewood is a thing. The description of the firewood is "This is the bundle of dry branches that you collected." A spear is a supporter. The spear is portable. The description of the spear is "This is the spear that you fashioned from a green sapling." The carrying capacity of the spear is 1.

brochure is a container. The description of the brochure is "This is the brochure that you were given when you boarded the ship. There appears to be a section for what to do in the case of an emergency."

A page is kind of thing. A move page is a kind of page. A game page is a kind of page. An object page is a kind of thing. The brochure contains a move page, a game page, and an object page.

The description of the move page is "The page reads... On your tour of the ship you can move about by saying, North, East, West, or South. You can also say, Up or Down, or Climb."

The description of the game page is "The page reads... Welcome to your cruise with Pacifica!  We hope you enjoy your stay with us.  At any time you can save the game by saying, Save.  You can restore to that point by saying, Restore. If you want to quit the game, you can say, Quit, or Cancel, or Stop. Quiting the game will automatically save your progress.  If you quit the game and come back to it later, your game will automatically resume from where you left off."

The description of the object page is "The page reads... During your cruise with Pacifica, you will need to interact with other people, animals, or things.  You can do so by speaking in plain words, such as: get the glass, or take the glass.  You can put things into containers, or put objects on to others. You can manipulate the objects by turning, twisting, throwing, poking, stabbing,... etcetera."

bug is a thing. 

Before taking the bug:
	now player is on the wood;
	remove the bug from play;
	move wood to White Sand Beach;
	move the jacket to White Sand Beach;
	move the stick to the White Sand Beach;
	now the exposure of the player is 4;
	move the player to White Sand Beach;
	
player has a number called exposure.  The exposure of the player is usually 1.

When play begins: 
	now the command prompt is "What next?  You can say, help, to get more information on how to play.";
	say ".... You are floating in the middle of a tropical ocean.  You hoped that the cruise ship would notice you were missing, but it's been hours, and no ship has appeared on the horizon.";
	move the brochure to the player;

After inserting the stick into the knothole:
	say "You place the driftwood stick into the knothole. It's a tight fit, but you manage it. Your little plank surfboard now has a mast.";
	if the jacket is on the stick:
		say "The wind catches the jacket and pulls you along over the waves.";
		now the wood is in the Journeying on the Waves;
		now the player is on the wood.
		
After putting the jacket on the stick:
	say "You drape the jacket over the stick by the collar.";
	if the stick is in the knothole:
		say "The wind catches the jacket and pulls you along over the waves.";
		now the wood is in the Journeying on the Waves;
		now the player is on the wood.

The Ocean is a backdrop.  It is in the Ocean Waves, Rippling Waves, Open Water, More Open Water, Even More Open Water, Rushing Waves, and Glittering Waves. "The ocean is vast and wide. Waves undulate over it."

Ocean Waves is a room. ".... [if the player is not on wood] You lay on your back in the warm water as your body floats up and down the rythmic waves. The hot sun beats down on you and there is not a cloud in the clear blue sky.[otherwise] The water laps at the plank you sit on, rocking you up and down. You can see a dark object bobbing on the surface to the North." Instead of going nowhere from the Ocean Waves, say "You begin to paddle in that direction, but without a plan or destination you soon lose hope and return."

A stone is a thing. The printed name of the stone is "Say look, or north, east, west south to move."


Rippling Waves is west of Ocean Waves and southwest of Glittering Waves. ".... [if player is not on wood] You see a piece of wood about six feet in length. You swim over and cling to it gratefully. You look at the wood, and a surge of hope goes through you. This is actually a wide board that has been roughly hewn from a log.[otherwise] You are sitting on a rough board about six feet in length. All around you is ocean and sky."   A piece of wood is here. Understand "plank" as a wood. Understand "would" as a wood. Understand "board" as a wood. Understand "bored" as a wood. The description of the piece of wood is "It's a sturdy wide plank with a round knothole in the middle of it." The piece of wood is a rideable vehicle. The knothole is a container. The carrying capacity of the knothole is 1.The knothole is part of the piece of wood. The knothole is scenery. Understand "hole" as a knothole.
  Instead of going nowhere from the Rippling Waves, say "You begin to paddle in that direction but without a plan or destination you soon lose hope and return."

Before mounting the wood:
	say "Thank goodness!  You were getting exhausted just trying to stay a float.";
	Now the exposure of the player is 2.

Before getting off the wood:
	if the exposure of the player is 2:
		say "A dark ominous shape swims up from below and you suddenly decide that it would be better not to get back into the water.";
		stop the action.
	
Before taking the jacket:
	if the jacket is on the body:
		say "The body is badly decayed. You can't tell if it was male or female.  Your stomach churns from the smell, but you grit your teeth and strip the jacket off.";

Open Water is east of Ocean Waves and south of Even More Open Water. ".... [if the player is not on wood and the exposure of the player is 1] You continue to swim. All that effort is making you really tired. If only you had something to float on.[end if] Nothing but more ocean can be seen in all directions." 
   Instead of going nowhere from the Open Water, say "You begin to paddle in that direction but without a plan or destination you soon lose hope and return."

More Open Water is south of Ocean Waves and southwest of Open Water. ".... [if player is not on wood] You tread water to stay a float. You're getting tired. [end if] Nothing but more ocean can be seen in all directions."
  Instead of going nowhere from the More Open Water, say "You begin to paddle in that direction but without a plan or destination you soon lose hope and return."

Glittering Waves is north of Ocean Waves and west of Even More Open Water. ".... [if player is not on wood] You tread water, and you are getting exhausted. [end if] What is left of a human body floats on the surface here.  Something has been eating it." A body is here and scenery. "The body floats face down.  Something has taken a chunk out of its side." On it is a jacket. The description of the jacket is "It's an olive-drav green military fatigue jacket with oversized pockets." The jacket is portable and wearable. The container called pocket is part of the jacket. The carrying capacity of the pocket is 4. In the pocket is a knife. In the pocket is a book of matches. Understand "matches" as book of matches. The description of the knife is "This is a swiss army knife with a familiar red handle. It has multiple blades and tools."  The description of the book of matches is "It's a book of twenty waterproof matches.". Understand "pockets" as the pocket.  Instead of going nowhere from the Glittering Waves, say "You begin to paddle in that direction but without a plan or destination you soon lose hope and return."

Before taking something:
	If the exposure of the player is 1, say "You can't hold the [noun] and swim. You can barely stay above water as it is." instead.
	
Even More Open Water is northeast of Ocean Waves. ".... [if player is not on wood and the exposure of the player is 1] You continue to swim and are getting tired. [end if] There is a stick of very wet driftwood here, about six feet long and and three inches thick." A stick is here. It is a supporter. It is portable.
  Instead of going nowhere from the Even More Open Water, say "You begin to paddle in that direction but without a plan or destination you soon lose hope and return."

Rushing Waves is a room. "....You rush along the tops of the waves as an east wind blows your makeshift sail.  The sail is in the center position and the wind fills it nicely. The board is slippery and wet and hits the occasional wave just so, sending a spray into your face, almost knocking you from the board. You cling to the fragile looking stick of driftwood desperately hoping that it will hold and keep you on the board."
  Instead of going nowhere from Rushing Waves, say "You begin to paddle in that direction but without a plan or destination you soon lose hope and return."

A wind has a number called vector. The vector of the wind is usually 2. 

Island has a number called vector. The vector of the island is usually 2. 

Every turn:					
	if the player is not in the Ocean Waves for more than 1 turns:
		now the command prompt is "What next? : ";
	if the exposure of the player is 1 for 2 turns:
		say "You deeply regret trying to stop your phone from falling over the railing of the ship. Now look what's happened.";
	if the exposure of the player is 1 for exactly 3 turns:
		say "This really sucks. You could be kicking back right now having an ice-cold drink in the ship's lounge.";
	if the exposure of the player is 1 for exactly 4 turns:
		say "At least one good thing has come of all this, you won't have to worry about ending your vacation any time soon.";
	If the wood has been in Rushing Waves for 1 turns:
		now the wood is in Journeying On The Waves;
	if the exposure of the player is 1 and the player is not in Rippling Waves for 8 turns :
		say "You're getting so tired, and the waves are kicking up some in the wind. You have to get out of the water soon.";
	If the exposure of the player is 1 and the player is not in Rippling Waves for exactly 10 turns :
		say "You are suddenly exhausted, you try to resume floating on your back again, but the waves are higher now and sweep you under.  You reach for the surface as you sink into the gloom.";
		end the story saying "You have drowned.";
	If the exposure of the player is 2 for more than 25 turns:
		say "A grey fin emerges from the waves. Adrenaline kicks in, but you manage to hold yourself together.  You guide your make-shift sailboard away from the creature until the fin submerges. For a moment you feel somewhat relieved, and then you wonder where the creature has gone to.";
	If the exposure of the player is 2 for 30 turns:
		say "Suddenly the shark reappears next to your board.  This time it is too quick.  Eons of evolution has turned it into the perfect predator. You look over and see a big toothy grin. You imagine he's your pal, just surfing along with you on the waves, having a good time. It's easier that way.  The end comes in the blink of eye.";
		end the story saying "You have been eaten.";
		
Journeying On The Waves is a room. ".... A brisk [wind] is blowing and the sun hangs low in the sky. [island]". Instead of going nowhere from Journeying on the Waves, say "You continue to sail toward the island in the west, and you watch the wind pushing the sail to see if you need to turn it left or right. [the description of Journeying On The Waves]".
 
The sail has a number called position. The position of the sail is usually 2. Wood has a number called course. The course of the wood is usually 0. Wood has a number called old. The vector of the wind is usually 2. The printed name of the wind is "east wind". The printed name of the sail is "centered positioned sail". The printed name of the island is "In the distance you can barely make out the shape of an island jutting above the waves".

Every turn when the wood is in Journeying On The Waves:
	now the vector of the island is the vector of the wind - position of the sail;
	if a random chance of 1 in 3 succeeds:	
		now the old of the wood is vector of the wind;
		now the vector of the wind is a random number from 1 to 3;
		if the vector of the wind is 1:
			now the printed name of the wind is "northeast wind";
		if the vector of the wind is 2:
			now the printed name of the wind is "east wind";
		if the vector of the wind is 3:
			now the printed name of the wind is "southeast wind";
		if the old of the wood is the vector of the wind:
			say "A [wind] continues to blow.";
		else:
			say "The wind suddenly shifts to [wind]!";
		now the vector of the island is the vector of the wind - position of the sail;
	if the vector of the island is 0:
		now the printed name of the island is "You speed ahead toward the island as the wind catches your [sail].";
		now the course of the wood is the course of the wood + 1;
	otherwise:
		now the printed name of the island is "Your speed toward the island has slowed to a crawl.";
	if the course of the wood is less than 3, say "There is the faint outline of an island in the distance.";	
	if the course of the wood is greater than 3 and the course of the wood is less than 6: 
		say "The island is getting closer.";	
	if the course of the wood is greater than 6 and the course of the wood is less than 10: 
		say "You've almost made it to the island.";
	if the course of the wood is 10:
		now the wood is on the White Sand Beach;
		now the exposure of the player is 3;						

 The sail is here.
 Wood has a number called course. The course of the wood is usually 0. 
 Turnleft is an action applying to one visible thing and requiring light.
 Turnright is an action applying to one visible thing and requiring light.
 Understand "mast" as a sail.
 Understand "sale" as a sail.
 Understand "turn [sail] left" as turnleft.
 Understand "turn [sail] right" as turnright. 

 After turnleft:
	if the position of the sail greater than 1:
		now the position of the sail is the position of the sail - 1;
	say "You twist the mast slightly to the left.";
	if the position of the sail is 1:
		now the printed name of the sail is "left positioned sail";
	if the position of the sail is 2:
		now the printed name of the sail is "centered positioned sail";
	if the position of the sail is 3:
		now the printed name of the sail is "right positioned sail";
		
 After turnright:
	if the position of the sail less than 3:
		now the position of the sail is the position of the sail + 1;		
	say "You twist the mast slightly to the right.";
	if the position of the sail is 1:
		now the printed name of the sail is "left positioned sail";
	if the position of the sail is 2:
		now the printed name of the sail is "centered positioned sail";
	if the position of the sail is 3:
		now the printed name of the sail is "right positioned sail";
			
White Sand Beach is a room. ".... You are on a beautiful island beach. To the east there is nothing but ocean for as far as the eye can see. The beach extends north and south.  To the west is a lush jungle of green vegetation."  A palm tree is here.

Every turn when the exposure of the player is 3: 
	If the exposure of the player is 3 for 5 turns:
		say "The sun continues to sink slowly into the west behind the tree line, and twilight covers the island.  You hear noises in the jungle of things moving about the underbrush. A primal part of your brain kicks in as your heart rate goes up.";
	If the exposure of the player is 3 for 7 turns:
		say "Darkness covers the island, and the stars stand out brightly in the canvas of the sky.  The things going bump in the night haven't killed you yet and you've had an extemely long day. You find your eyelids slipping closed and your head nods.  You fight to stay awake, worried about the unknown, but you are so tired that you don't care any more.  You fall into a deep, restful and dreamless sleep.";
		say "You awake with the sun shining hotly into your eyes from the east.  You get up and stretch.  A deep yawn escapes your lips, and then your stomach growls ominously with out warning. You are incredibly hungry, and a bit thirsty too.";
		now the exposure of the player is 4;
		
Every turn when the exposure of the player is 4:
	if the exposure of the player is 4 for less than 2 turns:
		say "Your stomach aches with hunger. You better find something to eat soon.";
	if the exposure of the player is 4 for more than 45 turns:
		end the story saying "You have died from hunger.";

Before going somewhere from White Sand Beach:
	if the player is on the wood:
		say "You can't sail on land. You should probably get off the board." instead;

North Beach is north of White Sand Beach. ".... You are on the beach a little ways from where you came ashore.  You can see your sailboard to the south. The palm trees whisper in the wind to the west in the lush jungle, and the surf washes up the shore from the east."  The Sea Turtle is a rideable animal in the North Beach. Understand "Turtle" as a Sea Turtle. The description of the Sea Turtle is "The Sea Turtle is about four feet around and has a colorful dark green shell. Her flippered legs propel her forward as she shuffles accross the beach toward a low sandy mound near the tree line to the west. She turns a large intelligent eye at you for a few seconds, but then continues laboring toward the mound." Instead of going west from North Beach, say "The Sea Turtle swivels quickly toward you, snapping its curved beak at the air inches from your exposed legs. You stagger back in fear for your life. ". 
	Before mounting the Sea Turtle in the North Beach:
		Say "The turtle cranes it neck back and snaps menacingly at you. It is will not allow you to ride." instead;

Sheltered Beach is west of North Beach. ".... The beach extends to the west here in a little sheltered circle of trees." The sandy mound is a container. The description of the sandy mound is "There is a low mound of sand on the beach. Turtle tracks have disturbed the sand in a path leading to and from it."
	
South Beach is south of White Sand Beach. ".... You are on the beach a little way from where you came ashore. A tall rock cliff extend to the south as the beach narrows until the sea and the rocks meet. You can see your sailboard to the north. The surf washes over the sand with a sigh and hiss from the east. There is a little pool of water to the west from which a narrow stream of water flows out into the ocean."

Instead of going south from White Sand Beach, say "The cliff prevents you from going southward from here, and surf is too agressive to try and swim.  You would be dashed against the rocks."

Lagoon is west of South Beach. ".... There is a small pool of water about twenty feet in diameter here. It appears to be fed by a stream flowing out of the jungle in the west. The water is crystal clear and you can easily see the bottom." A fish is a kind of animal.  A yellow fish is a kind of fish. A speckled fish is a kind of fish. A striped fish is a kind of fish. A pool is here. The pool is a container. In the pool is an yellow fish, a speckled fish, and a striped fish. The description of the striped fish is "This is a fish about a foot long and has silver and black vertical stripes.  It has a long sharp snout.". The description of the yellow fish is "This fish is silver on the bottom and has a light green back with a yellow stripe along its sides.". The description of the speckled fish is "This fish is narrow and is the shape of a pie plate with fins. It's covered with black and silver scales". Fish can be cooked or uncooked. Fish are normally uncooked. Fish can be dead or alive. Fish are normally alive.

Understand the command "stab" as something new. Stabbing it with is an action applying to two visible things. Understand "stab [something] with [something]" as stabbing it with. Understand "stab [something]" as stabbing it with.

This is the missing second noun while stabbing rule:
	if the spear is carried:
		now the second noun is the spear;
	otherwise:
		say "What do you want to stab [the noun] with?";

Before stabbing something with:
	if the second noun is a spear:
		if there is something on the spear:
			say "You can't use your spear. There's already a fish on it!" instead;
		otherwise:
			say "Good aim!  You expertly spear the fish through its middle.";	
			move the noun to the spear;
			now the noun is dead;
	otherwise:
		say "You can't stab the [noun] with that!";
	stop the action;

Before taking a fish:
	if the noun is dead:
		say "You pluck the [noun] from the end of your spear.";
		move the noun to the player;
	otherwise:
		say "The fish avoids you and darts away into the deeper parts of the crystal clear pool.";
	stop the action;

Trickling Stream is west of Lagoon. "A little stream flows out from the jungle here. The banks are lined with thin saplings and the vegetation is so thick that the only way to go further west is to wade into the stream." Saplings are here. Understand "sapling" as saplings. Saplings are scenery.

Understand the command "cut" as something new.  cutting it with is an action applying to two visible things. Understand "cut [something] with [something]" as cutting it with.

This is the missing second noun while cutting rule: 
	if the knife is carried: 
		now the second noun is the knife;
	otherwise:
		say "You don't have anything to cut [the noun] with.";


Before cutting the saplings with:
	if the second noun is knife:
		say "You cut one of the saplings down with your knife. The wood is green and the knife is thin. Your knife constantly gets stuck, but you eventually manage to cut through.  You sharpen one end of the cut sapling, and now have a functional spear.";
		remove the saplings from play;
		now the spear is in the player;
	otherwise:
		say "You can't cut [the noun] with that!";
	stop the action;

Animal Trail is west of White Sand Beach. ".... Under the thick canopy of trees large leafed plants gather what sunlight they can. Dead branches litter the ground. Some kind of animals have beaten down a narrow path between the vegetation.  The path leads west into the jungle and east to the White Sand Beach."  Branches are here. Understand "dead branches" as a branches. Understand "branch" as a branches.

Before taking branches:
	if the player has the firewood:
		say "You couldn't possibly carry any more." instead;
	otherwise:
		say "You walk around stomping on the branches and breaking them up into smaller pieces.  Soon you have gathered up an armload of useable firewood.";
		now the firewood is in the player;
	stop the action;

A fire is a thing.  A fire has a number called intensity and is usually 0. There is a fire here.

Before lighting something with:
	if the noun is the firewood and the matches are carried:
		Say "You take the branches that you collected and create a neat little pyramid of wood.  It takes three matches before it catches, but then a little cheerful fire begins to blossom, and the wood starts crackling.";
		Remove the firewood from play;
		now the fire is in location;
		now the intensity of the fire is 10;
		now the printed name of the fire is "bright fire";
		now the description of the fire is "The fire is crackling cheerfully.";
	otherwise:
		if the matches are not carried:
			say "You need someting to light the fire with.";
		otherwise:
			say "Burning the [noun] is probably a bad idea.";
	stop the action;

Every turn when the intensity of the fire is greater than 0:
	now the intensity of the fire is the intensity of the fire - 1;
	if the intensity of the fire is 5:
		now description of the fire is "The fire is burning low.";
		now the printed name of the fire is "dwindling fire";
	if the intensity of the fire is 3:
		say "The fire is burning low and is about to go out.";
	if the intensity of the fire is 0:
		now the description of the fire is "The fire is out. Only ashes remain.";
		now the printed name of the fire is "pile of ashes";
		say "The fire has gone out.";

 Understand the command "burn" as something new. Understand the command "light" as something new. Lighting it with is an action applying to two visible things. Understand "light [something] with [something]" as lighting it with. Understand "burn [something] with [something]" as lighting it with. Understand "light [something]" as lighting it with. Understand "burn [something]" as lighting it with. Understand "start fire" as lighting it with.  Cooking is an action applying to one visible thing. Understand "cook [something]" as cooking.

Rule for supplying a missing second noun while lighting: 
	if the matches is carried, now the second noun is the matches; 
	otherwise say "You will have to specify what to light [the noun] with."
	
Before cooking a fish:
	if the fire is not in the location:
		say "You don't have any heat to cook with.";
	if the intensity of the fire is zero:
		say "The fire is out.  You can't cook with that.";
	if the intensity of the fire is less than 4:
		say "The fire isn't hot enough.";
	if the intensity of the fire is greater than 4 and the fire is in the location:
		now the printed name of the noun is "cooked fish";
		now the noun is cooked;
		say "You lay the fish over the fire and flip it every few minutes until it is golden brown. The fragrant smells of cooked meat make you suddenly ravenous.";

Before eating a fish:
	if the noun is cooked:
		say "You consume the delicous meat of the [noun].  Your stomach is full and pleasantly comfortable.";
		now the exposure of the player is 5;
		remove the noun from play;
	otherwise:
		say "You remember your doctor telling you about your weak immune system, and warning you never to eat sushi.";
	stop the action;