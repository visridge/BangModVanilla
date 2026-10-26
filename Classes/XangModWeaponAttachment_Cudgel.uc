/**
* Copyright 2010-2012, Torn Banner Studios, All rights reserved
* 
* Original Author: Michael Bao
* 
* The weapon that is replicated to all clients: Cudgel
*/
class XangModWeaponAttachment_Cudgel extends AOCWeaponAttachment_Cudgel;

// Parry-box + netcode overrides. MUST be at class level - see the file header.
`include(XangMod/Include/XangModWeaponAttachmentCode.uci)

DefaultProperties
{
	KickOffset=(X=50, Y=0, Z=-65)
	KickSize=20.f

	Begin Object Name=SkeletalMeshComponent0
		SkeletalMesh=SkeletalMesh'WP_aux_Shortsword.wep_shortsword'
	End Object

	Begin Object Name=SkeletalMeshComponent2
		SkeletalMesh=SkeletalMesh'WP_aux_Shortsword.wep_shortsword'
	End Object

	WeaponID=EWEP_Cudgel
	WeaponClass=class'AOCWeapon_Cudgel'
	WeaponSocket=wep1hpoint

	AttackTypeInfo(0)=(fBaseDamage=40.0, fForce=12500, cDamageType="AOC.AOCDmgType_Blunt", iWorldHitLenience=6)
	AttackTypeInfo(1)=(fBaseDamage=45.0, fForce=12500, cDamageType="AOC.AOCDmgType_Blunt", iWorldHitLenience=6)
	AttackTypeInfo(2)=(fBaseDamage=20.0, fForce=11500, cDamageType="AOC.AOCDmgType_Blunt", iWorldHitLenience=6)
	AttackTypeInfo(3)=(fBaseDamage=100.0, fForce=42500, cDamageType="AOC.AOCDmgType_Blunt", iWorldHitLenience=6)
	AttackTypeInfo(4)=(fBaseDamage=0.0, fForce=22500, cDamageType="AOC.AOCDmgType_Blunt", iWorldHitLenience=6)
	AttackTypeInfo(5)=(fBaseDamage=5.0, fForce=45500.0, cDamageType="AOC.AOCDmgType_Shove", iWorldHitLenience=12)

	Skins(0)={(
		SkeletalMeshPath="WP_aux_Cudgel.WEP_Cudgel",
		StaticMeshPath="WP_aux_Cudgel.SM_Cudgel",
		MaterialPath="",
		StaticMeshScale=1.0,
		ImagePath="UI_CustWeaponImages_SWF.skin_cudgel_png"
		)};
	Skins(1)={(
		SkeletalMeshPath="WP_aux_cudgel_variant_01.WEP_cudgel_v01",
		StaticMeshPath="WP_aux_cudgel_variant_01.SM_cudgel_v01",
		MaterialPath="",
		StaticMeshScale=1.0,
		ImagePath="UI_CustWeaponImages_SWF.skin_skullCrusher_png"
		)};
	Skins(2)={(
		SkeletalMeshPath="WP_aux_cudgel_variant_02.Wep_cudgel_variation_01",
		StaticMeshPath="WP_aux_cudgel_variant_02.SM_cudgel_variation_01",
		MaterialPath="",
		StaticMeshScale=1.0,
		ImagePath="UI_CustWeaponImages_SWF.skin_block_knocker_png"
		)};
}
