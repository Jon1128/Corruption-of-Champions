package classes.Monsters 
{
	import classes.Monster;
	
	/**
	 * ...
	 * @author aimozg
	 */
	public class Tamani extends Monster 
	{
		
		public function Tamani(mainClassPtr:*) 
		{
			super(mainClassPtr);
			init1Names("", "Tamani", "tamani", "She keeps her arms folded across her " + mainClassPtr.tamaniChest() + " and glares at you.  The little thing is only about four feet tall, with pink and black dyed hair cut into a cute little 'do.  The greenish-gray skin of her breasts bulges out around her arms, supported by a few leather straps, amplifying her cleavage.  Her cunt lips are pierced multiple times, inflamed, and slightly parted.  There really isn't any clothing on her to hide them, just more of the ever-present straps wrapping around her thighs.");
			init2Female(VAGINA_WETNESS_DROOLING,VAGINA_LOOSENESS_NORMAL,55);
			init3BreastRows("E");
			init4Ass(ANAL_LOOSENESS_TIGHT,ANAL_WETNESS_DRY,40);
			init5Body(40,HIP_RATING_AMPLE+2,BUTT_RATING_LARGE);
			init6Skin("greenish gray");
			init7Hair("pink and black",16);

			this.temperment = 2;
			//Regular attack
			this.special1 = 5087;
			//Lust attack
			this.special2 = 5088;

			//Clothing/Armor
			this.armorName = "leather straps";
			this.weaponName = "fists";
			this.weaponVerb = "tiny punch";

			//Primary stats
			this.str = 32;
			this.tou = 43;
			this.spe = 55;
			this.inte = 62;
			this.lib = 65;
			this.sens = 65;
			this.cor = 50;

			//Combat Stats
			this.bonusHP = 40;
			this.HP = eMaxHP();
			this.lustVuln = 0.9;

			this.lust = 40;

			//Level Stats
			this.level = 4;
			this.XP = totalXP();
			this.gems = rand(25) + 5;


			//Create goblin sex attributes
		}
		
	}

}