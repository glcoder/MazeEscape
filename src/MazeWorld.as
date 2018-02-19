package
{
	import flash.display.BitmapData;
	
	import net.flashpunk.FP;
	import net.flashpunk.World;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.graphics.Text;
	
	public class MazeWorld extends World
	{
		private var generator:MazeGenerator;
		
		public function MazeWorld(generator:MazeGenerator)
		{
			this.generator = generator;
		}
		
		override public function begin():void
		{
			Text.size = 20;
			var levelText:Text = new Text(String(generator.getLevel()));
			levelText.x = FP.screen.width - levelText.width;
			levelText.y = 0;
			
			addGraphic(levelText, -1);
			
			add(new Maze(generator));
			add(new Lava(generator));
			add(new Exit(generator));
			add(new Start(generator));
			add(new Player(generator));
		}
	}
}
