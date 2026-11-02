class BangModVanillaFamilyInfo_Agatha_Knight extends AOCFamilyInfo_Agatha_Knight;

DefaultProperties
{
	// ParryBoxScale=(X=0.20,Y=0.17,Z=0.35)
    // ParryBoxTranslation=(X=10, Z=-28)

	NewPrimaryWeapons.empty;
	NewPrimaryWeapons(0)=(CWeapon=class'BangModVanillaWeapon_DoubleAxe',CForceTertiary=(class'BangModVanillaWeapon_HuntingKnife', class'BangModVanillaWeapon_Kite_Agatha', class'BangModVanillaWeapon_TowerShield_Agatha'))
	NewPrimaryWeapons(1)=(CWeapon=class'BangModVanillaWeapon_PoleAxe',CForceTertiary=(class'BangModVanillaWeapon_HuntingKnife', class'BangModVanillaWeapon_Kite_Agatha', class'BangModVanillaWeapon_TowerShield_Agatha'))
	NewPrimaryWeapons(2)=(CWeapon=class'BangModVanillaWeapon_Bearded',CForceTertiary=(class'BangModVanillaWeapon_HuntingKnife', class'BangModVanillaWeapon_Kite_Agatha', class'BangModVanillaWeapon_TowerShield_Agatha'))
	NewPrimaryWeapons(3)=(CWeapon=class'BangModVanillaWeapon_WarHammer',CForceTertiary=(class'BangModVanillaWeapon_HuntingKnife', class'BangModVanillaWeapon_Kite_Agatha', class'BangModVanillaWeapon_TowerShield_Agatha'))
	NewPrimaryWeapons(4)=(CWeapon=class'BangModVanillaWeapon_Maul',CForceTertiary=(class'BangModVanillaWeapon_HuntingKnife', class'BangModVanillaWeapon_Kite_Agatha', class'BangModVanillaWeapon_TowerShield_Agatha'))
	NewPrimaryWeapons(5)=(CWeapon=class'BangModVanillaWeapon_GrandMace',CForceTertiary=(class'BangModVanillaWeapon_HuntingKnife', class'BangModVanillaWeapon_Kite_Agatha', class'BangModVanillaWeapon_TowerShield_Agatha'))
	NewPrimaryWeapons(6)=(CWeapon=class'BangModVanillaWeapon_Longsword',CForceTertiary=(class'BangModVanillaWeapon_HuntingKnife', class'BangModVanillaWeapon_Kite_Agatha', class'BangModVanillaWeapon_TowerShield_Agatha'))
	NewPrimaryWeapons(7)=(CWeapon=class'BangModVanillaWeapon_SwordOfWar',CForceTertiary=(class'BangModVanillaWeapon_HuntingKnife', class'BangModVanillaWeapon_Kite_Agatha', class'BangModVanillaWeapon_TowerShield_Agatha'))
	NewPrimaryWeapons(8)=(CWeapon=class'BangModVanillaWeapon_Messer',CForceTertiary=(class'BangModVanillaWeapon_HuntingKnife', class'BangModVanillaWeapon_Kite_Agatha', class'BangModVanillaWeapon_TowerShield_Agatha'))
	NewPrimaryWeapons(9)=(CWeapon=class'BangModVanillaWeapon_HFlail',CForceTertiary=(class'BangModVanillaWeapon_Kite_Agatha', class'BangModVanillaWeapon_TowerShield_Agatha'))
	
	



	NewSecondaryWeapons.empty;
	NewSecondaryWeapons(0)=(CWeapon=class'BangModVanillaWeapon_Mace')
	NewSecondaryWeapons(1)=(CWeapon=class'BangModVanillaWeapon_MorningStar')
	NewSecondaryWeapons(2)=(CWeapon=class'BangModVanillaWeapon_HolyWaterSprinkler')
	NewSecondaryWeapons(3)=(CWeapon=class'BangModVanillaWeapon_Saber')
	NewSecondaryWeapons(4)=(CWeapon=class'BangModVanillaWeapon_Falchion')
	NewSecondaryWeapons(5)=(CWeapon=class'BangModVanillaWeapon_WarAxe')
	NewSecondaryWeapons(6)=(CWeapon=class'BangModVanillaWeapon_Dane')
	NewSecondaryWeapons(7)=(CWeapon=class'BangModVanillaWeapon_Cudgel')
	

	NewTertiaryWeapons.empty;
	NewTertiaryWeapons(0)=(CWeapon=class'BangModVanillaWeapon_HuntingKnife',CorrespondingDuelProp=EDUEL_HuntingKnifeUse)
	NewTertiaryWeapons(1)=(CWeapon=class'BangModVanillaWeapon_Kite_Agatha',bEnabledDefault=true)
	NewTertiaryWeapons(2)=(CWeapon=class'BangModVanillaWeapon_TowerShield_Agatha',bEnabledDefault=true)

	ProjectileLocationModifiers(EHIT_Head) = 1.5
	ProjectileLocationModifiers(EHIT_Torso) = 1
	ProjectileLocationModifiers(EHIT_Arm) = 1

	DamageResistances(EDMG_Swing) = 0.4
	DamageResistances(EDMG_Pierce) = 0.5
	DamageResistances(EDMG_Blunt) = 0.61

	CrossbowLocationModifiers(EHIT_Head) = 2
	CrossbowLocationModifiers(EHIT_Torso) = 1.2
	CrossbowLocationModifiers(EHIT_Arm) = 1.2

	MaxSprintSpeedTime=4.0
	SprintModifier=1.7
	BACK_MODIFY=0.7
	// SprintTurnSpeed=999999
}
