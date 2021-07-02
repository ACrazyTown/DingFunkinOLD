package;

import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;
import flixel.FlxG;
import flixel.FlxSprite;

class DifficultySubstate extends MusicBeatSubstate
{
    //var diffText:FlxText;
    var diffBtn:FlxSprite;
    
    var diff:Array<String> = ["<  EASY  >", "<  NORMAL  >", "<  HARD  >"];
    var curDifficulty:Int = 1;

    public function new()
    {
        super();

        var bg:FlxSprite = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
		bg.alpha = 0;
		bg.scrollFactor.set();
		add(bg);

        var chooseDiffText = new FlxText(0, 150, 0, "Choose your difficulty", 54);
        chooseDiffText.setFormat("VCR OSD Mono", 54, FlxColor.WHITE);
        chooseDiffText.alpha = 0;
        chooseDiffText.screenCenter(X);
        chooseDiffText.scrollFactor.set();
        add(chooseDiffText);

        /*
        diffText = new FlxText(0, 300, 0, "<  NORMAL  >", 64);
        diffText.setFormat("VCR OSD Mono", 64, FlxColor.WHITE);
        diffText.alpha = 0;
        diffText.screenCenter(X);
        diffText.scrollFactor.set();
        add(diffText);
        */

        diffBtn = new FlxSprite(0, 350);
        diffBtn.frames = Paths.getSparrowAtlas('campaign_menu_UI_assets');
        diffBtn.animation.addByPrefix("easy", "EASY");
        diffBtn.animation.addByPrefix("normal", "NORMAL");
        diffBtn.animation.addByPrefix("hard", "HARD");
        diffBtn.animation.play('normal');
        diffBtn.alpha = 0;
        diffBtn.screenCenter(X);
        diffBtn.scrollFactor.set();
        add(diffBtn);
        
        FlxTween.tween(chooseDiffText, {alpha: 1}, 0.7, {ease: FlxEase.quartInOut});
        FlxTween.tween(diffBtn, {alpha: 1}, 0.7, {ease: FlxEase.quartInOut});
        FlxTween.tween(bg, {alpha: 0.6}, 0.4, {ease: FlxEase.quartInOut});
    }

    override function update(elapsed:Float)
    {
        super.update(elapsed);

        if (controls.LEFT_P)
            changeDiff(-1);
        if (controls.RIGHT_P)
            changeDiff(1);
    }

    function changeDiff(change:Int = 0)
    {	
        FlxG.sound.play(Paths.sound('scrollMenu'), 0.4);

        curDifficulty += change;

        if (curDifficulty < 0)
            curDifficulty = 2;
            diffBtn.animation.play("hard");
            //diffText.text = diff[1].toUpperCase();
        if (curDifficulty >= 3)
            curDifficulty = 0;
            diffBtn.animation.play("easy");
            //diffText.text = diff[1].toUpperCase();

        //diffText.text = diff[curDifficulty];
    }

    function startGame()
    {

    }
}