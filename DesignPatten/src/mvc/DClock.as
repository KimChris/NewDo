package mvc
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;

	public class DClock extends AClockView
	{
		private var frame:Sprite;
		private var display:TextField;
		
		public function DClock(data:ClockData)
		{
			super(data);
			
			frame = new Sprite();
			frame.graphics.lineStyle(0 , 0x000000 , 1);
			frame.graphics.drawRect(0,0,200,50);
			frame.graphics.endFill();
			addChild(frame);
			
			display = new TextField();
			display.width = 200;
			display.height = 50;
			display.autoSize = TextFieldAutoSize.LEFT;
			display.x = 195;
			display.y = 5;
			addChild(display);
			
			draw();
		}
		
		protected override function draw(event:Event=null):void{
			var time:Time = data.time;
			
			display.text = time.hour + ":" + zeroFill(time.minute) + ":" + zeroFill(time.second);
		}
		
		private function zeroFill(value:Number):String{
			if(value > 9) return value.toString();
			else return "0" + value;
		}
	}
}