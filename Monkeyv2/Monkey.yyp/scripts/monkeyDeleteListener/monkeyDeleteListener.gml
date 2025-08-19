/// @desc Removes a Monkey from the Monkey list
/// @param {Real} ID The ID the Monkey to delete
function monkeyDeleteListener(ID) {
	if instance_exists(monkeyList[ID].id)
		instance_destroy(monkeyList[ID].id)
}