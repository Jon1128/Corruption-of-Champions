package classes.Monsters 
{
	import classes.Appearance;
	import classes.Cock;
	import classes.Monster;
	import classes.CockTypesEnum;
	import classes.GlobalFlags.kFLAGS;
	
	/**
	 * ...
	 * @author aimozg
	 */
	public class Kelt extends Monster 
	{
		
		public function Kelt(mainClassPtr:*) 
		{
			super(mainClassPtr);
			init1Names("","Kelt","kelt","Kelt has changed for the worse since your first meeting.  Gone is his muscular, barrel chest.  In its place is a softer frame, capped with tiny boobs - remnants of your last treatment.  His jaw is fairly square and chiselled (though less than before).  From the waist down, he has the body of a horse, complete with fairly large pair of balls and a decent-sized dong.  Both are smaller than they used to be, however.  He has his bow strung and out, clearly intent on defending himself from your less than gentle touches."+(mainClassPtr.flags[kFLAGS.KELT_BREAK_LEVEL] == 2?"Kelt is looking less and less like the burly centaur from before, and more and more like a woman.  He looks more like an odd, androgynous hybrid than the beautiful woman you had turned him into.  He currently sports roughly b-cup breasts and a smallish, miniature horse-cock.  There's barely any hair on his human body, aside from a long mane of hair.  Each treatment seems to be more effective than the last, and you can't wait to see what happens after you tame him THIS time.":""));
			init2Male(new Cock(36,3.5,CockTypesEnum.HORSE),2,2+rand(13),1.5,mainClassPtr.player.ballSize * 10);
			init3BreastRows(0);
			init4Ass(ANAL_LOOSENESS_NORMAL,ANAL_WETNESS_DRY,50);
			init5Body(84,HIP_RATING_AVERAGE,BUTT_RATING_AVERAGE+1,LOWER_BODY_TYPE_CENTAUR);
			init6Skin("tan");
			init7Hair(Appearance.randomChoice("black","brown"),3);

			this.temperment = 1;

			//Clothing/Armor
			this.armorName = "tough skin";
			this.weaponName = "fist";
			this.weaponVerb = "punch";
			this.armorDef = 4;

			this.weaponAttack = 10;

			//Primary stats
			this.str = 60;
			this.tou = 70;
			this.spe = 40;
			this.inte = 20;
			this.lib = 40;
			this.sens = 25;
			this.cor = 55;

			this.lust = 40;
			this.lustVuln = 0.83;
			//Combat Stats
			this.bonusHP = 200;
			this.HP = eMaxHP();
			//Level Stats
			this.level = 6;
			this.XP = totalXP();
			this.gems = rand(5) + 5;

			this.tailType = TAIL_TYPE_HORSE;

			//Create imp sex attributes
		}
		
	}

}