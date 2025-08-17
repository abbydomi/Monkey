/// @desc Initializes Monkey
/// @param {Bool} multiplayerEnabled Whether gpSlots will be used for different players or all for Player 1
function monkeyInit(multiplayerEnabled) {
	globalvar monkeyList, monkeyMultiplayerEnabled;
    monkeyMultiplayerEnabled = multiplayerEnabled
	monkeyList[99] = 0
    
    _monkey_dependency_init_input_sprites()
    
	if !instance_exists(oMonkeyGamepadBrain) {
		instance_create_depth(0,0,0,oMonkeyGamepadBrain)
	}
    
	enum MONKEY {
		OFF,
		PRESSED,
		HELD,
		RELEASED
	}
    
    enum INPUT_TYPE {
        CONTROLLER_XBOX,
        CONTROLLER_OTHER,
        KEYBOARD,
        TOUCHSCREEN
    }
}