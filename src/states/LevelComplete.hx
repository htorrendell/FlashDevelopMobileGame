package states;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;


class LevelComplete extends FlxState
{

	public function new() 
	{
		super();
	}
	override public function create():Void 
	{
		super.create();
		var text:FlxText = new FlxText(300, 300, 0, "LEVEL COMPLETE!", 20);
		add(text);
		
	}
	
	override public function update(elapsed: Float):Void 
	{
		if (FlxG.keys.justPressed.ENTER)
		{
			FlxG.switchState(new GameState());
		}
		super.update(elapsed);
	}
}