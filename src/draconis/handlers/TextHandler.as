﻿package draconis.handlers {
	
	import draconis.Core;
	import draconis.Player;
	
	public class TextHandler {
		public var currText:String = "";

		public function TextHandler() {
			// constructor code
		}
		public function gameOutput(text:String, reset:Boolean):void {
			if (reset == false) currText = currText + text;
			else currText = text;
			Core.screens.game.gameText.htmlText = currText;
			//update scroll bar
			Core.screens.game.scrollBar2.update();
		}
		public function descriptOutput(text:String, reset:Boolean):void {
			if (reset == false) currText = currText + text;
			else currText = text;
			Core.screens.pc.pcDescript.htmlText = currText;
			Core.screens.pc.scrollBar3.update();
		}
		public function bagOutput(text:String, reset:Boolean):void {
			if (reset == false) currText = currText + text;
			else currText = text;
			Core.screens.bag.bagList.htmlText = currText;
			Core.screens.bag.scrollBar4.update();
		}
		public function combatOutput(text:String, reset:Boolean):void {
			if (reset == false) currText = currText + text;
			else currText = text;
			Core.screens.combat.combatText.htmlText = currText;
		}

	}
	
}
