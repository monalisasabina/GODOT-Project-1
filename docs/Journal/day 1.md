# Godot Setup & First Project

## 1. Download & Install Godot
- Download Godot 4.6 (standard version, not .NET)
- Run `Godot_v4.6-stable_win64.exe`

## 2. Create New Project
- Click "New Project"
- Choose project name and folder location (e.g., `C:\Users\YourName\Documents\GodotProjects\MyFirstGame`)
- Select "Forward+" renderer
- Click "Create & Edit"

## 3. Set Up Git (in WSL terminal)
```bash
cd /mnt/c/Users/YourName/Documents/GodotProjects/MyFirstGame
git init
```

Create `.gitignore` file with:
```
.import/
export.cfg
export_presets.cfg
.mono/
data_*/
*.translation
```
```bash
git add .
git commit -m "initial commit"
git remote add origin <your-github-repo-url>
git push -u origin main
```

## 4. Create Your First Scene
- Click "2D Scene" in the "Create Root Node" panel
- A "Node2D" appears in the Scene dock (top left)

## 5. Add a Sprite
- Right-click "Node2D" → "Add Child Node"
- Search for "Sprite2D" → click "Create"

## 6. Attach Your First Script
- Click on "Node2D" in the Scene tree
- Click the scroll icon (📜) at the top or right-click → "Attach Script"
- Leave default settings, click "Create"
- GDScript editor opens

## 7. Write Your First Code
```gdscript
extends Node2D

func _ready():
    print("Hello Godot!")

func _process(delta):
    # This runs every frame
    pass
```

## 8. Save & Run
- Ctrl+S to save
- Click ▶ (play button) at top right
- Select this scene as main scene when prompted

---

## GDScript Basics

### Variables
```gdscript
var health = 100
var player_name = "Hero"
var speed = 5.0
```

### Functions
```gdscript
func take_damage(amount):
    health -= amount
    print("Health: ", health)
```

### Built-in Lifecycle Functions
```gdscript
func _ready():
    # Runs once when node enters the scene
    print("Game started!")

func _process(delta):
    # Runs every frame (60 times per second)
    # delta = time since last frame
    position.x += speed * delta
```

### Signals (Event System)
```gdscript
signal health_changed

func take_damage(amount):
    health -= amount
    health_changed.emit(health)
```

### Key Differences from Python/JavaScript
- Use `func` instead of `def`
- No `self` - directly access properties like `position`, `health`
- `@` for annotations: `@onready var sprite = $Sprite2D`
- `$` to reference child nodes: `$PlayerSprite`

---

## Workflow Summary
1. **Godot Editor** - Build scenes, add nodes, set up structure
2. **VS Code** - Write/edit GDScript code (optional, can use Godot's built-in editor)
3. **WSL Terminal** - Git commands for version control
4. **GitHub** - Push your project like any other code project