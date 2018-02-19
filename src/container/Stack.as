package container
{
	public class Stack
	{
		private var head:Node = null;
		
		public function empty():Boolean
		{
			return head == null;
		}
		
		public function push(item:*):void
		{
			head = new Node(head, item);
		}
		
		public function pop():*
		{
			if (empty())
				return null;
			
			var item:* = head.item;
			head = head.next;
			return item;
		}
	}
}
