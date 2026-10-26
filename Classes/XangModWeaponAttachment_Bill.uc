/**
* Copyright 2010-2012, Torn Banner Studios, All rights reserved
*
* Original Author: Michael Bao
*
* Weapon Attachment: Billhook.
*/
class XangModWeaponAttachment_Bill extends AOCWeaponAttachment_Bill;

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

    return (HandleLength / WeaponLength);
}

DefaultProperties
{
	KickOffset=(X=50, Y=0, Z=-65)
	KickSize=20.f

	Begin Object Name=SkeletalMeshComponent0
		SkeletalMesh=SkeletalMesh'WP_pol_Bardiche.WEP_bardiche'
	End Object

	Begin Object Name=SkeletalMeshComponent2
		SkeletalMesh=SkeletalMesh'WP_pol_Bardiche.WEP_bardiche'
	End Object

	WeaponID=EWEP_Bill
	WeaponClass=class'AOCWeapon_Bill'
	WeaponSocket=wepPolepoint

	AttackTypeInfo(0)=(fBaseDamage=70.0, fForce=32500, cDamageType="AOC.AOCDmgType_SwingBlunt", iWorldHitLenience=6)
	AttackTypeInfo(1)=(fBaseDamage=75.0, fForce=32500, cDamageType="AOC.AOCDmgType_SwingBlunt", iWorldHitLenience=6)
	AttackTypeInfo(2)=(fBaseDamage=70.0, fForce=33500, cDamageType="AOC.AOCDmgType_Pierce", iWorldHitLenience=6)
	AttackTypeInfo(3)=(fBaseDamage=100.0, fForce=65000, cDamageType="AOC.AOCDmgType_Pierce", iWorldHitLenience=6)
	AttackTypeInfo(4)=(fBaseDamage=0.0, fForce=25500, cDamageType="AOC.AOCDmgType_Swing", iWorldHitLenience=6)
	AttackTypeInfo(5)=(fBaseDamage=5.0, fForce=45500.0, cDamageType="AOC.AOCDmgType_Shove", iWorldHitLenience=12)

	Skins(0)={(
		SkeletalMeshPath="WP_pol_Bill.WEP_Bill",
		StaticMeshPath="WP_pol_Bill.sm_Bill",
		MaterialPath="",
		StaticMeshScale=1.0,
		ImagePath="ui_custweaponimages_swf.skin_billhook_png"
		)};
	Skins(1)={(
		SkeletalMeshPath="WP_pol_Bill_Variant_01.WEP_bill_shark",
		StaticMeshPath="WP_pol_Bill_Variant_01.SM_bill_shark",
		MaterialPath="",
		StaticMeshScale=1.0,
		ImagePath="ui_custweaponimages_swf.skin_shark_png"
		)};
	Skins(2)={(
		SkeletalMeshPath="WP_Pol_Bill_Variant_02.wep_bill_var_03",
		StaticMeshPath="WP_Pol_Bill_Variant_02.sm_bill_var_03",
		MaterialPath="",
		StaticMeshScale=1.0,
		ImagePath="ui_custweaponimages_swf.skin_reaperbillhook_png"
		)};
}
