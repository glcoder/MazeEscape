package
{
	import net.flashpunk.Entity;
	
	public class Lava extends Entity
	{
		public function Lava(generator:MazeGenerator)
		{
			type = "lava";
			mask = generator.getLava();
		}
	}
}
