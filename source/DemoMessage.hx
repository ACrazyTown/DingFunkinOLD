package;

import flixel.FlxG;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class DemoMessage extends MusicBeatState
{
    override function create()
    {
        persistentUpdate = persistentDraw = true;

        var txt:FlxText = new FlxText(0, 0, FlxG.width,
			"HEY!!\n\n"
			+ "\nThanks for downloading The Ding Mod!"
			+ "\nKeep in mind that this is just a 'demo'."
			+ "\nThe entire thing will be revamped once I release the 2.0 update"
			+ "\nRead the dingREADME.txt for more info!"
            + "\n\nPress any key to continue",
			28);
	
		txt.setFormat("VCR OSD Mono", 28, FlxColor.WHITE, CENTER);
		txt.screenCenter();
		add(txt);
    }

    override function update(elapsed:Float)
    {
        if (FlxG.keys.justPressed.ANY)
        {
            FlxG.switchState(new MainMenuState());
        }
    }
}