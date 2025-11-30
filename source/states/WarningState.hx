package states;

import flixel.FlxG;
import flixel.FlxSprite;

class WarningState extends TransitionState {
    var warning:FlxSprite;

    override function create() {
        super.create();

        FlxG.mouse.visible = false;
        
        warning = new FlxSprite();
        warning.loadGraphic(Paths.image('warning/warning'));
        add(warning);

        FlxG.sound.cache(Paths.sound('whoosh'));
        FlxG.sound.cache(Paths.music('Menu'));
    }

    override function update(elapsed:Float):Void {
        super.update(elapsed);
        
        if (FlxG.keys.justPressed.ENTER) {
            FlxG.switchState(new MenuState());
        }
    }
}