function monkeyInit()
{
	globalvar monkeyList;
	monkeyList[99] = 0;
	if !instance_exists(oMonkeyGamepad)
	{
		instance_create_depth(0,0,0,oMonkeyGamepad);
	}
	enum MONKEY
	{
		OFF,
		PRESSED,
		HELD
	}
}