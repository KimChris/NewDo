package mvc
{
	import flash.display.Sprite;
	
	public class MvcMain extends Sprite
	{
		private var clockData:ClockData;
		
		public function MvcMain()
		{
			super();
			
			clockData = new ClockData();
			var clock:AClockView = new DClock(clockData);
			clock.x = 100;
			clock.y = 100;
			addChild(clock);
		}
	}
}