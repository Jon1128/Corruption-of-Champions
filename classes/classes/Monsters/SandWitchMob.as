package classes.Monsters 
{
	import classes.Monster;
	
	/**
	 * ...
	 * @author aimozg
	 */
	public class SandWitchMob extends Monster 
	{
		
		public function SandWitchMob(mainClassPtr:*) 
		{
			super(mainClassPtr);
			init1Names("the ","sand witches","sandwitchmob","You are surrounded by a veritable tribe of sand witches.  Like the ones that roam the sands, they have simple robes, blond hair, and four big breasts that push at the concealing cloth immodestly.  Glowering at you hatefully, the pack of female spellcasters readies itself to drag you down with sheer numbers.",true);
			init2Female(VAGINA_WETNESS_WET,VAGINA_LOOSENESS_LOOSE);
			init3BreastRows(["DD"],["DD"]);
			init4Ass(ANAL_LOOSENESS_TIGHT,ANAL_WETNESS_NORMAL);
			init5Body(rand(12) + 55,HIP_RATING_CURVY,BUTT_RATING_LARGE);
			init6Skin("bronzed");
			init7Hair("sandy-blonde",15);

			this.temperment = 3;
			//Regular attack
			this.special1 = 11020;
			//Lust attack
			this.special2 = 11021;
			this.special3 = 11022;

			//Clothing/Armor
			this.armorName = "robes";
			this.weaponName = "fists";
			this.weaponVerb = "punches";
			this.armorDef = 1;

			this.weaponValue = 150;
			this.armorValue = 5;
			//Primary stats
			this.str = 25;
			this.tou = 25;
			this.spe = 35;
			this.inte = 45;
			this.lib = 55;
			this.sens = 40;
			this.cor = 30;

			//Combat Stats
			this.bonusHP = 80;
			this.HP = eMaxHP();
			this.lustVuln = .5;
			this.lust = 30;

			//Level Stats
			this.level = 4;
			this.XP = totalXP();
			this.gems = rand(15) + 5;


		}
		
	}

}