### DAY 1 AI PROMPTS
these are some of the prompts i have used to understand godot

---

### Prompt 1: Functions
```
hahaha... i already have an error. but tell me more about the functions here:

extends Node2D

func _ready():
	print("Hello Godot!")
	
func _process(delta):
	#This runs every frame
	pass
```

1. func _ready():
- Runs once when the node first enters the scene
- Use it for setup/initialization
- Example: set starting health, load saved data, print a welcome message

2. func _process():
- Runs every frame (usually 60 times per second)
- ```delta```= time elapsed since last frame (in seconds, usually ~0.016)
- Use it for continuous updates like movement, animations, checking inputs
- Example: move a character, rotate an object, check if player pressed a button

3. ```extends Node2D```
- This tells Godot that your script is attached to a Node2D
- So you can use things like position, rotation, visible without defining them

---

### Prompt 2: Saving Script
```
so what should this code do and what is 'extends Node2D' at the top? then what next?
```
The code does nothing:
1. When the game starts, it prints "Hello Godot!" to the Output console (bottom of Godot)
2. Every frame (60 times/second), it runs _process() but does nothing (pass means "do nothing")

#### Saving the script
1. Save the script: ```Press Ctrl+S```

2. Run the game:
- Click the ▶ play button at the top right
- Godot will ask you to select a main scene—click "Select Current" (to use your Node2D scene)
- A blank game window will open

3. Check the output:
- Look at the "Output" tab at the bottom of Godot
- You should see "Hello Godot!" printed there

### Prompt 3: Getting things moving
```
so now that that hello world is appearing, what can we do next? how can we get some things moving? 😁
```

#### 1. Step 1: Add a sprite to see
- Click on "Node2D" in the Scene panel (left)
- Right-click → "Add Child Node"
- Search for "Sprite2D" → click "Create"
- Now you have a Sprite2D as a child of Node2D

#### 2.  Step 2: Give it an image
- Click on the Sprite2D you just created
- Look at the Inspector panel (right side)
- Find "Texture" property
- Click the dropdown → "Load" → select ```icon.svg``` (Godot's default icon)
- You should now see the Godot icon in the center viewport!

#### 3. : Make it move with code
Update your ```node_2d.gd``` script to this:

```gdscript
extends Node2D

var speed = 200.0  # pixels per second

func _ready():
    print("Hello Godot!")

func _process(delta):
    # Move the sprite to the right
    $Sprite2D.position.x += speed * delta

```