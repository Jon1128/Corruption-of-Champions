﻿package classes.Monsters
{
	import classes.Cock;
	import classes.Creature;
	import classes.Monster;
	import classes.CockTypesEnum;
	
	/**
	 * ...
	 * @author Fake-Name
	 */


	public class Ceraph extends Monster
	{
		

		public function Ceraph(mainClassPtr:*) 
		{
			super(mainClassPtr);
			trace("Ceraph Constructor!");
			init1Names("", "Ceraph", "ceraph", "Ceraph the Omnibus is totally nude and reveling in it.  Her large yet perky breasts jiggle heavily against her chest as she moves.  The flawless purple skin of her twin mounds glistens with a thin sheen of sweat, inviting you to touch and rub your fingers along their slippery surface.  Her eyes are solid black, but convey a mix of amusement and desire, in spite of their alien appearance.  The demon's crotch is a combination of both genders – a drooling cunt topped with a thick demonic shaft, sprouting from where a clit should be.");
			init2Male(new Cock(10,2,CockTypesEnum.DEMON));
			init2Female(VAGINA_WETNESS_SLAVERING, VAGINA_LOOSENESS_GAPING, 20);
			init3BreastRows("E");
			init4Ass(ANAL_LOOSENESS_STRETCHED,ANAL_WETNESS_DRY,15);
			init5Body("5'6",HIP_RATING_CURVY,BUTT_RATING_NOTICEABLE,LOWER_BODY_TYPE_DEMONIC_HIGH_HEELS);
			init6Skin("purple");
			init7Hair("black",20);

			this.temperment = 2;
			//Lusty teases
			this.special1 = 5133;
			this.special2 = 5134;
			this.special3 = 5135;

			//Clothing/Armor
			this.armorName = "demon-skin";
			this.weaponName = "flaming whip";
			this.weaponVerb = "flame-whip";

			this.weaponAttack = 15;

			//Primary stats
			this.str = 65;
			this.tou = 40;
			this.spe = 80;
			this.inte = 80;
			this.lib = 75;
			this.sens = 15;
			this.cor = 100;

			//Combat Stats
			this.bonusHP = 200;
			this.HP = eMaxHP();
			this.lustVuln = 0.75;

			this.lust = 30;

			//Level Stats
			this.level = 9;
			this.XP = this.totalXP(mainClassPtr.player.level);;
			this.gems = rand(5) + 38;


			//Create goblin sex attributes

			this.XP = this.totalXP(mainClassPtr.player.level);
		}

	}

}