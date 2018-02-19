package
{
	import net.flashpunk.Engine;
	import net.flashpunk.FP;
	
	public class MazeEscape extends Engine
	{
		public function MazeEscape()
		{
			super(12 * 45, 12 * 45, 60, false);
			FP.world = new TitleWorld(new MazeGenerator(Assets.TILEMAP, 12, 12), true);
		}
	}
}
