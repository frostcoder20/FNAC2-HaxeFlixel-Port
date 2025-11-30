package;

import flixel.FlxGame;
import flixel.addons.transition.FlxTransitionableState;
import flixel.addons.transition.TransitionData;
import openfl.display.Sprite;
import states.WarningState;

class Main extends Sprite
{
	public function new()
	{
		super();
		addChild(new FlxGame(0, 0, WarningState));

		FlxTransitionableState.defaultTransIn = new TransitionData(FADE, 0xFF000000, 0.1);
		FlxTransitionableState.defaultTransOut = new TransitionData(FADE, 0xFF000000, 0.1);
	}
}
