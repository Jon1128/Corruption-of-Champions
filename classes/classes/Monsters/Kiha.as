package classes.Monsters 
{
	import classes.Monster;
	
	/**
	 * ...
	 * @author ...
	 */
	public class Kiha extends Monster 
	{
		
		public function Kiha(mainClassPtr:*) 
		{
			super(mainClassPtr);
			init1Names("", "Kiha", "kiha", "Kiha is standing across from you, holding a double-bladed axe that's nearly as big as she is.  She's six feet tall, and her leathery wings span nearly twelve feet extended.  Her eyes are pure crimson, save for a black slit in the center, and a pair of thick draconic horns sprout from her forehead, arcing over her ruby-colored hair to point behind her.  Dim red scales cover her arms, legs, back, and strong-looking tail, providing what protection they might  to large areas of her body.  The few glimpses of exposed skin are dark, almost chocolate in color, broken only by a few stray scales on the underside of her bosom and on her cheekbones.  Her vagina constantly glistens with moisture, regardless of her state of arousal.  Despite her nudity, Kiha stands with the confidence and poise of a trained fighter.");
			init2Female(VAGINA_WETNESS_DROOLING,VAGINA_LOOSENESS_NORMAL,40,true);
			init3BreastRows("D");
			init4Ass(ANAL_LOOSENESS_LOOSE,ANAL_WETNESS_DRY,40);
			init5Body("6'1",HIP_RATING_AMPLE,BUTT_RATING_AVERAGE+1,LOWER_BODY_TYPE_HOOFED);
			init6Skin("dark",SKIN_TYPE_SCALES,"skin and scales");
			init7Hair("red",3);

			this.temperment = 1;

			//Clothing/Armor
			this.armorName = "thick scales";
			this.weaponName = "double-bladed axe";
			this.weaponVerb = "fiery cleave";
			this.armorDef = 30;

			this.weaponAttack = 25;

			//Primary stats
			this.str = 65;
			this.tou = 60;
			this.spe = 85;
			this.inte = 60;
			this.lib = 50;
			this.sens = 45;
			this.cor = 66;

			//Combat Stats
			this.bonusHP = 430;
			this.HP = eMaxHP();
			this.lustVuln = 0.4;
			this.lust = 10;

			//Level Stats
			this.level = 16;
			this.XP = totalXP();
			this.gems = rand(15) + 95;


			this.wingDesc = "huge";

			this.wingType = WING_TYPE_IMP;

			this.tailType = TAIL_TYPE_LIZARD;

		}
		
	}

}