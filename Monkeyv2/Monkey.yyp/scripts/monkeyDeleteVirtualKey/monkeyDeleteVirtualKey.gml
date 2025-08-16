function monkeyDeleteVirtualKey(ID) {
	if monkeyList[ID].vkEnabled {
		virtual_key_delete(monkeyList[ID].vkHolder)
		monkeyList[ID].vkEnabled = false
	}
}