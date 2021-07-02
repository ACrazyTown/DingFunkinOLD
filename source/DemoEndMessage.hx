package;

import flixel.FlxSprite;
import flixel.FlxG;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class DemoEndMessage extends MusicBeatState
{
    override function create()
    {
        persistentUpdate = persistentDraw = true;

        var imagey:FlxSprite = new FlxSprite(0, 0).loadGraphic(Paths.image("demoEndImg"));
        imagey.screenCenter(Y);
        add(imagey);

        FlxG.sound.play(Paths.sound('dingEndSound'));
    }

    override function update(elapsed:Float)
    {
        if (FlxG.keys.justPressed.ANY)
        {
            FlxG.switchState(new MainMenuState());
        }
    }
}