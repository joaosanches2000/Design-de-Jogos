function PlayerStateAct() {

	// Update Sprite
	PlayerAnimateSprite();

	if (animationEnd)
	{
		state = PlayerStateFree;
		animationEnd = false;
		if (animationEndScript != -1)
		{
			ScriptExecuteArray(activate.entityActivateScript,activate.entityActivateArgs);
			//script_execute(animationEndScript);
			animationEndScript = -1;
		}
	}
} 
\ 