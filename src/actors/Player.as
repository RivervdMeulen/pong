package actors 
{
	import utils.Controller;	
	import flash.events.Event;
	/**
	 * ...
	 * @author erwin henraat
	 */
	public class Player extends Paddle 
	{
		private var controller:Controller;
		private var speed:Number = 0;
		
		public function Player() 
		{
			this.addEventListener(Event.ADDED_TO_STAGE, init);		
		}		
		private function init(e:Event):void 
		{
			this.removeEventListener(Event.ADDED_TO_STAGE, init);
			controller = new Controller(stage);
			this.addEventListener(Event.ENTER_FRAME, loop);			
		}
		private function loop(e:Event):void 
		{
			if (controller.up && y > -10)
			{
				speed = -7;
			}
			else if(controller.down && y < stage.stageHeight-10)
			{
				speed = 7;
			}else
			{
				speed = 0;
				/*if (speed > 0) speed--;
				if (speed < 0) speed++;*/
				
			}
			if (controller.fire)
			{
				
				
			}
			this.y += speed;
		}
		
	}

}