UPDATE creature_template SET
AIName='EventAI'
WHERE entry=23725;

DELETE from creature_ai_scripts where creature_id=23725;
INSERT INTO creature_ai_scripts VALUES
(2372501,23725,8,0,100,0,49859,-1,0,0,33,24345,6,0,0,0,0,0,0,0,0,0,'Stone Giant - Kill credit after spellhit');
