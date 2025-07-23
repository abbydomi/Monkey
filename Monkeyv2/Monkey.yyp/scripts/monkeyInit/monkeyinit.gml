function monkeyInit(spriteEnabled, multiplayerEnabled)
{
	globalvar monkeyList, monkeySpriteEnabled, monkeyMultiplayerEnabled;
	monkeySpriteEnabled = spriteEnabled;
    monkeyMultiplayerEnabled = multiplayerEnabled
	monkeyList[99] = 0;
	if !instance_exists(oMonkeyGamepadBrain) {
		instance_create_depth(0,0,0,oMonkeyGamepadBrain)
	}
    
	enum MONKEY {
		OFF,
		PRESSED,
		HELD,
		RELEASED
	}
}