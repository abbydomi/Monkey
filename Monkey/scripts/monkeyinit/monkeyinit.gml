function monkeyInit()
{
	globalvar monkeyList;
	monkeyList[99] = 0;
	if !instance_exists(oMonkeyGamepadBrain)
	{
		instance_create_depth(0,0,0,oMonkeyGamepadBrain);
	}
	enum MONKEY
	{
		OFF,
		PRESSED,
		HELD
	}
}