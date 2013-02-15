package mvc
{
	import flash.display.Sprite;
	import flash.events.Event;

	public class AClock extends AClockView
	{
		private var face:Sprite;
		private var hourHand:Sprite;
		private var minuteHand:Sprite;
		private var secondHand:Sprite;
		
		public function AClock(data:ClockData)
		{
			super(data);
			
			face = new Sprite();
			face.graphics.lineStyle(0,0x000000,1);
			face.graphics.drawCircle(0,0,100);
			face.graphics.endFill();
			
			hourHand = new Sprite();
			hourHand.graphics.lineStyle(5 , 0x000000 , 1);
			hourHand.graphics.lineTo(0,-50);
			addChild(hourHand);
			
			minuteHand = new Sprite();
			minuteHand.graphics.lineStyle(2 , 0x000000 , 1);
			minuteHand.graphics.lineTo(0,-80);
			addChild(minuteHand);
			
			secondHand = new Sprite();
			secondHand.graphics.lineStyle(0 , 0x000000 , 1);
			secondHand.graphics.lineTo(0,-80);
			addChild(secondHand);
			
			draw();
		}
		
		protected override function draw(e:Event = null):void{
			var time:Time = data.time;
			
			hourHand.rotation = 30 * time.hour + 30 * time.minute / 60;
			minuteHand.rotation = 6 * time.minute + 6 * time.second / 60;
			secondHand.rotation 6 * time.second;
		}
	}
}