package;

import flixel.FlxSprite;
import flixel.FlxG;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class DemoEndMessage extends MusicBeatState
{
    public function new()
    {
        super();
    }

    override function create()
    {
        super.create();

        var imagey:FlxSprite = new FlxSprite(0, 0).loadGraphic(Paths.image("demoEndImg"));
        imagey.screenCenter(Y);
        add(imagey);

        FlxG.sound.play(Paths.sound('dingEndSound'));
    }

    override function update(elapsed:Float)
    {
        super.update(elapsed);

        if (FlxG.keys.justPressed.ANY)
        {
            FlxG.switchState(new MainMenuState());
        }
    }
}