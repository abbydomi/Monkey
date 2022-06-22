
function monkeyGetInputStatus(vk_input){
	return monkeyList[vk_input].status
}

function monkeyCreateListener(vkInput, heldframes){
	var newMonkey = instance_create_layer(0, 0, "Instances", oMonkey, {
	heldFrames: heldframes,
	inputType: vkInput
});
monkeyList[newMonkey.inputType] = newMonkey;
}