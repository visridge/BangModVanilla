// The AI King on BangModVanillaAIKing maps. Spawned and owned by BangModVanillaTO; BangModVanillaBotBrain gives it
// the King combat profile. Leaves the game when it dies, so it never respawns as a footsoldier.
class BangModVanillaKingBot extends BangModVanillaAOCCombatBot;

event Possess(Pawn aPawn, bool bVehicleTransition)
{
	super.Possess(aPawn, bVehicleTransition);
	if (BangModVanillaTO(WorldInfo.Game) != none)
		BangModVanillaTO(WorldInfo.Game).BangModVanillaAIKingSpawned(self, AOCPawn(aPawn));
}

function PawnDied(Pawn P)
{
	super.PawnDied(P);
	LogAlwaysInternal("[BangModVanillaKing] died"@P@"killer="$P.LastHitBy);
	SetTimer(0.5f, false, 'BangModVanillaLeave');
}

function BangModVanillaLeave()
{
	if (BangModVanillaTO(WorldInfo.Game) != none)
		BangModVanillaTO(WorldInfo.Game).BangModVanillaRemoveAIKing(self);
	else
		Destroy();
}

DefaultProperties
{
}
