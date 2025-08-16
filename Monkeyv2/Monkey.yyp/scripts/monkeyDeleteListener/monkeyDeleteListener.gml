function monkeyDeleteListener(ID) {
	if instance_exists(monkeyList[ID].id)
		instance_destroy(monkeyList[ID].id)
}