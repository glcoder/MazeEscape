package
{
	import net.flashpunk.Entity;
	
	public class Start extends Entity
	{
		public function Start(generator:MazeGenerator)
		{
			type = "start";
			mask = generator.getStart();
		}
	}
}
