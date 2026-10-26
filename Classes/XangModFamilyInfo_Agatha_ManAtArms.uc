class XangModFamilyInfo_Agatha_ManAtArms extends XangModFamilyInfo_ManAtArms
	dependson(AOCPawn);

DefaultProperties
{
	FamilyID="Man-At-Arms"
	Faction="Agatha"
	FamilyFaction=EFAC_AGATHA
	// ParryBoxScale=(X=0.20,Y=0.17,Z=0.35)
    // ParryBoxTranslation=(X=10, Z=-28)

	NewPrimaryWeapons.empty;
	NewPrimaryWeapons(0)=(CWeapon=class'XangModWeapon_Broadsword')
	NewPrimaryWeapons(1)=(CWeapon=class'XangModWeapon_NorseSword')
	NewPrimaryWeapons(2)=(CWeapon=class'XangModWeapon_Falchion',CorrespondingDuelProp=EDUEL_FalchionUse)
	NewPrimaryWeapons(3)=(CWeapon=class'XangModWeapon_Hatchet',CorrespondingDuelProp=EDUEL_HatchetUse)
	NewPrimaryWeapons(4)=(CWeapon=class'XangModWeapon_WarAxe',CorrespondingDuelProp=EDUEL_WarAxeUse)
	NewPrimaryWeapons(5)=(CWeapon=class'XangModWeapon_Dane',CorrespondingDuelProp=EDUEL_DaneUse)
	NewPrimaryWeapons(6)=(CWeapon=class'XangModWeapon_Mace',CorrespondingDuelProp=EDUEL_MaceUse)
	NewPrimaryWeapons(7)=(CWeapon=class'XangModWeapon_MorningStar',CorrespondingDuelProp=EDUEL_MorningStarUse)
	NewPrimaryWeapons(8)=(CWeapon=class'XangModWeapon_QuarterStaff',CorrespondingDuelProp=EDUEL_QStaffUse)

	
	NewSecondaryWeapons.empty;
	NewSecondaryWeapons(0)=(CWeapon=class'XangModWeapon_Saber')
	NewSecondaryWeapons(1)=(CWeapon=class'XangModWeapon_Cudgel')
	NewSecondaryWeapons(2)=(CWeapon=class'XangModWeapon_Dagesse')
	NewSecondaryWeapons(3)=(CWeapon=class'XangModWeapon_HolyWaterSprinkler',CorrespondingDuelProp=EDUEL_HolyWaterSprinklerUse)

	NewTertiaryWeapons.empty;
	NewTertiaryWeapons(0)=(CWeapon=class'XangModWeapon_ThrowingKnife')
	NewTertiaryWeapons(1)=(CWeapon=class'XangModWeapon_ThrowingAxe')
	NewTertiaryWeapons(2)=(CWeapon=class'XangModWeapon_OilPot')
	NewTertiaryWeapons(3)=(CWeapon=class'XangModWeapon_Heater_Agatha',bEnabledDefault=true)
	bCanDodge=true

	ProjectileLocationModifiers(EHIT_Head) = 1.5
	ProjectileLocationModifiers(EHIT_Torso) = 1
	ProjectileLocationModifiers(EHIT_Arm) = 1
	CrossbowLocationModifiers(EHIT_Head) = 2
	CrossbowLocationModifiers(EHIT_Torso) = 1
	CrossbowLocationModifiers(EHIT_Arm) = 1
	

	PawnArmorType = ARMORTYPE_LIGHT

	AirSpeed=440.0
	WaterSpeed=220.0
	AirControl=0.35
	GroundSpeed=210.0

	ClassReference = ECLASS_ManAtArms

	// damage modifiers
	DamageResistances(EDMG_Swing) = 0.85
	DamageResistances(EDMG_Pierce) = 0.85
	DamageResistances(EDMG_Blunt) = 0.75

	/*
	 * 
	 * Formerly in UDKFamilyInfo.ini
	 *
	 */
	AccelRate=700.0
	SprintAccelRate=100.0
	JumpZ=380.0
	SprintModifier=1.55
	SprintTime=10.0
	DodgeSpeed=400.0
	DodgeSpeedZ=200.0
	Health=100
	BACK_MODIFY=0.85
	STRAFE_MODIFY=0.9
	FORWARD_MODIFY=1.0
	CROUCH_MODIFY=0.65
	MaxSprintSpeedTime=2
	bCanDodge=true
	iDodgeCost=20
	iKickCost=20
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



