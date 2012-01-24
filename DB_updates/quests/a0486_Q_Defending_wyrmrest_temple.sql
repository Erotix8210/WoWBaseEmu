DELETE from spell_script_target WHERE entry=49367;
INSERT into spell_script_target VALUES
(49367,1,27698);

UPDATE creature_template SET
npcflag=npcflag &~ 1,
ScriptName='npc_vehicle'
where entry=27629;

UPDATE creature_template SET
AIName='EventAI'
WHERE entry=27698;

DELETE from creature_ai_scripts where creature_id=27698;
INSERT INTO creature_ai_scripts VALUES
(2769801,27698,8,0,100,1,49367,-1,0,0,33,27698,6,0,0,0,0,0,0,0,0,0,'defending wyrmrest temple - Quest Credit after spell hit');
