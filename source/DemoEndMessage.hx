package;

import flixel.FlxSprite;
import flixel.FlxG;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class DemoEndMessage extends MusicBeatState
{
    public static var isOnHard:Bool = false;

    public function new()
    {
        super();
    }

    override function create()
    {
        super.create();

        if (isOnHard)
        {
            var imagey:FlxSprite = new FlxSprite(0, 0).loadGraphic(Paths.image("demoEndImgHARD"));
            imagey.screenCenter(Y);
            add(imagey);
            
        }
        else
        {
            var imagey:FlxSprite = new FlxSprite(0, 0).loadGraphic(Paths.image("demoEndImg"));
            imagey.screenCenter(Y);
            add(imagey);
        }

        FlxG.sound.play(Paths.sound('dingEndSound'));
    }

    override function update(elapsed:Float)
    {
        super.update(elapsed);

        if (FlxG.keys.justPressed.ANY)
        {
            isOnHard = false;
            FlxG.switchState(new MainMenuState());
        }
    }
}