UPDATE creature_template SET
ScriptName='npc_feknut_bunny'
WHERE entry=24230;


DELETE from spell_script_target where entry=43307;
INSERT into spell_script_target VALUES
(43307,1,24230);