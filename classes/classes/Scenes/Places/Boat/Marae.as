package classes.Scenes.Places.Boat 
{
	import classes.*;
	import classes.internals.*;
	/**
	 * ...
	 * @author Kitteh6660
	 */
	public class Marae extends Monster
	{
		
		public function tentacleAttack():void {
			
			outputText("You spot barrage of tentacles coming your way! You attempt to dodge your way out ", false);
			if (rand(100) < 20 + (player.spe/2)) 
			{
				outputText("and you successfully dodge her tentacles!", false);
			}
			else
			{
				outputText("but you fail and get hit instead! The feel of the tentacles left your groin slightly warmer. ", false);
				var damage:int = int((str + 100) - rand(player.tou) - player.armorDef);
				game.dynStats("lust", rand(5) + 5);
				player.takeDamage(damage, true);
				
			}
			combatRoundOver();
		}
		
		public function tentacleRape():void {
			
			outputText("You spot barrage of tentacles coming your way! The tentacles are coming your way, aiming for your groin!", false);
			if (rand(100) < 20 + (player.spe/2)) 
			{
				outputText("You manage to successfully run from her tentacles!", false);
			}
			else
			{
				outputText("You attempt to slap away the tentacles but it's too late! The tentacles tickle your groin and you can feel your [ass] being teased! \"<i>You know you want me! </i>\" Marae giggles.", false);
				var lustDmg:Number = 20 + rand(player.cor / 10) + rand(10);
				game.dynStats("lust", lustDmg);
				outputText("(+" + lustDmg + " lust)");
				
			}
			combatRoundOver();
		}
		
		override public function defeated(hpVictory:Boolean):void
		{
			doNext(game.boat.marae.winAgainstMarae);
		}
		
		override public function won(hpVictory:Boolean, pcCameWorms:Boolean):void
		{
			if (hpVictory) {
				doNext(game.boat.marae.loseAgainstMaraeByHP);
			}
			else {
				doNext(game.boat.marae.loseAgainstMaraeByLust);
			}
		}
		
		public function Marae() 
		{
			this.a = "";
			this.short = "Marae";
			this.imageName = "marae";
			this.long = "This being is known as the goddess of Marae. She is corrupted due to the aftermath of the factory valves being blown up. The \"flower\" below her belly button resembles more of a vagina than a flower. Her G-cup sized breasts jiggle with every motion."
			this.createVagina(false, VAGINA_WETNESS_DROOLING, VAGINA_LOOSENESS_NORMAL);
			createBreastRow(Appearance.breastCupInverse("G"));
			this.ass.analLooseness = 1;
			this.ass.analWetness = 1;
			this.tallness = 10*12;
			this.hipRating = 10;
			this.buttRating = 8;
			this.skinTone = "white";
			this.skinType = 0;
			//this.skinDesc = Appearance.Appearance.DEFAULT_SKIN_DESCS[SKIN_TYPE_FUR];
			this.hairColor = "green";
			this.hairLength = 36;
			initStrTouSpeInte(150, 150, 60, 110);
			initLibSensCor(60, 25, 100);
			this.weaponName = "tentacles";
			this.weaponVerb="slap";
			this.weaponAttack = 40;
			this.weaponPerk = "";
			this.weaponValue = 25;
			this.armorName = "bark";
			this.armorDef = 30;
			this.bonusHP = 3750;
			this.lust = 30;
			this.lustVuln = .02;
			this.temperment = TEMPERMENT_RANDOM_GRAPPLES;
			this.level = 99;
			this.additionalXP = 2500;
			this.drop = NO_DROP;
			this.gems = 1000;
			this.special1 = tentacleAttack;
			this.special2 = tentacleRape;
			checkMonster();
		}
		
	}

}