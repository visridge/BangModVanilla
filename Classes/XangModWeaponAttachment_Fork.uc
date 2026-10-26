/**
* Copyright 2010-2012, Torn Banner Studios, All rights reserved
*
* Original Author: Michael Bao
*
* Weapon Attachment: Fork.
*/
class XangModWeaponAttachment_Fork extends AOCWeaponAttachment_Fork;

// Parry-box + netcode overrides. MUST be at class level - see the file header.
`include(XangMod/Include/XangModWeaponAttachmentCode.uci)

DefaultProperties
{
	KickOffset=(X=50, Y=0, Z=-65)
	KickSize=20.f

	Begin Object Name=SkeletalMeshComponent0
		SkeletalMesh=SkeletalMesh'WP_spr_Spear.WEP_spear'
	End Object

	Begin Object Name=SkeletalMeshComponent2
		SkeletalMesh=SkeletalMesh'WP_spr_Spear.WEP_spear'
	End Object

	WeaponID=EWEP_Fork
	WeaponClass=class'AOCWeapon_Fork'
	WeaponSocket=wep2hpoint
	bUseAlternativeKick=true

	AttackTypeInfo(0)=(fBaseDamage=25.0, fForce=35000, cDamageType="AOC.AOCDmgType_Blunt", iWorldHitLenience=6)
	AttackTypeInfo(1)=(fBaseDamage=60.0, fForce=31500, cDamageType="AOC.AOCDmgType_Pierce", iWorldHitLenience=6)
	AttackTypeInfo(2)=(fBaseDamage=50.0, fForce=25000, cDamageType="AOC.AOCDmgType_Pierce", iWorldHitLenience=6)
	AttackTypeInfo(3)=(fBaseDamage=100.0, fForce=65000, cDamageType="AOC.AOCDmgType_Pierce", iWorldHitLenience=6)
	AttackTypeInfo(4)=(fBaseDamage=0.0, fForce=25500, cDamageType="AOC.AOCDmgType_Pierce", iWorldHitLenience=6)
	AttackTypeInfo(5)=(fBaseDamage=5.0, fForce=45500.0, cDamageType="AOC.AOCDmgType_Shove", iWorldHitLenience=12)

	Skins(0)={(
		SkeletalMeshPath="WP_spr_Fork.WEP_Fork",
		StaticMeshPath="WP_spr_Fork.sm_Fork",
		MaterialPath="",
		StaticMeshScale=1.0,
		ImagePath="UI_CustWeaponImages_SWF.skin_fork_png"
		)};

	Skins(1)={(
		SkeletalMeshPath="wp_spr_fork_variant01.Wep_Rustypitchfork",
		StaticMeshPath="wp_spr_fork_variant01.SM_Rustypitchfork",
		MaterialPath="",
		StaticMeshScale=1.0,
		ImagePath="UI_CustWeaponImages_SWF.skin_peasants_pitchfork_png"
		)};

	Skins(2)={(
		SkeletalMeshPath="WP_spr_Fork_Variant_02.WEP_ROYALFORK",
		StaticMeshPath="WP_spr_Fork_Variant_02.SM_ROYALFORK",
		MaterialPath="",
		StaticMeshScale=1.0,
		ImagePath="UI_CustWeaponImages_SWF.skin_royal_fork_png"
		)};
		
	Skins(3)={(
		SkeletalMeshPath="WP_spr_Fork_Variant_03.WEP_fork_v01",
		StaticMeshPath="WP_spr_Fork_Variant_03.SM_fork_v01",
		MaterialPath="",
		StaticMeshScale=1.0,
		ImagePath="UI_CustWeaponImages_SWF.skin_fleshdivider_png"
		)};
}

