UPDATE creature_template SET
ScriptName='npc_inquisitor_hallard'
WHERE entry=27316;

DELETE from spell_script_target where entry=49062;
INSERT into spell_script_target VALUES
(49062,1,27577);
