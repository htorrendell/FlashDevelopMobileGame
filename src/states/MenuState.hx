package states;

import flixel.FlxG;
import flixel.FlxState;
import flixel.FlxSprite;
import gameObjects.SoundManager.SM;

class MenuState extends FlxState
{

	public function new() 
	{
		super();
	}
	
	override public function create():Void 
	{
		super.create();
		var background: FlxSprite = new FlxSprite(0, 0, "img/title.jpg");
		add(background);
		SM.Instantiate();
		SM.menuTrackSound();
		
	}
	
	override public function update(elapsed: Float):Void 
	{
		if (FlxG.keys.justPressed.ONE)
		{
			FlxG.switchState(new GameState(1));
		}
		if (FlxG.keys.justPressed.TWO){
			FlxG.switchState(new GameState(2));
		}
		if (FlxG.keys.justPressed.THREE){
			FlxG.switchState(new GameState(3));
		}
		
		
		super.update(elapsed);
	}
	
}