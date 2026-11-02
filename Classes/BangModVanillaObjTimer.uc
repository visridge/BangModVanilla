// Per-map TO stage bonus time overrides, read by BangModVanillaTO.ActivateNextObjectiveStage.
// Section [BangModVanilla.BangModVanillaObjTimer]. Obj is 1-based; Bonus is seconds added on completing that stage.
class BangModVanillaObjTimer extends Object config(Game);

struct ObjTimerOverride
{
	var string Map;
	var int Obj;
	var float Bonus;
};

var config array<ObjTimerOverride> Overrides;

DefaultProperties
{
}
