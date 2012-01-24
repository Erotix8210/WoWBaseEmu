UPDATE creature_template SET
AIName='EventAI'
WHERE entry=24514;

DELETE from creature_ai_scripts where creature_id=24514;
INSERT INTO creature_ai_scripts VALUES
(2451401,24514,8,0,100,0,43969,-1,0,0,33,24515,6,0,0,0,0,0,0,0,0,0,'Steefeather - Kill credit after spellhit');
