// LMAOOO
// THANKS BBPANZU FOR THE IDEA

package;

import flixel.FlxSprite;
import flixel.FlxG;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class PiracyScreen extends MusicBeatState
{
    public function new()
    {
        super();
    }

    override function create()
    {
        super.create();

        var imagey:FlxSprite = new FlxSprite(0, 0).loadGraphic(Paths.image("dingPiracyMessage"));
        imagey.screenCenter(Y);
        add(imagey);
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