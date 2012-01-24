UPDATE creature_template SET
ScriptName='npc_hourglass'
WHERE entry=27840;


DELETE from creature_ai_scripts WHERE id=2790002;
INSERT into creature_ai_scripts VALUES
(2790002,27900,6,0,100,0,0,0,0,0,15,12470,6,0,0,0,0,0,0,0,0,0,'Infinite Timerender - Quest Credit after death');
