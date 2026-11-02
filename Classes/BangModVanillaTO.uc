class BangModVanillaTO extends AOCTeamObjective;

// CE Autoskip: when enabled by admin, fires "ce skip" when objective timer reaches 5 seconds
var bool bCEAutoskipEnabled;
var bool bCEAutoskipFired;

// CompForest: automatically fires "ce skip" to advance past objective 1 when the in-game
// timer hits the 1-minute-remaining mark and objective 1 hasn't been completed yet.
var bool bCECompForestAutoskipFired;

// Stage index skipped by AdminSkipObjective; its bonus time is zeroed when the map advances. -1 = none.
var int BangModVanillaSkipStage;

// Bot King (BangModVanillaAIKing maps); the flag mutes vanilla's King pick for one tick.
var BangModVanillaKingBot BangModVanillaAIKingBot;
var AOCObjective_Assassination BangModVanillaKingObj;
var bool bBangModVanillaKingHandoff;
var int BangModVanillaAIKingMode;    // AdminAIKing: 0 = as configured, 1 = on, 2 = off for this match

`include(BangModVanilla/Include/BangModVanillaTO.uci)
`include(BangModVanilla/Include/BangModVanillaGame.uci)
`include(BangModVanilla/Include/BangModVanillaTOGamemode.uci)
`include(BangModVanilla/Include/BangModVanillaRankedHooks.uci)

DefaultProperties
{
	// Team damage: 0.0 = none, 0.5 = 50% (vanilla), 1.0 = 100%
	fTeamDamagePercent=0.5
	BangModVanillaSkipStage=-1
}
