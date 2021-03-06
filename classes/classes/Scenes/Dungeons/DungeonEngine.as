package classes.Scenes.Dungeons 
{
	import classes.*;
	import classes.BaseContent;
	import classes.GlobalFlags.kFLAGS;
	import classes.GlobalFlags.kGAMECLASS;
	
	import coc.view.MainView;
	
	public class DungeonEngine extends BaseContent
	{
		public var factory:Factory = new Factory;
		public var deepcave:DeepCave = new DeepCave;
		
		public function DungeonEngine() 
		{
			
		}
		
		public function checkRoom():void
		{
			//Factory
			if (kGAMECLASS.dungeonLoc == 0) factory.roomLobby();
			if (kGAMECLASS.dungeonLoc == 1) factory.roomBreakRoom();
			if (kGAMECLASS.dungeonLoc == 2) factory.roomPumpRoom();
			if (kGAMECLASS.dungeonLoc == 3) factory.roomBreakRoom();
			if (kGAMECLASS.dungeonLoc == 4) factory.roomRepairCloset();
			if (kGAMECLASS.dungeonLoc == 5) factory.roomMainChamber();
			if (kGAMECLASS.dungeonLoc == 6) factory.roomForemanOffice();
			if (kGAMECLASS.dungeonLoc == 7) factory.roomControlRoom();
			if (kGAMECLASS.dungeonLoc == 8) factory.roomPremiumStorage();
			//if (kGAMECLASS.dungeonLoc == 9) factory.roomBathroom();
			//Deep Cave
			if (kGAMECLASS.dungeonLoc == 10) deepcave.roomEntrance();
			if (kGAMECLASS.dungeonLoc == 11) deepcave.roomTunnel();
			if (kGAMECLASS.dungeonLoc == 12) deepcave.roomGatheringHall();
			if (kGAMECLASS.dungeonLoc == 13) deepcave.roomFungusCavern();
			if (kGAMECLASS.dungeonLoc == 14) deepcave.roomTortureRoom();
			if (kGAMECLASS.dungeonLoc == 15) deepcave.roomSecretPassage();
			if (kGAMECLASS.dungeonLoc == 16) deepcave.roomZetazChamber();
			//Desert Cave
			
			//Tower of the Phoenix
			
		}
		
		public function enterFactory():void {
			factory.enterDungeon();
		}
		public function enterDeepCave():void {
			deepcave.enterDungeon();
		}
		
		/**
		 * Set the buttons for use in dungeons.
		 * @param	north
		 * @param	northFunction
		 * @param	south
		 * @param	southFunction
		 * @param	west
		 * @param	westFunction
		 * @param	east
		 * @param	eastFunction
		 */
		public function setDungeonButtons(north:Boolean = false, northFunction:Function = null, south:Boolean = false, southFunction:Function = null, west:Boolean = false, westFunction:Function = null, east:Boolean = false, eastFunction:Function = null):void {
			hideUpDown();
			spriteSelect(-1);
			menu();
			mainView.showMenuButton( MainView.MENU_APPEARANCE );
			mainView.showMenuButton( MainView.MENU_PERKS );
			mainView.showMenuButton( MainView.MENU_STATS );
			mainView.hideMenuButton( MainView.MENU_DATA );
			if(player.XP >= (player.level) * 100) {
				mainView.showMenuButton( MainView.MENU_LEVEL );
				mainView.statsView.showLevelUp();
			}
			if (north == true) addButton(0, "North", northFunction);
			if (south == true) addButton(6, "South", southFunction);
			if (west == true) addButton(5, "West", westFunction);
			if (east == true) addButton(1, "East", eastFunction);
			addButton(8, "Inventory", eventParser, 1000);
			addButton(9, "Masturbate", eventParser, 10);
		}
		
	}

}