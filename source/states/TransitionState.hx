package states;

import flixel.addons.transition.FlxTransitionableState;

class TransitionState extends FlxTransitionableState {
    public function new() {
        super();

        transIn = FlxTransitionableState.defaultTransIn;
        transOut = FlxTransitionableState.defaultTransOut;
    }
}