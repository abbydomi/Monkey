/// @desc Gets the input status of the specified Monkey
/// @param {Real} ID The ID of the monkey to check
/// @return {Real} The input status of the Monkey (MONKEY.HELD, MONKEY.OFF, MONKEY.PRESSED, MONKEY.RELEASED)
function monkeyGetInputStatus(ID){
	 return monkeyList[ID].status
}