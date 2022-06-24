enum INPUTS
{
	JUMP,
	
}

monkeyCreateListener(INPUTS.JUMP,vk_space, gp_face1, 0, 10);

monkeyAddVirtualKey(INPUTS.JUMP,s9SliceButton,sButtonPressed,16,16,32,64,0.9)

monkeyRemapKey(INPUTS.JUMP, ord("A"),gp_face2)