package mvc
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	public class AClockView extends Sprite
	{
		protected var _data:ClockData;
		public function AClockView(data:ClockData)
		{
			super();
			_data = data;
			_data.addEventListener(Event.CHANGE , draw);
		}
		
		protected function draw(event:Event = null):void
		{
			// TODO Auto-generated method stub
			
		}
		
		public function get data():ClockData
		{
			return _data;
		}

		public function set data(value:ClockData):void
		{
			_data = value;
		}

	}
}