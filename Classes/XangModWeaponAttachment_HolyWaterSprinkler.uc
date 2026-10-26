/**
* Copyright 2010-2012, Torn Banner Studios, All rights reserved
* 
* Original Author: Michael Bao
* 
* The weapon that is replicated to all clients: Holy Water Sprinkler
*/
class XangModWeaponAttachment_HolyWaterSprinkler extends AOCWeaponAttachment_HolyWaterSprinkler;

// Parry-box + netcode overrides. MUST be at class level - see the file header.
`include(XangMod/Include/XangModWeaponAttachmentCode.uci)

simulated function float GetHandleTracerPercent(int i)
{
    local vector vStart, vMid, vEnd;
    local float HandleLength, WeaponLength;

    if (Mesh.GetSocketByName('TraceMid') == None)
    {
        return 0.0f;
    }
    Mesh.GetSocketWorldLocationAndRotation('TraceStart', vStart);
    Mesh.GetSocketWorldLocationAndRotation('TraceMid', vMid);
    Mesh.GetSocketWorldLocationAndRotation('TraceEnd', vEnd);

    WeaponLength = VSize(vEnd - vStart);
    HandleLength = VSize(vMid - vStart);

    return (HandleLength / WeaponLength)/2;
}

DefaultProperties
{
	KickOffset=(X=50, Y=0, Z=-65)
	KickSize=20.f

	Begin Object Name=SkeletalMeshComponent0
		SkeletalMesh=SkeletalMesh'WP_1hb_Mace.WEP_mace'
		Scale=1.1
	End Object

	Begin Object Name=SkeletalMeshComponent2
		SkeletalMesh=SkeletalMesh'WP_1hb_Mace.WEP_mace'
		Scale=1.1
	End Object

	WeaponID=EWEP_HolyWaterSprinkler
	WeaponClass=class'AOCWeapon_HolyWaterSprinkler'
	WeaponSocket=wep1hpoint

	AttackTypeInfo(0)=(fBaseDamage=55.0, fForce=22500, cDamageType="AOC.AOCDmgType_PierceBlunt", iWorldHitLenience=6)
	AttackTypeInfo(1)=(fBaseDamage=60.0, fForce=22500, cDamageType="AOC.AOCDmgType_PierceBlunt", iWorldHitLenience=6)
	AttackTypeInfo(2)=(fBaseDamage=45, fForce=22500, cDamageType="AOC.AOCDmgType_PierceBlunt", iWorldHitLenience=6)
	AttackTypeInfo(3)=(fBaseDamage=0.0, fForce=22500, cDamageType="AOC.AOCDmgType_PierceBlunt", iWorldHitLenience=6)
	AttackTypeInfo(4)=(fBaseDamage=0.0, fForce=22500, cDamageType="AOC.AOCDmgType_PierceBlunt", iWorldHitLenience=6)
	AttackTypeInfo(5)=(fBaseDamage=5.0, fForce=45500.0, cDamageType="AOC.AOCDmgType_Shove", iWorldHitLenience=12)

	Skins(0)={(
		SkeletalMeshPath="WP_1hb_HolyWaterSprinkler.SK_HWS",
		StaticMeshPath="WP_1hb_HolyWaterSprinkler.SM_HWS",
		MaterialPath="",
		StaticMeshScale=1.0,
		ImagePath="ui_custweaponimages_swf.skin_watersprinkler_png"
		)};
	Skins(1)={(
		SkeletalMeshPath="WB_1hb_HolyWaterSprinkler_Variant_01.SK_flight_weapon_lod0",
		StaticMeshPath="WB_1hb_HolyWaterSprinkler_Variant_01.SM_flight_weapon_lod0",
		MaterialPath="",
		StaticMeshScale=1.0,
		ImagePath="ui_custweaponimages_swf.skin_winged_wrath_sprinkler_png"
		)};
	Skins(2)={(
		SkeletalMeshPath="WP_1hb_HWS_Variant_02.WEP_HWS_v02",
		StaticMeshPath="WP_1hb_HWS_Variant_02.SM_HWS_v02",
		MaterialPath="",
		StaticMeshScale=1.0,
		ImagePath="ui_custweaponimages_swf.skin_holywater_sprinkler_png"
		)};
}

