/**
 * Agatha Assassin.
 *
 * Fifth class for Agatha. Man-At-Arms stats and weapon selection, but with the
 * Archer's ninja-roll dodge. Extends BangModVanillaFamilyInfo_Archer so the roll config
 * (BangModVanillaRoll reads BangModVanillaFamilyInfo_Archer) applies; all stats and weapons are
 * then overridden to match the Man-At-Arms.
 *
 * ClassReference uses ECLASS_SiegeEngineer (enum index 4), which is the reserved
 * fifth class slot in AOCGRI.FamilyInfos (index 4 for Agatha, 9 for Mason).
 */
class BangModVanillaFamilyInfo_Agatha_Assassin extends BangModVanillaFamilyInfo_Archer
	dependson(AOCPawn);

DefaultProperties
{
	FamilyID="Assassin"
	Faction="Agatha"
	FamilyFaction=EFAC_AGATHA
	ClassName="Assassin"
	ClassReference=ECLASS_SiegeEngineer

	// Roll config (bUseCustomDodgeAnims, DodgeAnimUp*, iRollStaminaCost, etc.) is
	// inherited from BangModVanillaFamilyInfo_Archer and left untouched.

	// Man-At-Arms weapon selection (copied from BangModVanillaFamilyInfo_Agatha_ManAtArms)
	NewPrimaryWeapons.empty;
	NewPrimaryWeapons(0)=(CWeapon=class'BangModVanillaWeapon_Longsword')
	NewPrimaryWeapons(1)=(CWeapon=class'BangModVanillaWeapon_NorseSword')
	NewPrimaryWeapons(2)=(CWeapon=class'BangModVanillaWeapon_Falchion',CorrespondingDuelProp=EDUEL_FalchionUse)
	NewPrimaryWeapons(3)=(CWeapon=class'BangModVanillaWeapon_Hatchet',CorrespondingDuelProp=EDUEL_HatchetUse)
	NewPrimaryWeapons(4)=(CWeapon=class'BangModVanillaWeapon_WarAxe',CorrespondingDuelProp=EDUEL_WarAxeUse)
	NewPrimaryWeapons(5)=(CWeapon=class'BangModVanillaWeapon_Dane',CorrespondingDuelProp=EDUEL_DaneUse)
	NewPrimaryWeapons(6)=(CWeapon=class'BangModVanillaWeapon_Mace',CorrespondingDuelProp=EDUEL_MaceUse)
	NewPrimaryWeapons(7)=(CWeapon=class'BangModVanillaWeapon_MorningStar',CorrespondingDuelProp=EDUEL_MorningStarUse)
	NewPrimaryWeapons(8)=(CWeapon=class'BangModVanillaWeapon_HolyWaterSprinkler',CorrespondingDuelProp=EDUEL_HolyWaterSprinklerUse)
	NewPrimaryWeapons(9)=(CWeapon=class'BangModVanillaWeapon_QuarterStaff',CorrespondingDuelProp=EDUEL_QStaffUse)
	NewPrimaryWeapons(10)=(CWeapon=class'BangModVanillaWeapon_DualBucklers')
	NewPrimaryWeapons(11)=(CWeapon=class'BangModVanillaWeapon_Firebug')

	NewSecondaryWeapons.empty;
	NewSecondaryWeapons(0)=(CWeapon=class'BangModVanillaWeapon_Saber')
	NewSecondaryWeapons(1)=(CWeapon=class'BangModVanillaWeapon_Cudgel')
	NewSecondaryWeapons(2)=(CWeapon=class'BangModVanillaWeapon_Dagesse')

	NewTertiaryWeapons.empty;
	NewTertiaryWeapons(0)=(CWeapon=class'BangModVanillaWeapon_ThrowingKnife')
	NewTertiaryWeapons(1)=(CWeapon=class'BangModVanillaWeapon_ThrowingAxe')
	NewTertiaryWeapons(2)=(CWeapon=class'BangModVanillaWeapon_OilPot')
	NewTertiaryWeapons(3)=(CWeapon=class'BangModVanillaWeapon_Heater_Agatha',bEnabledDefault=true)
	bCanDodge=true

	ProjectileLocationModifiers(EHIT_Head) = 1.5
	ProjectileLocationModifiers(EHIT_Torso) = 1
	ProjectileLocationModifiers(EHIT_Arm) = 1
	CrossbowLocationModifiers(EHIT_Head) = 2
	CrossbowLocationModifiers(EHIT_Torso) = 1
	CrossbowLocationModifiers(EHIT_Arm) = 1

	// damage modifiers
	DamageResistances(EDMG_Swing) = 0.8
	DamageResistances(EDMG_Pierce) = 0.85
	DamageResistances(EDMG_Blunt) = 0.65

	// LocationModifiers(EHIT_Head) = 1.125 // was inherited 1.25

	// Man-At-Arms movement/stats (override archer base where they differ)
	AirControl=0.5
	GroundSpeed=210.0
	SprintModifier=1.55
	BACK_MODIFY=0.7
	STRAFE_MODIFY=0.9
	FORWARD_MODIFY=1.0
	AccelRate=600.0
	iKickCost=20
	iDodgeCost=20
	PercentDamageToTake=0.9
	fShieldStaminaAbsorption=6
	MaxSprintSpeedTime=2.0
	// SprintTurnSpeed=999999
}
