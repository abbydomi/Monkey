# Monkey V2
## Setup
To add Monkey to your project drag and drop monkey_package.yymps to your project.
It is recommended to import the demo and check how it works, but the DEMO folder isn't necessary for Monkey to function.

To set Monkey up first call monkeyInit() as soon as the game is initialized, this function takes two parameters:
- spriteEnabled: Enables assigning sprite to Monkeys to later draw on screen (More on this on Drawing Inputs section)
- singleplayerEnabled: Ignores multiple controllers and treats everything as player 1
Example:
```
monkeyInit(false, true)
```
After initializing Monkey you can declare your inputs using the **monkeyCreateListener** function, this function takes the following parameters:
- ID: The numeric ID for the Monkey
- KeyboardKey: ord("any") or vk_any, this is the keyboard input that will be observed
- GamepadKey: gp_any, this is the gamepad input that will be observed
- GamepadSlot: This is the player that this input is assigned for (works for controller only) slots 0-3, any slot will register inputs if singleplayer mode is active
- HeldFrames: The amount of frames the input must be pressed to register as being held
Example:
```
enum Inputs {
	P1_LEFT,
	P1_RIGHT,
	P1_UP,
	P1_DOWN,
	P1_JUMP,
}
monkeyCreateListener(INPUTS.P1_LEFT,   ord("A"), gp_padl,  0, 1)
monkeyCreateListener(INPUTS.P1_RIGHT,  ord("D"), gp_padr,  0, 1)
monkeyCreateListener(INPUTS.P1_UP,     ord("W"), gp_padu,  0, 1)
monkeyCreateListener(INPUTS.P1_DOWN,   ord("S"), gp_padr,  0, 1)
monkeyCreateListener(INPUTS.P1_JUMP,   ord("W"), gp_face1, 0, 1)
```
## Checking for Inputs
Inputs can now be checked by using the function **monkeyGetInputStatus()** this function takes the ID of the monkey to check as parameter and will return a value of the MONKEY enum
Example:
```
if monkeyGetInputStatus(INPUTS.P1_LEFT) == MONKEY.HELD {
  hsp -= acc
}
```
This function can return:
- MONKEY.OFF (0): The input is not being used in any way
- MONKEY.PRESSED (1): The input is pressed
- MONKEY.HELD (2): The input has been held for the specified amount of frame or more
- MONKEY.RELEASED (3): The input has been released from its pressed/held state

Because it returns a numeric value, it is also possible to just check for the input status if we only care about the input being interacted with
```
if monkeyGetInputStatus(INPUTS.P1_JUMP) {
  vsp = -jmp
}
```
## Remapping Controls
Remapping controls with Monkey is possible by using the function **monkeyRemapKey** this function takes in 3 arguments:
- ID: The ID of the input to remap
- KeyboardKey: The new gamepad key to listen to
- GamepadKey: The new gamepad key to listen to
Example:
```
monkeyRemapKey(INPUTS.P1_JUMP, vk_space, gp_face1)
```
Additionally, if any input isn't needed anymore, it can be deleted with the **monkeyDeleteListener** function, this function only takes the ID of the Monkey to delete
```
monkeyDeleteListener(INPUT.P1_JUMP)
```
## Gamepad Implementation
Monkey expands upon the built in gamepad implementation o GameMaker and bypasses the original gamepad slots (0-3 for Xbox, 4-11 for XInput) and mixes them in a global gamepad slot 0-3.
If singleplayer mode is enabled, all controllers will register as Player 1 (gp_slot[gp_last])
If singleplayer mode is **disabled** all controllers that are connected will be assigned to the slots in order of connection from 0-3 and can be accessed by calling **gp_slots[0]**
Example:
```
// Multiplayer mode, checking analog inputs for player 1
if gamepad_axis_value(gp_slots[0], gp_axislh) < -0.5 {
  hsp -= acc
} else if gamepad_axis_value(gp_slots[0], gp_axislh > 0.5 {
  hsp += acc
}

// Singleplayer mode, checking analog inputs for the last used controller
if gamepad_axis_value(gp_slots[gp_last], gp_axislh) < -0.5 {
  hsp -= acc
} else if gamepad_axis_value(gp_slots[gp_last], gp_axislh > 0.5 {
  hsp += acc
}
```
## Virtual Keys for Touchscreen devices
Virtual keys can be added on screen for touchscreen devices, these are associated to an already existing MonkeyListener, they can be created by calling **monkeyAddVirtualKey**. This function takes the following arguments:
- ID: The ID of the Monkey to add a virtual key to
- Sprite: The sprite to display on the virtual key
- SpritePressed: The sprite to display on the virtual key when pressed
- X: The X position for the virtual key on screen
- Y: The Y position for the virtual key on screen
- Wdith: The width of the virtual key
- Height: The height of the virtual key
- Alpha: Floating point number from 0 to 1, indicates how opaque the virtual key is
```
monkeyAddVirtualKey(
  INPUTS.P1_JUMP, // ID
  sButton, sButtonPressed, // Sprites
  window_get_width() - 128, window_get_height() - 128, // x,y pos
  96, 96, 0.85  // width height and alpha
)
```
Once a virtual key is set up it will appear on the screen of the game, to modify the position of an already existing virtual key use **monkeyVirtualKeyPosition** it takes the following arguments:
- ID: The ID of the Monkey to modify
- X: The X position for the virtual key on screen
- Y: The Y position for the virtual key on screen
- Wdith: The width of the virtual key
- Height: The height of the virtual key
- Alpha: Floating point number from 0 to 1, indicates how opaque the virtual key is
```
monkeyVirtualKeyPosition(
  INPUTS.P1_JUMP, // ID
  window_get_width() - 64, window_get_height() - 64, // x,y pos
  42, 42, 0.5  // width height and alpha
)
```
Virtual keys can also be deleted by calling **monkeyDeleteVirtualKey** which takes the ID of the Monkey as an argument.

## Drawing Inputs
To draw input prompts on screen the function **monkeyDrawInput** will draw the associated sprite to the Monkey passed to it, this function takes 3 arguments:
- MonkeyID: The ID of the input to draw
- X: The X position to draw the input in
- Y: The Y position to draw the input in
```
monkeyDrawInput(INPUT.P1_JUMP, 10, 10)
```
This function will only work if **spriteEnabled** is set to true when calling **monkeyInit**
To change the sprites associated to inputs modify the **monkeyUpdateSprites** function found in the file **MonkeyFunctions**

## Credits
Monkey is an instance based input library built by [abbytorade](https://bsky.app/profile/abbytorade.bsky.social) for [Oxonian Games](https://oxoniangames.itch.io)
The included sprites are from [abbytorade's 1bit controller asset pack](https://abbytorade.itch.io/1bitcontrollers)
