// Twilight Sparkle unit script
// by TheComet

// -----------------------------------------------------------------------------------
// Initial setups
// -----------------------------------------------------------------------------------

// disable iteration. This stops the program until the script has finished
DisableIteration

// variables
int n
int unitID

// -----------------------------------------------------------------------------------
// Load unit
// -----------------------------------------------------------------------------------

// create a unit
CreateUnit 75 0 99 UNITCONTROL_PLAYER "media\objects\units\players\GAK\GAK.x"
UnitScale this 30 30 30

// store unit ID
unitID = this

// -----------------------------------------------------------------------------------
// set keyframes
// -----------------------------------------------------------------------------------

// gound keyframes
SetValue Unit.Anim.Idle.Start 0
SetValue Unit.Anim.Idle.End 12
SetValue Unit.Anim.Creep.Start 21
SetValue Unit.Anim.Creep.End 33
SetValue Unit.Anim.Walk.Start 21
SetValue Unit.Anim.Walk.End 22
SetValue Unit.Anim.Run.Start 21
SetValue Unit.Anim.Run.End 33

// die keyframes
SetValue Unit.Anim.GroundDie1.Start 14
SetValue Unit.Anim.GroundDie1.End 19
SetValue Unit.Anim.GroundDie2.Start 14
SetValue Unit.Anim.GroundDie2.End 19
SetValue Unit.Anim.GroundDieBurn.Start 14
SetValue Unit.Anim.GroundDieBurn.End 19

// -----------------------------------------------------------------------------------
// set speed for frames
// -----------------------------------------------------------------------------------

// ground speeds
SetValue Unit.Anim.Idle.Speed 0.1
SetValue Unit.Anim.Creep.Speed 0.2
SetValue Unit.Anim.Walk.Speed 0.5
SetValue Unit.Anim.Run.Speed 0.8

// die speeds
SetValue Unit.Anim.GroundDie1.Speed 0.1
SetValue Unit.Anim.GroundDie2.Speed 0.1
SetValue Unit.Anim.GroundDieBurn.Speed 0.1

// -----------------------------------------------------------------------------------
// Movement settings
// -----------------------------------------------------------------------------------

// set speed values
SetValue Unit.GroundSpeed 0.05

// -----------------------------------------------------------------------------------
// View ranges
// -----------------------------------------------------------------------------------

// set ranges
SetValue Unit.GroundViewRange 20.0

// -----------------------------------------------------------------------------------
// Stats
// -----------------------------------------------------------------------------------

// health bar
SetValue Unit.Stats.HealthEnable 1
SetValue Unit.Stats.MaxHealth 50
SetValue Unit.Stats.CurrentHealth 50

// -----------------------------------------------------------------------------------
// Abilities
// -----------------------------------------------------------------------------------

// standard abilities (move, stop, hold, patrol, attack)
UnitAddAbility this UNITABILITY_MOVE 2
GUIBindButtonToUnit 2 this
UnitAddAbility this UNITABILITY_STOP 3
GUIBindButtonToUnit 3 this
UnitAddAbility this UNITABILITY_HOLD 4
GUIBindButtonToUnit 4 this
UnitAddAbility this UNITABILITY_PATROL 5
GUIBindButtonToUnit 5 this

// set abilities to trigger all units and not just one
UnitSetAbilityGlobal this UNITABILITY_MOVE
UnitSetAbilityGlobal this UNITABILITY_STOP
UnitSetAbilityGlobal this UNITABILITY_HOLD
UnitSetAbilityGlobal this UNITABILITY_PATROL

// -----------------------------------------------------------------------------------
// Sounds
// -----------------------------------------------------------------------------------

// select
UnitAddSound unitID "media\sounds\units\GAK\GAK_select1.wav" UNITSOUND_SELECT
UnitAddSound unitID "media\sounds\units\GAK\GAK_select2.wav" UNITSOUND_SELECT
UnitAddSound unitID "media\sounds\units\GAK\GAK_select3.wav" UNITSOUND_SELECT
UnitAddSound unitID "media\sounds\units\GAK\GAK_select4.wav" UNITSOUND_SELECT
UnitAddSound unitID "media\sounds\units\GAK\GAK_annoyed1.wav" UNITSOUND_ANNOYED

// move
UnitAddSound unitID "media\sounds\units\GAK\GAK_move1.wav" UNITSOUND_MOVE
UnitAddSound unitID "media\sounds\units\GAK\GAK_move2.wav" UNITSOUND_MOVE
UnitAddSound unitID "media\sounds\units\GAK\GAK_move3.wav" UNITSOUND_MOVE
UnitAddSound unitID "media\sounds\units\GAK\GAK_move4.wav" UNITSOUND_MOVE
UnitAddSound unitID "media\sounds\units\GAK\GAK_move5.wav" UNITSOUND_MOVE

// NEVER forget
end