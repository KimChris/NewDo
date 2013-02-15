package
{
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	
	import mvc.MvcMain;
	
	public class DesignPatten extends Sprite
	{
		public function DesignPatten()
		{
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			
			addEventListener(Event.ADDED_TO_STAGE , init);
		}
		
		private function init(e:Event):void{
			var mvc:MvcMain = new MvcMain();
			addChild(mvc);
		}
	}
}