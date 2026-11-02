/**
 * Agatha Footman-Archer family info (weapon-keyed STAT override only).
 *
 * This family is NEVER registered in AOCGRI.FamilyInfos and is never used as a
 * pawn's PawnFamily. It exists purely as a stat container: when the Archer equips
 * a footman primary (Spear / Brandistock / AgathaFlag / GrandLance), the pawn reads
 * movement speeds and damage resistances from this class's defaults instead of the
 * real Archer family (see BangModVanillaPawn.BangModVanillaFootmanFamilyClass and the stat hooks
 * in BangModVanillaPawn.uci). Copy of the Archer family values — tweak here to diverge.
 */
class BangModVanillaFamilyInfo_Agatha_FootmanArcher extends BangModVanillaFamilyInfo_Agatha_Archer
	dependson(AOCPawn);

DefaultProperties
{
	FamilyID="FootmanArcher"
	Faction="Agatha"
	FamilyFaction=EFAC_AGATHA

	NewPrimaryWeapons.empty;
	NewPrimaryWeapons(0)=(CWeapon=class'BangModVanillaWeapon_Shortbow',CForceTertiary=(class'AOCWeapon_ProjBodkin', class'AOCWeapon_ProjBroadhead'))
	NewPrimaryWeapons(1)=(CWeapon=class'BangModVanillaWeapon_Longbow',CForceTertiary=(class'AOCWeapon_ProjBodkin', class'AOCWeapon_ProjBroadhead'))
	NewPrimaryWeapons(2)=(CWeapon=class'BangModVanillaWeapon_Warbow',CForceTertiary=(class'AOCWeapon_ProjBodkin', class'AOCWeapon_ProjBroadhead'))
	NewPrimaryWeapons(3)=(CWeapon=class'BangModVanillaWeapon_ShortSpearMelee',CForceTertiary=(class'BangModVanillaWeapon_Buckler_Agatha'))
	NewPrimaryWeapons(4)=(CWeapon=class'BangModVanillaWeapon_JavelinMelee',CForceTertiary=(class'BangModVanillaWeapon_Buckler_Agatha'))
	NewPrimaryWeapons(5)=(CWeapon=class'BangModVanillaWeapon_HeavyJavelinMelee',CForceTertiary=(class'BangModVanillaWeapon_Buckler_Agatha'))
	NewPrimaryWeapons(6)=(CWeapon=class'BangModVanillaWeapon_Spear',CorrespondingDuelProp=EDUEL_SpearUse)
	NewPrimaryWeapons(7)=(CWeapon=class'BangModVanillaWeapon_Brandistock',CorrespondingDuelProp=EDUEL_BrandistockUse)
	// NewPrimaryWeapons(8)=(CWeapon=class'BangModVanillaWeapon_GrandLance',CorrespondingDuelProp=EDUEL_SpearUse)

	NewSecondaryWeapons.empty;
	NewSecondaryWeapons(0)=(CWeapon=class'BangModVanillaWeapon_Broadsword')
	NewSecondaryWeapons(1)=(CWeapon=class'BangModVanillaWeapon_NorseSword')
	NewSecondaryWeapons(2)=(CWeapon=class'BangModVanillaWeapon_Falchion',CorrespondingDuelProp=EDUEL_FalchionUse)
	NewSecondaryWeapons(3)=(CWeapon=class'AOCWeapon_Cudgel',CorrespondingDuelProp=EDUEL_CudgelUse)
	NewSecondaryWeapons(4)=(CWeapon=class'BangModVanillaWeapon_WarAxe',CorrespondingDuelProp=EDUEL_WarAxeUse)
	NewSecondaryWeapons(5)=(CWeapon=class'BangModVanillaWeapon_Dane',CorrespondingDuelProp=EDUEL_DaneUse)
	NewSecondaryWeapons(6)=(CWeapon=class'BangModVanillaWeapon_Mace',CorrespondingDuelProp=EDUEL_MaceUse)
	NewSecondaryWeapons(7)=(CWeapon=class'BangModVanillaWeapon_MorningStar',CorrespondingDuelProp=EDUEL_MorningStarUse)
	NewSecondaryWeapons(8)=(CWeapon=class'BangModVanillaWeapon_HolyWaterSprinkler',CorrespondingDuelProp=EDUEL_HolyWaterSprinklerUse)

	NewTertiaryWeapons.empty;
	NewTertiaryWeapons(0)=(CWeapon=class'AOCWeapon_ProjBodkin',bEnabledDefault=false)
	NewTertiaryWeapons(1)=(CWeapon=class'AOCWeapon_ProjBroadhead',bEnabledDefault=false)
	NewTertiaryWeapons(2)=(CWeapon=class'BangModVanillaWeapon_HuntingKnife',CorrespondingDuelProp=EDUEL_HuntingKnifeUse)
	NewTertiaryWeapons(3)=(CWeapon=class'BangModVanillaWeapon_Buckler_Agatha',bEnabledDefault=false)

	ProjectileLocationModifiers(EHIT_Head) = 2.5
	ProjectileLocationModifiers(EHIT_Torso) = 2.0
	ProjectileLocationModifiers(EHIT_Arm) = 2.0
	ProjectileLocationModifiers(EHIT_Legs) = 1.75
	CrossbowLocationModifiers(EHIT_Head) = 2.5
	CrossbowLocationModifiers(EHIT_Torso) = 2.25
	CrossbowLocationModifiers(EHIT_Arm) = 2.25

	DamageResistances(EDMG_Swing) = 0.85
	DamageResistances(EDMG_Pierce) = 0.85
	DamageResistances(EDMG_Blunt) = 0.65

	AirSpeed=440.0
	WaterSpeed=220.0
	AirControl=0.35
	GroundSpeed=190.0
	AccelRate=500.0
	SprintAccelRate=100.0
	JumpZ=380.0
	SprintModifier=1.65
	SprintTime=10.0
	DodgeSpeed=400.0
	DodgeSpeedZ=200.0
	Health=100
	BACK_MODIFY=0.7
	STRAFE_MODIFY=0.85
	FORWARD_MODIFY=1.0
	CROUCH_MODIFY=0.65
	MaxSprintSpeedTime=3.5
	bCanDodge=true
	iKickCost=25
	iDodgeCost=40
	fComboAggressionBonus=1.0
	fBackstabModifier=1.0
	iMissMeleeStrikePenalty=10
	iMissMeleeStrikePenaltyBonus=0
	bCanSprintAttack=false
	fStandingSpread=0.05f
	fCrouchingSpread=0.0f
	fWalkingSpread=0.1
	fSprintingSpread=0.25
	fFallingSpread=0.25
	fSpreadPenaltyPerSecond=0.5
	fSpreadRecoveryPerSecond=0.3
}
