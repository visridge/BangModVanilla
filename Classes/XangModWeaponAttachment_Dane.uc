/**
* Copyright 2010-2012, Torn Banner Studios, All rights reserved
* 
* Original Author: Michael Bao
* 
* The weapon that is replicated to all clients: Dane
*/
class XangModWeaponAttachment_Dane extends AOCWeaponAttachment_Dane;

// Parry-box + netcode overrides. MUST be at class level - see the file header.
`include(XangMod/Include/XangModWeaponAttachmentCode.uci)

DefaultProperties
{
	KickOffset=(X=50, Y=0, Z=-65)
	KickSize=20.f

	Begin Object Name=SkeletalMeshComponent0
		SkeletalMesh=SkeletalMesh'WP_1ha_Hatchet.WEP_Hatchet'
	End Object

	Begin Object Name=SkeletalMeshComponent2
		SkeletalMesh=SkeletalMesh'WP_1ha_Hatchet.WEP_Hatchet'
	End Object

	WeaponID=EWEP_WarAxe
	WeaponClass=class'AOCWeapon_Hatchet'

	WeaponSocket = wep1hpoint

	AttackTypeInfo(0)=(fBaseDamage=60.0, fForce=22500, cDamageType="AOC.AOCDmgType_SwingBlunt", iWorldHitLenience=6)
	AttackTypeInfo(1)=(fBaseDamage=75.0, fForce=25000, cDamageType="AOC.AOCDmgType_SwingBlunt", iWorldHitLenience=6)
	AttackTypeInfo(2)=(fBaseDamage=25.0, fForce=22500, cDamageType="AOC.AOCDmgType_Blunt", iWorldHitLenience=6)
	AttackTypeInfo(3)=(fBaseDamage=100.0, fForce=55500, cDamageType="AOC.AOCDmgType_SwingBlunt", iWorldHitLenience=6)
	AttackTypeInfo(4)=(fBaseDamage=0.0, fForce=32500, cDamageType="AOC.AOCDmgType_SwingBlunt", iWorldHitLenience=6)
	AttackTypeInfo(5)=(fBaseDamage=5.0, fForce=45500.0, cDamageType="AOC.AOCDmgType_Shove", iWorldHitLenience=12)

	Skins(0)={(
		SkeletalMeshPath="WP_1ha_Dane.WEP_Dane",
		StaticMeshPath="WP_1ha_Dane.sm_dane",
		MaterialPath="",
		StaticMeshScale=1.0,
		ImagePath="UI_CustWeaponImages_SWF.skin_dane_png"
		)};
	Skins(1)={(
		SkeletalMeshPath="WP_1ha_dane_Variant_01.WEP_1ha_dane_Variant_01",
		StaticMeshPath="WP_1ha_dane_Variant_01.SM_1ha_dane_Variant_01",
		MaterialPath="",
		StaticMeshScale=1.0,
		ImagePath="UI_CustWeaponImages_SWF.skin_gefjon_png"
		)};
}
