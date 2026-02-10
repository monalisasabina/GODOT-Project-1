## What is a node?
- A single game object that does one thing
- Has properties (position, color, size, etc.)
- Can have children nodes (forming a tree, just like React's component tree)

### Node examples
- Sprite2D - displays an image
- CharacterBody2D - a player or enemy that can move and collide
- Camera2D - the camera view
- Timer - counts down time
- AudioStreamPlayer - plays sound
- Label - displays text


### NODE2D specifically
- A basic 2D node that has a position (x, y)
- Used as a container/parent for other nodes
- Like a <div> in HTML—doesn't do much by itself, but holds other things

A character in a game is usually made up of multiple nodes working together. 
One character = a collection of nodes:

```
Player (Node2D or CharacterBody2D - the container)
├── Sprite2D (the character's image/animation)
├── CollisionShape2D (hitbox for collisions)... handles collision detection
├── Camera2D (camera following the player)
└── AudioStreamPlayer (sound effects like footsteps)
```