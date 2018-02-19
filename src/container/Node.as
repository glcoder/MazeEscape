package container
{
	public class Node
	{
		public var next:Node;
		public var item:*;
		
		public function Node(next:Node, item:*)
		{
			this.next = next;
			this.item = item;
		}
	}
}
